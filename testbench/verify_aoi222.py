import numpy as np

# Load SPICE data with no header
data = np.loadtxt("aoi222_results.txt")

# Assign columns
time = data[:, 0]
v_a1 = data[:, 1]
v_a2 = data[:, 3]
v_b1 = data[:, 5]
v_b2 = data[:, 7]
v_c1 = data[:, 9]
v_c2 = data[:, 11]
v_y  = data[:, 13]

# Define constants
vdd = 3.3
threshold = vdd / 2

# Define sampling points: 0.75us, 1.25us, ..., 63.75us
sample_times = np.arange(0.75e-6, 32e-6, 0.5e-6)

# Interpolate voltages at those times
va1 = np.interp(sample_times, time, v_a1)
va2 = np.interp(sample_times, time, v_a2)
vb1 = np.interp(sample_times, time, v_b1)
vb2 = np.interp(sample_times, time, v_b2)
vc1 = np.interp(sample_times, time, v_c1)
vc2 = np.interp(sample_times, time, v_c2)
vy  = np.interp(sample_times, time, v_y)

# Convert to logic levels
a1_logic = va1 > threshold
a2_logic = va2 > threshold
b1_logic = vb1 > threshold
b2_logic = vb2 > threshold
c1_logic = vc1 > threshold
c2_logic = vc2 > threshold
y_logic  = vy  > threshold

# Expected AOI222 logic: NOT((A1 & A2) | (B1 & B2) | (C1 & C2))
term1 = a1_logic & a2_logic
term2 = b1_logic & b2_logic
term3 = c1_logic & c2_logic
expected = ~(term1 | term2 | term3)

# Check for mismatches
errors = np.where(expected != y_logic)[0]

# Output results
if len(errors) == 0:
    print("SUCCESS: All 64 midpoint combinations verified correctly!")
else:
    print(f"FAILED: {len(errors)} mismatches found.\n")
    for i in errors:
        print(f"Time {sample_times[i]*1e6:.2f} µs: Expected {int(expected[i])}, Got {int(y_logic[i])}")
