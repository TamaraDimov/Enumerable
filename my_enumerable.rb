# This module provides custom enumerable methods for arrays and other enumerable objects.
module MyEnumerable
  # Checks if a specific condition is true for all elements in the enumerable object.
  def all?(&block)
    each { |item| return false unless block.call(item) }
    true
  end

  # Checks if at least one element in the enumerable object satisfies the given condition.
  def any?(&block)
    each { |item| return true if block.call(item) }
    false
  end

  # Creates a new array containing elements from the enumerable object that meet the given condition.
  def filter(&block)
    result = []
    each { |item| result << item if block.call(item) }
    result
  end
end
