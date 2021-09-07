class Anagram
attr_reader :word

    def initialize(word)
        @word = word
    end

    def match(possible_anagrams_arr)
        possible_anagrams_arr.select do |possible_anagram|  # select words from array of possible anagrams where following condition is true
            possible_anagram.split("").sort == @word.split("").sort     # condition for .select is when the possible_anagram and the word from the 
                                                                        # initialization have the same letters. Use split to get chars and then sort  
                                                                        # to see if they are the same group of letters
        end
    end
end
