class PigLatinizer

   

    def piglatinize(words)
        words_arr = words.split(" ")

        latin_text = words_arr.map do |word|
            latinize_word(word)
        end
        latin_text.join(" ")
    end

    def latinize_word(word)
        if !word[0].downcase.scan(/[aeoui]/).empty?
            return word + 'way'
        else
            word_arr = word.split("")
            removed_letters = []
            count = word.length
            count.times do |i|
                if word[i].downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).empty?
                    break
                else
                    removed_letters << word_arr.shift 
                end
            end
            if removed_letters.empty?
                return word + "ay"
            else
                return (word_arr + removed_letters).join("") + "ay"
            end
        end
    end

end
