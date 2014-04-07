class SumNegative 
	
	def initialize()
		@values = Array.new(4) {Array.new(4) {rand(-10..10)}}
	end
	
	def result()
		@values.each {|x| puts x.to_s}
		puts "Result=" + @values.flatten.select{|x| x < 0}.inject(:+).to_s
	end
end

SumNegative.new.result
