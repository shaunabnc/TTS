def square_eqs(array)
  array.map { |i| "#{i} * #{i} = #{i*i}" }
end
puts square_eqs( [1,2,3,4] )
def double_eqs(array)
  array.map { |i| "#{i} * 2 = #{i*2}" }
end
puts double_eqs( [1,2,3,4] )