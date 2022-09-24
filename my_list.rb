require './my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  attr_reader :list

  def each
    yield @list
  end
end

list_of_nums = MyList.new(1, 2, 3, 4)

print "#{list_of_nums.list}\n" # [1, 2, 3, 4]

list_of_nums.each do |num|
  puts num
end
# 1
# 2
# 3
# 4

puts list_of_nums.all(list_of_nums.list) # true
puts list_of_nums.any(list_of_nums.list) # false
print list_of_nums.filter(list_of_nums.list) # [2, 4]
