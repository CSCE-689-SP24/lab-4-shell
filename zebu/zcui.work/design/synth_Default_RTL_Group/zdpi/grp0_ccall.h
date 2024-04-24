#ifdef __cplusplus
extern "C" {
#endif

extern void fifo_usage_spy_notify (svBit _arg_we, svBit _arg_re, svBit _arg_hff_o, svBit _arg_ff_o, svBit _arg_ef_o, const svBitVecVal* _arg_datain, const svBitVecVal* _arg_dataout);

void fifo_usage_spy_notify_ZDPI_MOD_grp0_fifo_usage_spy (const unsigned int *din);


void display1_ZDPI_MOD_grp0_stb (const unsigned int *din);
void display2_ZDPI_MOD_grp0_stb (const unsigned int *din);

#ifdef __cplusplus
} /* of extern-C */
#endif

