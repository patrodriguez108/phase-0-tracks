puts "What is your name?"

name = gets.chomp

  if name == "Drake Cula"
    vamp_names_are_obvi = true
  elsif name == "Tu Fang"
    vamp_names_are_obvi = true
  else
    vamp_names_are_obvi = false
  end

puts "How old are you?"

age = gets.chomp

  if age >= "100"
    vamps_are_old = true
  else age <= "100"
    vamps_are_old = false
  end

puts "Our company cafeteria serves garlic bread. Should we order some for you?"

bread = gets.chomp

  if bread == "No"
    vamps_hate_garlic = true
  else
    vamps_hate_garlic = false
  end

puts "Would you like to enroll in the company's health insurance?"

health = gets.chomp

  if health == "No"
    vamps_donut_need_insurance = true
  else
    vamps_donut_need_insurance = false
  end

if !(vamps_are_old && vamps_hate_garlic && vamps_donut_need_insurance)
  puts "Probably not a vampire"
elsif vamps_are_old && vamps_hate_garlic || vamps_donut_need_insurance
  puts "Probably a vampire"
elsif vamps_are_old && vamps_hate_garlic && vamps_donut_need_insurance
  puts "Almost certainly a vampire"
elsif vamp_names_are_obvi
  puts "Definitely a vampire"
else
  puts "Results inconclusive"
end