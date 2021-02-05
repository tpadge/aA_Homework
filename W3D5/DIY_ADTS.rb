class Stack

  attr_reader :underlying_array

  def initialize
    @underlying_array = []
  end
  
  def push(el)
    @underlying_array.push(el)
    el
  end

  def pop
    @underlying_array.pop
  end

  def peek
    @underlying_array.last
  end

end

class Queue

  attr_reader :underlying_array

  def initialize
    @underlying_array = []
  end

  def enqueue(el)
    @underlying_array.push(el)
    el
  end

  def dequeue(el)
    @underlying_array.shirt(el)
  end

  def peek(el)
    @underlying_array.first
  end

end

class Map

  attr_reader :underlying_array

  def initialize
    @underlying_array = []
  end

  def set(key, value)
    @underlying_array.index {|pair| @underlying_array pair[0] == value }
      if pair_index
        underlying_array[pair_index][1] = value
      else
        underlying_array.push(key, value)
      end
      value
   
  end

  def get(key, value)
    underlying_array.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def delete(key)
    value = get(key)
    underlying_array.reject! { |pair| pair[0] == key }
    value
  end

  def show
    deep_dup(underlying_array)
  end

  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end  

end