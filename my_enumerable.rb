module MyEnumerable
  def all(list)
    list.all? { |num| num < 5 }
  end

  def any(list)
    list.any? { |num| num == 5 }
  end

  def filter(list)
    list.filter(&:even?)
  end
end
