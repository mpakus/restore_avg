require 'spec_helper'

describe Array do

  it "calculate decimal average right" do
    expect([2, 4, 6, 4].average).to eq(4)
  end

  it "calculate float average right" do
    expect([1.66, 1.42, 1.46, 1.51, 1.44, 1.38, 1.4, 1.45, 1.37, 1.41].average).to eq(1.45)
  end

  it "restore returns right number of elements" do
    expect(Array.restore_avg(5.78, 19).count).to eq(19)
  end

  it "restore decimal average right" do
    expect(Array.restore_avg(5, 11).average.round(0)).to eq(5)
  end

  it "restore float average right" do
    expect(Array.restore_avg(1.48, 20).average.round(2)).to eq(1.48)
  end

end
