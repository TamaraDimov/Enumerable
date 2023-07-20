require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initilize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end
