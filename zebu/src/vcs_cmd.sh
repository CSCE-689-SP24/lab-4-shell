# © 2015-2019 Synopsys, Inc.
# This Synopsys ZeBu Lab source code and all associated documentation are proprietary and
# confidential to Synopsys, Inc. and may only be used pursuant to the terms and conditions
# of a written license agreement with Synopsys, Inc. All other use, reproduction,
# modification, or distribution of the Synopsys ZeBu Lab source code or the associated
# documentation is strictly prohibited.

# Add VCS command line for emulation 


vcs -full64 -sverilog -f ../source/sources.f -top top  -top wave +define+ASSERTIONS +define+ZEBU
