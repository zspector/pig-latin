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
      expect(PigLatin.cut_front("harvey")).to eq("h")
    end
  end

  describe '.capture_back' do
    it "captures everything after the first consonant" do
      expect(PigLatin.capture_back("bad")).to eq("ad")
      expect(PigLatin.capture_back("flow")).to eq("ow")
    end

    it "captures the whole word if it starts with a vowel" do
      expect(PigLatin.capture_back("antelope")).to eq("antelope")
    end

    it "captures the end of the word if it starts with 'y'" do
      expect(PigLatin.capture_back("yellow")).to eq("ellow")
    end

    it "captures end of word containing but not starting with 'y'" do
      expect(PigLatin.capture_back("rhythm")).to eq("ythm")
    end

    it "captures words with two vowels in a row" do
      expect(PigLatin.capture_back("reek")).to eq ("eek")
    end
  end
end
