module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    self.my_each do |el|
      yield(el, index)
      index += 1
    end
    self
  end

  def my_select
    selected = []
    self.my_each do |el|
      if yield(el) == true
        selected << el
      end
    end
    selected
  end

  def my_all?
    selected = []
    self.my_each do |el|
      if yield(el) == true
        selected << el
      end
    end
    selected == self
  end

  def my_any?
    selected = []
    self.my_each do |el|
      if yield(el) == true
        selected << el
      end
    end
    selected.empty? == false
  end

  def my_none?
    selected = []
    self.my_each do |el|
      if yield(el) == true
        selected << el
      end
    end
    selected.empty? == true
  end

  def my_count
    count = 0
    self.my_each do |el|
      if block_given?
        if yield(el)
          count += 1
        end
      else
        count += 1
      end
    end
    count
  end

  def my_map
    new_arr = []
    self.my_each do |el|
      new_arr << yield(el)
    end
    new_arr
  end

  def my_inject(starting_value = 0)
    total = starting_value
    self.my_each do |el|
      total = yield(total, el)
    end
    total
  end
end

  # You will first have to define my_each
  # on the Array class. Methods defined in
  # your enumerable module will have access
  # to this method
  class Array
  # Define my_each here
    def my_each
      for i in self do
        yield(i)
      end
      self
    end
  end
