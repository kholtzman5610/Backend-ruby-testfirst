#write your code here
def echo (word)
    word
end

def shout (word)
    word.upcase
end

def repeat(string, repeats=2)
    word = string
    rerun = repeats -1
    rerun.times { word += " #{string}" }
    word
end

def start_of_word (word, num)
    word[0..(num-1)]
end

def first_word (sentence)
    sentence.split(" ")[0] 
end

def titleize(string)
    word = string.split(" ")
    word[0].capitalize!
    word[1..-1].each do |e| 
      e.capitalize! unless little_word?(e)
    end
    if word.length > 1
      final_word = word.inject(""){ |line, words| line + " #{words}"}.strip
    else
      string.capitalize
    end
  end
  
  private
  
    def little_word?(string)
        ["and", "or", "of", "in", "a", "the", "over"].include?(string)
    end 