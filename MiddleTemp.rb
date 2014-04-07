class MiddleTemp
	def initialize()
		@values = Array.new(40) {
			time = rand((Time.now - 60*60*24*365)..Time.now)
			time.strftime("%d.%m  #{rand(-20..20)}")
		}
		puts @values.to_s
	end
	
	def result
		months = Array.new(12) {Array.new}
		@values.each { |value|
			day = value.match(/(\d\d).(\d\d)\s+(\-?\d+)/)[1]
			month =  value.match(/(\d\d).(\d\d)\s+(\-?\d+)/)[2]
			temp = value.match(/(\d\d).(\d\d)\s+(\-?\d+)/)[3]
			months[month.to_i - 1] << temp.to_i
		}
		
		months.each {|month|
			if month.size > 0
				puts Time.gm(2014, months.index(month) + 1).strftime("%B") + ":"
				puts month.inject(:+) / month.size
			end
		}
	end
end

MiddleTemp.new.result

