@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xsim majority_of_five_text_fixture_behav -key {Behavioral:sim_1:Functional:majority_of_five_text_fixture} -tclbatch majority_of_five_text_fixture.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
