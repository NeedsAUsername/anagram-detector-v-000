class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        words = []
        array.uniq.each do |word|
            if word.split(//).sort == @word.split(//).sort
                words << word
            end
        end
        words
    end
end
