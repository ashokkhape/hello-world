#!/bin/sh
PROJECT=filtref
TOP_LEVEL_FILE=filtref.bdf
FAMILY="Cyclone V"
PART=EP3C10F256C8
PACKING_OPTION=minimize_area
quartus_map Hello --source=Hello.bdf --family="Cyclone V"
quartus_fit Hello --part=5CSEBA6U23I7 --pack_register=minimize_area
quartus_asm Hello
quartus_sta Hello