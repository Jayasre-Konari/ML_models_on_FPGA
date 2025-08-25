# ML_models_on_FPGA
Implementation of Machine Learning models on FPGA for accelerating computation. This repository includes HDL/SystemVerilog designs, testbenches, and integration of ML algorithms with FPGA hardware for efficient inference and performance optimization.
# Linear Regression in SystemVerilog

This project demonstrates a simple **linear regression model** implemented in SystemVerilog.  
It calculates the best-fit line (`y = b1*x + b0`) for a given dataset using the **least squares method**.

## Features
- Array handling in SystemVerilog
- Mean, variance, and covariance calculation
- Computation of slope (`b1`) and intercept (`b0`)
- Prediction of `y` values based on input `x`

## Example Dataset
```text
X = {95, 85, 80, 70, 60}
Y = {85, 95, 70, 65, 70}
