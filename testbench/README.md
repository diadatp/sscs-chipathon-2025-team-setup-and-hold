# Functional Verification
This testbench tests whether the schematic actually behaves like an AOI222 cell should. This testbench is not 
interested in timing information, just whether given some input signals, we get the correct output.

The [func_tb.sch](func_tb.sch) contains the testbench instantiating our cell and the spice logic to run the 
simulation. Results are written to the [aoi222_results.txt](aoi222_results.txt) files. We haven't figured out a way 
to reference symbols using a relative path, so you might have to fix symbol paths when opening the file.

Since an AOI222 cell has 6 inputs, we have `2^6 = 64` states, enough to make manual verification unfeasible. For 
this reason, we have a [verify_aoi222.py](verify_aoi222.py) script that verifies the results from [aoi222_results.
txt](aoi222_results.txt). 

As it stands, our schematic works correctly.