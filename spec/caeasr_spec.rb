require "./lib/caesar.rb"

describe "#caesar_cipher" do 
  it "works with single words" do
    expect(caesar_cipher("Hello", 4)).to eq("Lipps")
  end

  it "works with multiple words" do
    expect(caesar_cipher("What a string", 5)).to eq("Bmfy f xywnsl")
  end

  it "skips not alphabet characers" do
    expect(caesar_cipher("Hello !?!=", 5)).to eq("Mjqqt !?!=")
  end

  it "wraps around at end of alphabet" do
    expect(caesar_cipher("ABCabc", 27)).to eq("BCDbcd")
  end
end