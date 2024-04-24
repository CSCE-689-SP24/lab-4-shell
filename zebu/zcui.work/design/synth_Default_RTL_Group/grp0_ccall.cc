//  -----------------------------------------------
//
//  Copyright (C) 2015 Synopsys, Inc. All Rights Reserved.
//
//  grp0_ccall.cc
//
//  -----------------------------------------------

// Following needed to suppress b0, b1 defines\n");
#define ZEBU_NDEF_BINARY_VALUE

#include <string.h>
#include "grp0_ccall.h"
#include "libZebuCCall.hh"
using namespace ZEBU;

// Dummy function so that back-end is able to resolve the name
// for system tasks
extern "C" void grp0_dummy_import_for_pli () {};

namespace ZDPI_MOD_grp0_fifo_usage_spy {

} // of namespace ZDPI_MOD_grp0_fifo_usage_spy

void fifo_usage_spy_notify_ZDPI_MOD_grp0_fifo_usage_spy (const unsigned int *din)
{
	svBit _arg_we = 0;
	svBit _arg_re = 0;
	svBit _arg_hff_o = 0;
	svBit _arg_ff_o = 0;
	svBit _arg_ef_o = 0;
	svBitVecVal _arg_datain[SV_PACKED_DATA_NELEMS(8)];
	svBitVecVal _arg_dataout[SV_PACKED_DATA_NELEMS(8)];
	_arg_we = ((din[0] >> 16) & 0x1);
	_arg_re = ((din[0] >> 17) & 0x1);
	_arg_hff_o = ((din[0] >> 18) & 0x1);
	_arg_ff_o = ((din[0] >> 19) & 0x1);
	_arg_ef_o = ((din[0] >> 20) & 0x1);
	*_arg_datain = (din[0] & 0xff);
	*_arg_dataout = ((din[0] >> 8) & 0xff);
	fifo_usage_spy_notify (_arg_we, _arg_re, _arg_hff_o, _arg_ff_o, _arg_ef_o, _arg_datain, _arg_dataout);
}

namespace ZDPI_MOD_grp0_stb {

class CCallSysTFHandler1 : public CCallDisplayHandler {
public:
	CCallSysTFHandler1 () :
		CCallDisplayHandler ("$display", 48)
	{
		this->setArgCount(2);
		this->setLibCellName("stb");
		addStaticArg ("Parity error detected on input at cycle %d of clk0");
		addVarArg (false, 47, 0);
	}
	/*redef*/void formatArgValue (unsigned int pos)
	{
		IoOpHandler *ioop = this;
		switch (pos) {

		case (0):
			reportInvalidDirection (pos, "get");
			break;
		case (1):
			{
				ioop->formatSlice (47, 0, false);
			}
			break;
		default:
			reportInvalidArg (pos);
			break;
		} /* of switch */
	}

};

class CCallSysTFHandler2 : public CCallDisplayHandler {
public:
	CCallSysTFHandler2 () :
		CCallDisplayHandler ("$display", 48)
	{
		this->setArgCount(2);
		this->setLibCellName("stb");
		addStaticArg ("Parity error detected on output at cycle %d of clk1");
		addVarArg (false, 47, 0);
	}
	/*redef*/void formatArgValue (unsigned int pos)
	{
		IoOpHandler *ioop = this;
		switch (pos) {

		case (0):
			reportInvalidDirection (pos, "get");
			break;
		case (1):
			{
				ioop->formatSlice (47, 0, false);
			}
			break;
		default:
			reportInvalidArg (pos);
			break;
		} /* of switch */
	}

};

} // of namespace ZDPI_MOD_grp0_stb

void display1_ZDPI_MOD_grp0_stb (const unsigned int *din)
{
	static ZDPI_MOD_grp0_stb::CCallSysTFHandler1 hdlr;
	hdlr.handleMessage (din);
}

void display2_ZDPI_MOD_grp0_stb (const unsigned int *din)
{
	static ZDPI_MOD_grp0_stb::CCallSysTFHandler2 hdlr;
	hdlr.handleMessage (din);
}

