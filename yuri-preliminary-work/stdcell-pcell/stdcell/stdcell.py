from email.policy import default

import pya

TYPE_CONTACT = 0
TYPE_GATE = 1

P_WIDTH = 1700
P_CONTACTS = 3
P_CONTACT_SIZE = 220

N_WIDTH = 850
N_CONTACTS = 1
N_CONTACT_SIZE = 220

POWER_STRIP_HEIGHT = 700
SD_METAL_WIDTH = 250  # source/drain metal width
START_TO_SD_METAL = 600
PPLUS_PERIMETER_X = 160
PPLUS_PERIMETER_Y = 160
POWER_TO_PPLUS_PERIMETER = 190
BORDER_TO_PPLUS = 290
PPLUS_EXTRA_HEIGHT = 70
PPLUS_EXTRA_INSET = 430
CONTACT_TO_CONTACT_SPACING = 500
GATE_POLY_TO_SD_METAL_SPACING = 150
GATE_POLY_TO_GATE_POLY_SPACING = 240
GATE_POLY_LENGTH = 300

POWER_TO_NPLUS_PERIMETER = 120
NPLUS_PERIMETER_Y = 230
NPLUS_PERIMETER_X = 160
BORDER_TO_NPLUS = BORDER_TO_PPLUS

BORDER_TO_TAP_X = 280
BORDER_TO_TAP_Y = 230
TAP_TO_TAP = 400
TAP_DIFFUSION_X = 790
TAP_DIFFUSION_Y = 490
TAP_DIFFUSION_TO_COMP = 20
TAP_CONTACT_SIZE_XY = 220


def round_to_grid(number):
    roundto = 5
    return round(number / roundto) * roundto


def parse_fet_configuration(config: str):
    options = []
    for char in config:
        if char == "c":
            options.append(TYPE_CONTACT)
        if char == "g":
            options.append(TYPE_GATE)
    return options


