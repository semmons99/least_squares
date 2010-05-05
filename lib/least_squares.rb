module Math
  ##
  # Takes an array of numbers and returns the Mean.
  #
  # @param [Array<Numeric>] xs Array of numbers
  # @return [Float] Mean
  #
  # @example
  #   xs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  #   Math.mean(xs) #=> 5.5
  def Math.mean(xs)
    xs.inject{|s,n| s+n} / xs.size.to_f
  end

  ##
  # Takes an array of numbers and returns the Standard Deviation.
  #
  # @param [Array<Numeric>] xs Array of numbers
  # @return [Float] Standard Deviation
  #
  # @example
  #   xs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  #   Math.stdev(xs) #=> 3.02765035409749
  def Math.stdev(xs)
    mean = Math.mean(xs)
    Math.sqrt((1/(xs.size.to_f - 1)) * xs.inject(0){|s,n| s + (n - mean)**2})
  end

  ##
  # Takes two arrays of numbers and returns the Pearson's Correlation
  # Coefficient.
  #
  # @param [Array<Numeric>] xs Array of numbers
  # @param [Array<numeric>] ys Array of numbers
  # @return [Float] Pearson's Correlation Coefficient
  #
  # @example
  #   xs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  #   ys = [9, 1, 0, 5, 4, 7, 7, 0, 9, 3]
  #   Math.pearson(xs,ys) #=> 0.0581327470763432
  def Math.pearson(xs, ys)
    numerator = 0
    xs_mean = Math.mean(xs)
    ys_mean = Math.mean(ys)
    (0...xs.size).each do |i|
      numerator += (xs[i] - xs_mean) * (ys[i] - ys_mean)
    end
    numerator / (Math.sqrt(xs.inject(0){|s,x| s + (x - xs_mean) ** 2}) * Math.sqrt(ys.inject(0){|s,y| s + (y - ys_mean) ** 2}))
  end

  ##
  # Takes two arrays of numbers and returns the Least Squares Regression Line
  # as a Proc.
  #
  # @param [Array<Numeric>] xs Array of numbers
  # @param [Array<Numeric>] ys Array of numbers
  # @return [Proc] Least Squares Regression Line
  #
  # @example
  #   xs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  #   ys = [9, 1, 0, 5, 4, 7, 7, 0, 9, 3]
  #   ls = Math.least_squares(xs,ys)
  #   (1..10).map{|i| ls.call(i)} #=> [4.2, 4.2667, 4.333, 4.4, 4.4667, 4.5333, 4.6, 4.667, 4.7333, 4.8]
  def Math.least_squares(xs, ys)
    b = Math.pearson(xs,ys) * (Math.stdev(ys) / Math.stdev(xs))
    a = Math.mean(ys) - (b * Math.mean(xs))
    lambda{|x| a + (b * x)}
  end
end
