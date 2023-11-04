#!/bin/bash

echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=sky130A} > /dev/null

netgen -batch lvs "../netlist/lvs/sky130_ef_ip__rc_osc_500k.spice sky130_ef_ip__rc_osc_500k" "../netlist/schem/sky130_ef_ip__rc_osc_500k.spice sky130_ef_ip__rc_osc_500k" ${PDK_ROOT}/${PDK}/libs.tech/netgen/${PDK}_setup.tcl rc_osc_500k_comp.out | tee netgen.log
