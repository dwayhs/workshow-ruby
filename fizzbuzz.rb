class FizzBuzz
  def initialize(list)
    @list = list
  end

  def run
    @list.map { |item| FizzBuzzItem.new(item) }.map(&:result)
  end
end

class FizzBuzzItem
  def initialize(number)
    @number = number
  end

  def fizz?
    @number % 3 == 0
  end

  def buzz?
    @number % 5 == 0
  end

  def fizzbuzz?
    fizz? and buzz?
  end

  def result
    return 'FizzBuzz' if fizzbuzz?
    return 'Fizz' if fizz?
    return 'Buzz' if buzz?

    @number
  end

  def number
    @number
  end
end
