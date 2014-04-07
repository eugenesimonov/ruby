class Symbolize
	def initialize
	@hash = Hash[
		'yes'=>23,
		'b'=>'travel',
		'yesterday'=>34,
		5=>'234',
		:yesss=>:fg,
		try:Hash[
			'yesterday1'=>34,
			'yesteryear'=>2014],
		key:Array[
			'yes'=>23,
			'b'=>'travel'],
		'yesterday1'=>34,
		'yesteryear'=>2014]
	end
	
	def result
		puts symbolize(@hash).to_s
		#~ symbolize(@hash)
		#~ puts @hash.keys.map! {|key| key = key.to_s}.to_s 
	end
	
	private
	def symbolize(data)
		newData = data
		if data.instance_of?(Hash) then
			newData = Hash.new
			data.each {|key,value| 
					newData.store(key.instance_of?(String)? key.to_sym: key,symbolize(value))
			}
		end
		if data.instance_of?(Array) then
			data.map! {|item| symbolize(item)}
		end
		return newData
	end
end

Symbolize.new.result

