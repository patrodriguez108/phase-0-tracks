def encrypt(string)
  string[0].next + string[1].next + string[2].next
end

puts encrypt("abc")

puts encrypt("zed")

# write out method scope
def decrypt(thing)
# # # plug alphabet into variable
  index = 0
  alpha = "abcdefghijklmnopqrstuvwxyz"
  new_message = ""
# # # access index
# # # access next in reverse
  while index < thing.length
    if thing[index]== " "
      thing[index]
    else
      thing[index]
      alpha_index = alpha.index(thing[index])
      alpha_index = alpha_index - 1
      new_message += alpha[alpha_index]
      index += 1
    end
  end
  puts "#{new_message}"
end

puts decrypt("bcd")

puts decrypt("afe")

# At this point, as I have been behind and I was unable to find a partner and I'm on the last day of week 5 and I still haven't figured out how to write out the method to decrypt, I decided to submit what I have. I would rather turn this in now rather than risk getting another strike. I do hope that I can go back to this and figure out how to decrypt.