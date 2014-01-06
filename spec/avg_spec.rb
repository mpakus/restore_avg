require 'spec_helper'

describe Array do

  it "calculate decimal average right" do
    [2, 4, 6, 4].average.should eq(4)
  end

  it "calculate float average right" do
    [1.66, 1.42, 1.46, 1.51, 1.44, 1.38, 1.4, 1.45, 1.37, 1.41].average.should eq(1.45)
  end

  it "restore returns right number of elements" do
    Array.restore_avg(5.78, 19).count.should eq(19)
  end

  it "restore decimal average right" do
    Array.restore_avg(5, 11).average.round(0).should eq(5)
  end

  it "restore float average right" do
    Array.restore_avg(1.48, 20).average.round(2).should eq(1.48)
  end

end
