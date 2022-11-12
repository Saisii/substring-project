dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


  def substrings (word, dictionary_array)
    hash = {}
    word_array = word.split(/[^[[:word:]]]+/)
    dictionary_array.each do |dic_word|
        word_array.each  do |word|
            if dic_word == word
                hash[dic_word] = 1 + hash[dic_word].to_i
            end
        end
    end
    hash
  end

  puts "Enter a sentence and we will display the dictionary words for you"
  p substrings(gets, dictionary)
