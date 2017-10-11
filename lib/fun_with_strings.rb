module FunWithStrings
def palindrome?
self.gsub(/\W/,'').downcase == self.gsub(/\W/,'').downcase.reverse
end

def count_words
wrds = Hash.new
self.downcase.gsub(/[^a-z\s]/,'').split.each do |word|
if wrds[word] != nil
wrds[word] += 1
else
wrds[word] = 1
end
end
wrds
end
def anagram_groups
words = self.split
results = Array.new
words.each_with_index do |word, index|
unless results.any? { |arr| arr.include?(word) }
temp_array = Array.new
temp_array.push(word)
words[index+1..-1].each do |word2|
if word.is_anagram(word2)
temp_array.push(word2)
end
end
results.push(temp_array)
end
end
results
end
def is_anagram(word)
self.downcase.chars.sort.join == word.downcase.chars.sort.join
end
end
class String
include FunWithStrings
end