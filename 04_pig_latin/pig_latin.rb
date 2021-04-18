#write your code here

Vowels = ["a", "e", "i", "o", "u"]
Consonant_Filter = /(\A[^aeio]{1,3})(\w*)/ 


def translate(word) 
  words = word.split(" ")
  translated_words = apply_translations(words)
  restring(translated_words)
end

def apply_translations(array)
  translated_words = array.map do |word|
    start_with_vowel?(word) ? vowel_translate(word) : consonant_translate(word)
  end
end

def restring(array)
  output = array.inject(""){ |result, item| result << item + " "}.strip
end

def start_with_vowel?(word)
  Vowels.include?(word[0])
end

def vowel_translate(word)
  word + "ay"
end

def consonant_translate(word)
  prefix = word.match(Consonant_Filter)
  word = prefix[2] + prefix[1] + "ay"
end