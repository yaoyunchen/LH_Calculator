class Calculator
	#See what user wants to do.
	def getResponse
		puts "Would you like to [a]dd, [s]ubtract, [m]ultiply, [d]ivide or [e]xit?"
		resp = gets.chomp.downcase
		return resp
	end

	#Checks to see if the user's entries are numerical.
	def getNum
		is_num = false
		begin
			while is_num == false
				num = Float(gets.chomp)
				is_num = true
			end
		rescue ArgumentError
			puts "Invalid entry.  Please enter a number."
			retry
		end
		return num
	end
	
	def add(x, y)
		x + y
	end

	def subtract(x, y)
		x - y
	end

	def mult(x, y)
		x * y
	end

	def div(x, y)
		x / y
	end
end

#Used to determine if the calculator is still being used.
calc_on = true

#Begins calculator.
calculate = Calculator.new

while calc_on == true

	#See what the user wants to do.
	response = calculate.getResponse

	#Determine which calculation to do based on user input.
	case response
	when 'a', 'add'
		puts "Please enter first number."
		x = calculate.getNum	

		puts "Please enter second number."
		y = calculate.getNum

		puts "RESULT: #{x} + #{y} = #{calculate.add(x, y)}"

	when "s", "subtract" 
		puts "Please enter first number."
		x = calculate.getNum	

		puts "Please enter second number."
		y = calculate.getNum

		puts "RESULT: #{x} - #{y} = #{calculate.subtract(x, y)}"
	when "m", "multiply"
		puts "Please enter first number."
		x = calculate.getNum	
	
		puts "Please enter second number."
		y = calculate.getNum

		puts "RESULT: #{x} * #{y} = #{calculate.mult(x, y)}"
	when "d", "divide"
		puts "Please enter first number."
		x = calculate.getNum	

		puts "Please enter second number."
		y = calculate.getNum
		puts y == 0 ? "Divide by zero error." : "RESULT: #{x} / #{y} = #{calculate.div(x, y)}"
	when "e", "exit"
		calc_on == false
		exit
	else		
		puts "I'm sorry, the entered input is invalid."
	end
end
