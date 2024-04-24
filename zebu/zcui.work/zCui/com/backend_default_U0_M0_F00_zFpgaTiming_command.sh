# ${ZEBU_ROOT}/bin/zFpgaTiming ${ZEBU_ROOT}/etc/zfpgatiming/zFpgaTiming.tcl
export SNPS_ZCUI_BACKENDDIR='/home/faculty/d/davidkebo/davidkebo/csce689/labs/lab-4-shell/zebu/zcui.work/backend_default'
zSendMsg -msg "start:${HOSTNAME}"
${ZEBU_ROOT}/bin/zFpgaTiming ${ZEBU_ROOT}/etc/zfpgatiming/zFpgaTiming.tcl
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
