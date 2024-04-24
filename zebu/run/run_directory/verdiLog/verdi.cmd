icsaSetZebuWork \
           /home/faculty/d/davidkebo/davidkebo/csce689/labs/zebu_basic_lab_completed/zebu/zcui.work/backend_default
simSetSimulator "-vcssv" -exec \
           "/home/faculty/d/davidkebo/davidkebo/csce689/labs/zebu_basic_lab_completed/zebu/zcui.work/backend_default/../vcs_splitter//simv" \
           -args
debImport "-dbdir" \
          "/home/faculty/d/davidkebo/davidkebo/csce689/labs/zebu_basic_lab_completed/zebu/zcui.work/backend_default/../vcs_splitter//simv.daidir" \
          "-dbdir" \
          "/home/faculty/d/davidkebo/davidkebo/csce689/labs/zebu_basic_lab_completed/zebu/zcui.work/backend_default/../vcs_splitter//simv.daidir"
debLoadSimResult \
           /home/faculty/d/davidkebo/davidkebo/csce689/labs/zebu_basic_lab_completed/zebu/run/run_directory/fwc_dump.vf
wvCreateWindow
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/top"
wvGetSignalSetScope -win $_nWave2 "/top/u_dut/u_fifo"
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top/u_dut/u_fifo/d_i\[7:0\]} \
{/top/u_dut/u_fifo/q_o\[7:0\]} \
{/top/u_dut/u_fifo/re_i} \
{/top/u_dut/u_fifo/we_i} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 )} 
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top/u_dut/u_fifo/d_i\[7:0\]} \
{/top/u_dut/u_fifo/q_o\[7:0\]} \
{/top/u_dut/u_fifo/re_i} \
{/top/u_dut/u_fifo/we_i} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 )} 
wvSetPosition -win $_nWave2 {("G1" 4)}
wvGetSignalClose -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
debExit
