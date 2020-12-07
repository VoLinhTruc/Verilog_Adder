project compileall
vsim -voptargs=+acc work.TestBench
add wave -position end  sim:/TestBench/a
add wave -position end  sim:/TestBench/b
add wave -position end  sim:/TestBench/sum
run -all

