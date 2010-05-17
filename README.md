Least Squares
=============

This gem adds methods to the Math module to aid in calculating the Least
Squares Regression Line given two arrays.

Example Usage:
    xs = [9300, 10565, 15000, 15000, 17764, 57000, 65940, 73676, 77006, 93739, 146088, 153260,]
    ys = [7100, 15500, 4400, 4400, 5900, 4600, 8800, 2000, 2750, 2550, 960, 1025,]
    
    lsqr = Math.least_squares(xs,ys)
    puts (10_000..150_000).step(10_000).map{|n| lsqr.call(n)}

Results:
    7623.45990767669
    7110.76951749864
    6598.07912732059
    6085.38873714254
    5572.69834696449
    5060.00795678644
    4547.31756660839
    4034.62717643034
    3521.93678625229
    3009.24639607424
    2496.55600589619
    1983.86561571814
    1471.17522554009
    958.484835362034
    445.794445183983

Included methods are `#mean`, `#stdev`, `#pearson` and `#least_squares`.

CHANGELOG
---------

- **May.05.17**: 0.1.1 release
    - See {file:CHANGELOG} for changes

- **May.05.10**: 0.1.0 release
    - See {file:CHANGELOG} for changes

Copyright
---------

Copyright (c) 2010 Shane Emmons. See {file:LICENSE} for details.
