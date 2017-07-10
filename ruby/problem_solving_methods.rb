def search_arr(var1, var2)
  index = 0
  none = nil
  var1.each do |list|
    if list == var2
      none = index
    else
      index += 1
    end
  end
  none
end

array = [23, 42, 6, 98, 100]
p search_arr(array, 42)
p search_arr(array, 5)