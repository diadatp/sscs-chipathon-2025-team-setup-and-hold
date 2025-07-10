import pya

from .stdcell import StdCell

class StdCellLib(pya.Library):

    def __init__(self):
        self.description = "Standard Cell Templates"

        # register the PCell declarations
        self.layout().register_pcell("stdcell-template", StdCell())

        # register our library with the name "PCellLib"
        self.register("StdCell")