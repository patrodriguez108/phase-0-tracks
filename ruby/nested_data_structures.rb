university = {
  tech_dept: {
    dept_head: 'lazarus',
    student_employees: [
      'zoe', 'mark', 'mike', 'asha'
    ],
    equipment: [
      'computers', 'projectors', 'televisions'
    ]
  },
  classroom_1: {
    course: 'philosophy_304',
    professors: [
      'stewart', 'jones', 'priya'
    ],
    students: 34,
    equipment: ['projector', 'computer']
  },
  classroom_2: {
    course: 'asian_art_history',
    professor: 'balaga',
    students: 42,
    equipment: ['projector', 'computer', 'overhead_projector']
  },
  classroom_3: {
    course: 'correspondence_in_a_flat_world',
    professor: 'duncan',
    students: 13,
    equipment: ['projector', 'computer']
  },
  student_lounge: {
    menu: {
      bagels: [
        'plain', 'garlic', 'everything', 'cinnamon_raisin', 'chocolate_chip'
      ],
      cream_cheese: [
        'plain', 'sun_dried_tomato', 'strawberry', 'low_fat'
      ],
      coffee: [
        'light', 'dark', 'soy', 'iced'
      ],
      drinks: [
        'orange_juice', 'apple_juice', 'bottled_water'
      ],
      sandwiches: [
        'egg', 'sausage', 'bacon', 'ham', 'veggie', 'cheese'
      ]
    },
    tables: 6,
    chairs: 27,
    computers: 15
  }
}

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