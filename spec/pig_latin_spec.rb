require 'spec_helper.rb'
require 'pry-debugger'

describe 'PigLatin' do
  describe '.cut_front' do
    it "cuts off the first consonant of a word and returns the consonant" do
      expect(PigLatin.cut_front("bad")).to eq("b")
    end

    it "cuts off all consonants up to the first vowel and returns the consonants" do
      expect(PigLatin.cut_front("flow")).to eq("fl")
    end

    it "cuts off all consonants including 'y', if 'y' is the first letter" do
      expect(PigLatin.cut_front("yellow")).to eq("y")
    end

    it "cuts of all consonants up to 'y' or vowel if y is not the first letter" do
      expect(PigLatin.cut_front("rhythm")).to eq("rh")
    end
  end
end
