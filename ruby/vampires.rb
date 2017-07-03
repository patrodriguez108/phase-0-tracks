counter = 0

  puts "How many employees will be processed?"
  x = gets.chomp
    x = x.to_i

while counter < x



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


loop_counter = 0

loop do
    puts "Please list any allergies (type DONE when done)"
    allergy = gets.chomp
    if allergy == "DONE"
        puts "Thank you for listing your allergies"
        break
    elsif allergy == "sunshine"
      vamps_hate_sun = true
    else
      vamps_hate_sun = false
    end
    loop_counter += 1
end


if !(vamps_are_old && vamps_hate_garlic && vamps_donut_need_insurance)
  puts "Probably not a vampire"
elsif vamps_are_old && vamps_hate_garlic && vamps_hate_sun || vamps_donut_need_insurance
  puts "Probably a vampire"
elsif vamps_are_old && vamps_hate_garlic && vamps_donut_need_insurance && vamps_hate_sun
  puts "Almost certainly a vampire"
elsif vamp_names_are_obvi && vamps_hate_sun
  puts "Definitely a vampire"
else
  puts "Results inconclusive"
end

  counter += 1
end

puts "Actually never mind! What do these questions have to do with anything?! Let's all be friends!"