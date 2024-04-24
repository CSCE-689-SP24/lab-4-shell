// © 2015 Synopsys, Inc.
// This Synopsys ZeBu Lab source code and all associated documentation are proprietary and
// confidential to Synopsys, Inc. and may only be used pursuant to the terms and conditions
// of a written license agreement with Synopsys, Inc. All other use, reproduction,
// modification, or distribution of the Synopsys ZeBu Lab source code or the associated
// documentation is strictly prohibited.

// Standard C libraries
#include <svdpi.h>
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <iomanip>
#include <string>
//#include "Collect.hh"

FILE *fin = fopen("datain.txt", "w");
FILE *fout = fopen("dataout.txt", "w");

extern "C" void fifo_usage_spy_notify(const svBit we, const svBit re, const svBit hff_o, const svBit ff_o, const svBit ef_o, const svBitVecVal *datain, const svBitVecVal *dataout)
{

    svScope scope = svGetScope();
    printf("call form scope = %s: \n", svGetNameFromScope(scope));
    if (we)
        fprintf(fin, "%x\n", *dataout);

    if (re)
        fprintf(fout, "%x\n", *datain);
    if (!(re || we))
    {
        fclose(fin);
        fclose(fout);
    }
}
