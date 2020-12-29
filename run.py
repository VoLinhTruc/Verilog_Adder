project compileall
vsim -voptargs=+acc work.TestBench
add wave -position end  sim:/TestBench/a
add wave -position end  sim:/TestBench/b
add wave -position end  sim:/TestBench/c_in
add wave -position end  sim:/TestBench/sum
add wave -position end  sim:/TestBench/c_out
run -all

