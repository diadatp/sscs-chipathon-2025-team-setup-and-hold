import os
import os.path

LIB_A_DIR = "../../globalfoundries-pdk-libs-gf180mcu_osu_sc/gf180mcu_osu_sc_gp12t3v3"
LIB_B_DIR = "../../globalfoundries-pdk-libs-gf180mcu_fd_sc_mcu7t5v0"

def get_cells(lib_path):
    lib_cells = set()
    for cell in os.listdir(os.path.join(lib_path,"cells")):
        lib_cells.add(cell)
    return lib_cells

lib_a_cells = get_cells(LIB_A_DIR)
lib_b_cells = get_cells(LIB_B_DIR)

lib_a_name = LIB_A_DIR.split("/")[-1]
lib_b_name = LIB_B_DIR.split("/")[-1]

print(f"common cells")
for cell in lib_b_cells.intersection(lib_a_cells):
    print(cell)

print()

print(f"cells unique in {lib_a_name}")
for cell in lib_a_cells.difference(lib_b_cells):
    print(cell)

print()

print(f"cells unique in {lib_b_name}")
for cell in lib_b_cells.difference(lib_a_cells):
    print(cell)


