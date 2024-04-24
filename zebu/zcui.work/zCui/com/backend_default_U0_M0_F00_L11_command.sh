# make FX=F00 LABEL=L11 MONITORING=YES BACKENDNAME="/home/faculty/d/davidkebo/davidkebo/csce689/labs/lab-4-shell/zebu/zcui.work/backend_default" PARAMETER_FILE="/opt/coe/synopsys/zebu/Q-2020.03-SP1-4/etc/vivado_v7/fpgaparameterset_v7.xcui" FPGA_LOCAL_DISK_COMP=NO FPGA_LOCAL_DISK_COMP_DIR=""
export VIVADO_DISABLE_ZCAHSRASH_PBLOCK='1'
export ZEBU_PARFF_XCUI_FILE_NAME='fpgaparameterset_v7.xcui'
export ZEBU_PARFF_XCUI_TARGET_NAME='L17_Vivado_remove_pblock'
export VIVADO_ENABLE_SINGLE_MACHINE_MPF='0'
export VIVADO_ENABLE_MULTI_MACHINE_MPF='0'
export ZEBU_SDF_ANALYSIS='1'
export ZCUI_FPGA_DIR='F00.L11'
export ZCUI_ENABLE_MESSAGE_SYSTEM='0'
export ZEBU_COMPILATION_OBJECTIVE=''
export ZCUI_FPGA_FEATURE_TAGS='Vtx7'
zSendMsg -msg "start:${HOSTNAME}"
make FX=F00 LABEL=L11 MONITORING=YES BACKENDNAME="/home/faculty/d/davidkebo/davidkebo/csce689/labs/lab-4-shell/zebu/zcui.work/backend_default" PARAMETER_FILE="/opt/coe/synopsys/zebu/Q-2020.03-SP1-4/etc/vivado_v7/fpgaparameterset_v7.xcui" FPGA_LOCAL_DISK_COMP=NO FPGA_LOCAL_DISK_COMP_DIR=""
exitcode=$?
echo "command exit code is '${exitcode}'"
zSendMsg -msg "end:$exitcode"
exit ${exitcode}
