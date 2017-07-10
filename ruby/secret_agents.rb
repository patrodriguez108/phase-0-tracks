def encrypt(string)
  string[0].next + string[1].next + string[2].next
end

puts encrypt("abc")

puts encrypt("zed")

# method scope
def decrypt(this)
# plug alphabet into variable
  x = "abcdefghijklmnopqrstuvwxyz"
# reverse alphabet
  x.reverse
# find a way to have x.reverse be accessed by thing variable
  new_alpha = x.reverse
  thing = new_alpha
# access next in index
  thing[0].next + thing[1].next + thing[2].next
end

puts decrypt("bcd")

puts decrypt("afe")

# At this point, as I have been behind and I was unable to find a partner and I'm on the last day of week 5 and I still haven't figured out how to write out the method to decrypt, I decided to submit what I have. I would rather turn this in now rather than risk getting another strike. I do hope that I can go back to this and figure out how to decrypt.