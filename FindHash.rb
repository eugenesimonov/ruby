class FindHash
	def initialize()
		@hash = Hash[
			'yes'=>23, 
			'b'=>'travel', 
			'yesterday'=>34, 
			5=>'234', 
			:yesss=>:fg, 
			try: 30, 
			key:'some value', 
			'yesterday1'=>34,
			'yesterear'=>2014]
	end
	
	def result()
		puts @hash.keys.select {|key| key.to_s.start_with?('yes')}
		puts @hash.keys.select {|key| key.to_s.start_with?('yes')}.size
	end
end

FindHash.new.result
