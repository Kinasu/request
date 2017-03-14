class Request
		#заявка пользователя
  def initialize(age, sex, income, credit_history, amount_requested)
  	@age = age
  	@sex = sex
  	@income = income
  	@credit_history = credit_history
  	@amount_requested = amount_requested
  end
		#сравнение
	def compare 
		@computing = 0

		if @age >= 21 && @age < 40
			@computing +=10
		elsif @age > 40
			@computing +=20
		end

		if @sex == 1
			@computing +=1
		end

		if @income >=20001 && @income < 40000
			@computing +=10
		elsif @income > 40000
			@computing +=20
		end
				
		if @credit_history == 1
			@computing +=20			
		end

		if @amount_requested < 20000
			@computing +=20
		elsif @amount_requested >= 20001 && @amount_requested < 40000
			@computing +=10			
		end
		
	end
	def approve?(approve, denied)
		if @computing >= 50
			return approve
		else
			return denied
		end
	end
end
