class DictionarySearch
	def initialize(file_path)
		@words = File.new(file_path).gets(nil).split(' ')
		#~ @words = Array['abc','bcd','abcd','abdc']
	end
  
	def word_pairs
		@words.select! {|word| word.size >=2 && word[-2] != word[-1]}
		
		@words.select! {|word| @words.index(word[0...-2]+word[-2,2].reverse)}
		
		@words.reject! {|word| @words.index(word[0...-2]+word[-2,2].reverse)}
		
		answer = Array.new
		@words.each{|word| answer << Array[word,word[0...-2]+word[-2,2].reverse]}
		puts answer.to_s
		answer
	end
end  

DictionarySearch.new('./wordsEn.txt').word_pairs
