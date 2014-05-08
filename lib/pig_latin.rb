require "pig_latin/version"

module PigLatin
  # Your code goes here...
  def self.cut_front(word)
    if /\A[aeiou]/i.match(word) != nil
      return "w"
    elsif /\Ay/i.match(word).to_s == "y" || /y/i.match(word) == nil
      /[^aeiou]+/i.match(word).to_s
    else
      /[^aeiouy]+/i.match(word).to_s
    end
  end

  def self.capture_back(word)
    /\Ay/i.match(word).to_s == "y" || /y/i.match(word) == nil ? /[aeiou](.*)/.match(word).to_s : /[aeiouy](.*)/.match(word).to_s
  end

  def self.translate(word)
    "#{capture_back(word)}-#{cut_front(word)}ay"
  end
end
