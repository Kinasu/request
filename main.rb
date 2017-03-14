require './request.rb'

puts "Здравствуйте, как вас зовут?"

name = gets.chomp.capitalize

puts "Ответьте на вопросы анкеты."

puts "Ваш возраст?"
age = gets.to_i
puts "Ваш пол? Женский - 1, мужской - 2."
sex = gets.to_i
puts "Ваш доход?"
income = gets.to_i
puts "Есть ли у Вас кредитная история? Да - 1, нет - 2."
credit_history = gets.to_i
puts "Запрашиваемая сумма?"
amount_requested = gets.to_i

request = Request.new(age, sex, income, credit_history, amount_requested)

request.compare

puts request.approve?("#{name}, ваша заявка одобрена.", "#{name}, ваша заявка отклонена.")