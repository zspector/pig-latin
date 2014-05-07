require "pig_latin/version"

module PigLatin
  # Your code goes here...
  def self.cut_front(word)
    if /\Ay/.match(word).to_s == "y" || /y/.match(word) == nil
      /[^aeiou]+/.match(word).to_s
    else
      /[^aeiouy]+/.match(word).to_s
    end
  end

  def self.capture_back(word)
    if /\Ay/.match(word).to_s == "y" || /y/.match(word) == nil
      /[aeiou](.*)/.match(word).to_s
    else
      /[aeiouy](.*)/.match(word).to_s
    end
  end
end
