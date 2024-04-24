# zNetgen ${ZEBU_ROOT}/etc/znetgen/zNetgen_post_proc_fpga.tcl -log U0_M0_F00_FpgaPostProc.log
zSendMsg -msg "start:${HOSTNAME}"
zNetgen ${ZEBU_ROOT}/etc/znetgen/zNetgen_post_proc_fpga.tcl -log U0_M0_F00_FpgaPostProc.log
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
