class Calculator
  attr_reader :nums

  def push(n)
    @nums ||= []
    @nums << n
  end

  def multiply
    @nums.inject(&:*)
  end

  def add
    @nums.inject(&:+)
  end

  def subtract
    @nums.inject(&:-)
  end

  def clear
    @nums = []
  end

  def remove_last
    @nums.pop(1)
    @nums
  end
end