class StdCell(pya.PCellDeclarationHelper):

    def __init__(self):
        # Important: initialize the super class
        super(StdCell, self).__init__()

        # declare the parameters
        self.param("p_row", self.TypeString, "P-FET configuration (c: contact, g:gate)", default="cgc cggc")
        self.param("n_row", self.TypeString, "N-FET configuration (c: contact, g:gate)", default="cgc cggc")

        self.Type_handle = self.param(
            "tracks", self.TypeList, "Tracks", default="9t-osu"
        )
        self.Type_handle.add_choice("9t-osu", "9t-osu")
        self.Type_handle.add_choice("12t-osu", "12t-osu")

    def display_text_impl(self):
        # Provide a descriptive text for the cell
        return f"stdcell-template-{self.tracks}t-{self.p_row}p-{self.n_row}n"

    def coerce_parameters_impl(self):
        pass

    def produce_impl(self):
        METAL1 = self.layout.layer(34, 0)
        METAL1_LABEL = self.layout.layer(34, 10)
        NWELL = self.layout.layer(21, 0)
        CONTACT = self.layout.layer(33, 0)
        PPLUS = self.layout.layer(31, 0)
        NPLUS = self.layout.layer(32, 0)
        COMP = self.layout.layer(22, 0)
        POLY2 = self.layout.layer(30, 0)

        cell_height = 0
        if self.tracks == "9t-osu":
            cell_height = 6350
        elif self.tracks == "12t-osu":
            cell_height = 8300

        PFET_REGION_TOP_Y = cell_height - POWER_STRIP_HEIGHT - POWER_TO_PPLUS_PERIMETER - PPLUS_PERIMETER_Y
        NFET_REGION_BOT_Y = POWER_STRIP_HEIGHT + POWER_TO_NPLUS_PERIMETER + NPLUS_PERIMETER_Y
        P_CONTACT_SPACING = round_to_grid((P_WIDTH - P_CONTACTS * P_CONTACT_SIZE) / (P_CONTACTS + 1))
        N_CONTACT_SPACING = round_to_grid((N_WIDTH - N_CONTACTS * N_CONTACT_SIZE) / (N_CONTACTS + 1))

        # ----------- P_FET -----------
        p_row_length = 0
        last_is_row_start = True
        last_is_contact = False
        last_is_gate = False
        for feature in parse_fet_configuration(self.p_row):
            if feature == TYPE_CONTACT:
                if last_is_row_start:
                    p_row_length += START_TO_SD_METAL
                if last_is_contact:
                    p_row_length += CONTACT_TO_CONTACT_SPACING
                if last_is_gate:
                    p_row_length += GATE_POLY_TO_SD_METAL_SPACING

                # M1 strip for source/drain
                self.cell.shapes(METAL1).insert(pya.Box(PFET_REGION_TOP_Y,
                                                        p_row_length,
                                                        PFET_REGION_TOP_Y - P_WIDTH,
                                                        p_row_length + SD_METAL_WIDTH))
                # contacts
                for i in range(P_CONTACTS):
                    height = PFET_REGION_TOP_Y - ((i + 1) * P_CONTACT_SPACING + i * P_CONTACT_SIZE)
                    self.cell.shapes(CONTACT).insert(pya.Box(height,
                                                             p_row_length + (SD_METAL_WIDTH - P_CONTACT_SIZE) / 2,
                                                             height - P_CONTACT_SIZE,
                                                             p_row_length + (SD_METAL_WIDTH - P_CONTACT_SIZE) / 2 + P_CONTACT_SIZE))

                p_row_length += SD_METAL_WIDTH
                last_is_gate = False
                last_is_contact = True
            else:
                # this is a gate
                if last_is_row_start:
                    p_row_length += START_TO_SD_METAL  # this case shouldn't matter, but this should be okayish
                if last_is_contact:
                    p_row_length += GATE_POLY_TO_SD_METAL_SPACING
                if last_is_gate:
                    p_row_length += GATE_POLY_TO_GATE_POLY_SPACING

                # draw poly
                poly_top = PFET_REGION_TOP_Y + PPLUS_PERIMETER_Y + PPLUS_EXTRA_HEIGHT
                poly_bot = PFET_REGION_TOP_Y - P_WIDTH - PPLUS_PERIMETER_Y - PPLUS_EXTRA_HEIGHT
                self.cell.shapes(POLY2).insert(pya.Box(poly_top,
                                                       p_row_length,
                                                       poly_bot,
                                                       p_row_length + GATE_POLY_LENGTH))
                p_row_length += GATE_POLY_LENGTH
                last_is_gate = True
                last_is_contact = False

            last_is_row_start = False
        p_row_length += START_TO_SD_METAL

        # ----------- N_FET -----------
        n_row_length = 0
        last_is_row_start = True
        last_is_contact = False
        last_is_gate = False
        for feature in parse_fet_configuration(self.n_row):
            if feature == TYPE_CONTACT:
                if last_is_row_start:
                    n_row_length += START_TO_SD_METAL
                if last_is_contact:
                    n_row_length += CONTACT_TO_CONTACT_SPACING
                if last_is_gate:
                    n_row_length += GATE_POLY_TO_SD_METAL_SPACING

                # M1 strip for source/drain
                self.cell.shapes(METAL1).insert(pya.Box(NFET_REGION_BOT_Y,
                                                        n_row_length,
                                                        NFET_REGION_BOT_Y + N_WIDTH,
                                                        n_row_length + SD_METAL_WIDTH))
                # contacts
                for i in range(N_CONTACTS):
                    height = NFET_REGION_BOT_Y + ((i + 1) * N_CONTACT_SPACING + i * N_CONTACT_SIZE)
                    print(height, N_CONTACT_SPACING, NFET_REGION_BOT_Y, N_CONTACT_SIZE)
                    self.cell.shapes(CONTACT).insert(pya.Box(height,
                                                             n_row_length + (SD_METAL_WIDTH - N_CONTACT_SIZE) / 2,
                                                             height + N_CONTACT_SIZE,
                                                             n_row_length + (SD_METAL_WIDTH - N_CONTACT_SIZE) / 2 + N_CONTACT_SIZE))

                n_row_length += SD_METAL_WIDTH
                last_is_gate = False
                last_is_contact = True
            else:
                # this is a gate
                if last_is_row_start:
                    n_row_length += START_TO_SD_METAL  # this case shouldn't matter, but this should be okayish
                if last_is_contact:
                    n_row_length += GATE_POLY_TO_SD_METAL_SPACING
                if last_is_gate:
                    n_row_length += GATE_POLY_TO_GATE_POLY_SPACING

                # draw poly
                poly_top = NFET_REGION_BOT_Y - NPLUS_PERIMETER_Y
                poly_bot = NFET_REGION_BOT_Y + N_WIDTH + NPLUS_PERIMETER_Y
                self.cell.shapes(POLY2).insert(pya.Box(poly_top,
                                                       n_row_length,
                                                       poly_bot,
                                                       n_row_length + GATE_POLY_LENGTH))
                n_row_length += GATE_POLY_LENGTH
                last_is_gate = True
                last_is_contact = False

            last_is_row_start = False
        n_row_length += START_TO_SD_METAL

        length = max(p_row_length, n_row_length)

        # NWELL
        self.cell.shapes(NWELL).insert(pya.Box(
            cell_height,
            length,
            PFET_REGION_TOP_Y - P_WIDTH - PPLUS_PERIMETER_Y - BORDER_TO_PPLUS,
            0))
        # PPLUS
        pplus_height = cell_height - POWER_STRIP_HEIGHT - POWER_TO_PPLUS_PERIMETER
        self.cell.shapes(PPLUS).insert(pya.Box(
            pplus_height,
            length - BORDER_TO_PPLUS,
            pplus_height - 2 * PPLUS_PERIMETER_Y - P_WIDTH,
            BORDER_TO_PPLUS
        ))
        self.cell.shapes(PPLUS).insert(pya.Box(
            pplus_height + PPLUS_EXTRA_HEIGHT,
            length - BORDER_TO_PPLUS - PPLUS_EXTRA_INSET,
            pplus_height,
            BORDER_TO_PPLUS + PPLUS_EXTRA_INSET
        ))
        self.cell.shapes(PPLUS).insert(pya.Box(
            pplus_height - 2 * PPLUS_PERIMETER_Y - P_WIDTH,
            length - BORDER_TO_PPLUS - PPLUS_EXTRA_INSET,
            pplus_height - 2 * PPLUS_PERIMETER_Y - P_WIDTH - PPLUS_EXTRA_HEIGHT,
            BORDER_TO_PPLUS + PPLUS_EXTRA_INSET
        ))
        # NPLUS
        self.cell.shapes(NPLUS).insert(pya.Box(
            NFET_REGION_BOT_Y - NPLUS_PERIMETER_Y,
            length - BORDER_TO_NPLUS,
            NFET_REGION_BOT_Y + N_WIDTH + NPLUS_PERIMETER_Y,
            BORDER_TO_NPLUS
        ))
        # COMP - P-FET
        self.cell.shapes(COMP).insert(pya.Box(
            PFET_REGION_TOP_Y,
            length - BORDER_TO_PPLUS - PPLUS_PERIMETER_X,
            PFET_REGION_TOP_Y - P_WIDTH,
            BORDER_TO_PPLUS + PPLUS_PERIMETER_X
        ))
        # COMP - N-FET
        self.cell.shapes(COMP).insert(pya.Box(
            NFET_REGION_BOT_Y,
            length - BORDER_TO_NPLUS - NPLUS_PERIMETER_X,
            NFET_REGION_BOT_Y + N_WIDTH,
            BORDER_TO_NPLUS + NPLUS_PERIMETER_X
        ))
        # power strips
        self.cell.shapes(METAL1).insert(pya.Box(POWER_STRIP_HEIGHT, length, 0, 0))
        self.cell.shapes(METAL1).insert(pya.Box(cell_height, length, cell_height - POWER_STRIP_HEIGHT, 0))
        # net labels for power strips
        self.cell.shapes(METAL1_LABEL).insert(pya.Text("vss", POWER_STRIP_HEIGHT / 2, length / 2))
        self.cell.shapes(METAL1_LABEL).insert(pya.Text("vdd", cell_height - POWER_STRIP_HEIGHT / 2, length / 2))

        # substrate taps
        last_tap_x = length - (TAP_DIFFUSION_X + BORDER_TO_TAP_X)
        tap_x = BORDER_TO_TAP_X
        while tap_x < last_tap_x:
            # draw tap
            vdd_tap_y = cell_height - BORDER_TO_TAP_Y
            vss_tap_y = BORDER_TO_TAP_Y + TAP_DIFFUSION_Y

            tap_contact_y_offset = round_to_grid((TAP_DIFFUSION_Y - TAP_CONTACT_SIZE_XY) / 2)
            tap_contact_x_offset = round_to_grid((TAP_DIFFUSION_X - TAP_CONTACT_SIZE_XY) / 2)

            # doped regions
            self.cell.shapes(NPLUS).insert(pya.Box(vdd_tap_y, tap_x, vdd_tap_y - TAP_DIFFUSION_Y, tap_x + TAP_DIFFUSION_X))
            self.cell.shapes(PPLUS).insert(pya.Box(vss_tap_y, tap_x, vss_tap_y - TAP_DIFFUSION_Y, tap_x + TAP_DIFFUSION_X))

            # comp layer
            self.cell.shapes(COMP).insert(pya.Box(vdd_tap_y - TAP_DIFFUSION_TO_COMP,
                                                  tap_x + TAP_DIFFUSION_TO_COMP,
                                                  vdd_tap_y - TAP_DIFFUSION_Y + TAP_DIFFUSION_TO_COMP,
                                                  tap_x + TAP_DIFFUSION_X - TAP_DIFFUSION_TO_COMP))
            self.cell.shapes(COMP).insert(pya.Box(vss_tap_y - TAP_DIFFUSION_TO_COMP,
                                                  tap_x + TAP_DIFFUSION_TO_COMP,
                                                  vss_tap_y - TAP_DIFFUSION_Y + TAP_DIFFUSION_TO_COMP,
                                                  tap_x + TAP_DIFFUSION_X - TAP_DIFFUSION_TO_COMP))

            # contacts
            self.cell.shapes(CONTACT).insert(pya.Box(vdd_tap_y - tap_contact_y_offset,
                                                     tap_x + tap_contact_x_offset,
                                                     vdd_tap_y - tap_contact_y_offset - TAP_CONTACT_SIZE_XY,
                                                     tap_x + tap_contact_x_offset + TAP_CONTACT_SIZE_XY))
            self.cell.shapes(CONTACT).insert(pya.Box(vss_tap_y - tap_contact_y_offset,
                                                     tap_x + tap_contact_x_offset,
                                                     vss_tap_y - tap_contact_y_offset - TAP_CONTACT_SIZE_XY,
                                                     tap_x + tap_contact_x_offset + TAP_CONTACT_SIZE_XY))

            tap_x += TAP_DIFFUSION_X + TAP_TO_TAP

    def transformation_from_shape_impl(self):
        # center on cursor
        return pya.Trans(self.shape.bbox().center())
