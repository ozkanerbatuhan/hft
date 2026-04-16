import os

in_path = r"d:\vivado projects\hft\hft.srcs\sources_1\new\weight_rom.vhd"
out_path = r"d:\vivado projects\hft\hft.srcs\sources_1\new\weights_pkg.vhd"

with open(in_path, "r") as f:
    lines = f.readlines()

out_lines = []
out_lines.append("--------------------------------------------------------------------------------\n")
out_lines.append("-- weights_pkg.vhd\n")
out_lines.append("-- Auto-generated from weight_rom.vhd for fully parallel MAC array\n")
out_lines.append("--------------------------------------------------------------------------------\n")
out_lines.append("library ieee;\n")
out_lines.append("use ieee.std_logic_1164.all;\n")
out_lines.append("use ieee.numeric_std.all;\n\n")
out_lines.append("package weights_pkg is\n\n")
out_lines.append("    constant DATA_WIDTH : integer := 16;\n")
out_lines.append("    subtype data_t is signed(DATA_WIDTH-1 downto 0);\n\n")

out_lines.append("    type w1_array is array(0 to 63, 0 to 39) of data_t;\n")
out_lines.append("    type b1_array is array(0 to 63) of data_t;\n")
out_lines.append("    type w2_array is array(0 to 31, 0 to 63) of data_t;\n")
out_lines.append("    type b2_array is array(0 to 31) of data_t;\n")
out_lines.append("    type w3_array is array(0 to 15, 0 to 31) of data_t;\n")
out_lines.append("    type b3_array is array(0 to 15) of data_t;\n")
out_lines.append("    type w4_array is array(0 to 2, 0 to 15) of data_t;\n")
out_lines.append("    type b4_array is array(0 to 2) of data_t;\n\n")

capture = False
for line in lines:
    if line.startswith("signal weights_l1"):
        capture = True
    if line.startswith("begin"):
        capture = False
    
    if capture:
        if line.startswith("signal "):
            line = line.replace("signal ", "constant ")
        out_lines.append(line)

out_lines.append("end package weights_pkg;\n")

with open(out_path, "w") as f:
    f.writelines(out_lines)

print("success")
