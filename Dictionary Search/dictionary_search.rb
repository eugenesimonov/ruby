class DictionarySearch
	def initialize(file_path)
		@words = File.new(file_path).gets(nil).split(' ')
		#~ @words = Array['abc','bcd','abcd','abdc']
	end
  
	def word_pairs
		pairs = Hash.new
		answer = Array.new
		@words.each do|word|
			if word.size >=2 && word[-2] != word[-1] then
				rev_word = word[0...-2]+word[-2,2].reverse
				pairs[word] = rev_word
				answer << Array[word, rev_word] if pairs[rev_word]
			end
		end
		answer
	end
end  

DictionarySearch.new('./wordsEn.txt').word_pairs
