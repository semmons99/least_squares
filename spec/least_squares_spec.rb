require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "LeastSquares" do
  before(:each) do
    @xs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    @ys = [9, 1, 0, 5, 4, 7, 7, 0, 9, 3]
  end

  describe '#mean' do
    specify 'returns the mean (average) of an array of numbers' do
      Math.mean(@xs).should == 5.5
      Math.mean(@ys).should == 4.5
    end
  end

  describe '#stdev' do
    specify 'returns the standard deviation of an array of numbers' do
      Math.stdev(@xs).round(4).should == 3.0277
      Math.stdev(@ys).round(4).should == 3.4721
    end
  end

  describe '#pearson' do
    specify 'returns the Pearson Correlation Coefficient of two arrays of numbers' do
      Math.pearson(@xs,@ys).round(4).should == 0.0581
    end
  end

  describe '#least_squares' do
    specify 'returns the Least Squares Regression Line of two arrays of numbers as a Proc' do
      Math.least_squares(@xs,@ys).should be_a Proc
    end

    specify 'return the Least Squares Regression Line of two arrays of numbers' do
      ls = Math.least_squares(@xs,@ys)
      (1..10).map{|i| ls.call(i).round(4)}.should == [4.2, 4.2667, 4.3333, 4.4, 4.4667, 4.5333, 4.6, 4.6667, 4.7333, 4.8]
    end
  end
end
