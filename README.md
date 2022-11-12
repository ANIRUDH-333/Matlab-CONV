# Matlab-CONV
This is a function which works faster than the original matlab command "conv". 

### Logic
We need to loop up things in the time domain to convolve 2 1 dimensional signals. Which requires significant amount of time for considerably larger signals. This convolution can also be achieved converting the signal top frequency domain and multiplying it, which requires almost no time to complete.

Convolution in time domain = Multiplication in frequency domain

### Proof
There are some images which prove that this way of doing convolution is much faster than conventional way of doing it in time domain.
For a signal size of 1000000 samples, this code is 350+ times faster than the original/built-in code of matlab.

