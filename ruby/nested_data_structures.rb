# student orders food
puts "student ordered"
p university[:student_lounge][:menu][:bagels][1]
p university[:student_lounge][:menu][:cream_cheese][1]
# (I just need to say that I've had this bagel and cream cheese combo and it's awesome, I used to eat it everyday when I was at DePaul)
p university[:student_lounge][:menu][:coffee][3]

# The cafe in the student lounge has run out of bacon
university[:student_lounge][:menu][:sandwiches].delete('bacon')

# Correspondence in a Flat World has been cancelled for the day
university[:classroom_3][:course] = ('cancelled')
university[:classroom_3][:students] = 0
university[:classroom_3][:professor] = nil

# Professor Jones can't make it today to Philosophy 304. In her place is Professor Swardsen. Additionally there are 3 students absent
university[:classroom_1][:professors][1] = 'swardsen'
university[:classroom_1][:students] = 31

# Lazarus told Mike that he needs to move the overhead projector from Asian Art History to the storage room of the Technology Department
p university[:tech_dept][:dept_head]
puts "asked"
p university[:tech_dept][:student_employees][2]
puts "to move"
p university[:classroom_2][:equipment][2]
puts "from"
p university[:classroom_2][:equipment]
puts "to"
p university[:tech_dept][:equipment]
university[:classroom_2][:equipment].delete('overhead_projector')
university[:tech_dept][:equipment].push('overhead_projector')

p university