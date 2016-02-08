class Person
  # Define default getter methods, but not setter methods.
  attr_reader :first, :last
  # When someone tries to set a first name, enforce rules about it.
  def first=(first)
    if first == nil or first.size == 0
      raise ArgumentError.new('Everyone must have a first name.')
    end
    @first = first
  end

  # When someone tries to set a last name, enforce rules about it.
  def last=(last)
    if last == nil or last.size == 0
      raise ArgumentError.new('Everyone must have a last name.')
    end
    @last = last
  end

  def last(name)
    if last == nil or last.size == 0
      raise ArgumentError.new('Everyone must have a last name.')
    end
    @last = name
  end

  def full_name
    "#{@first} #{@last}"
  end
  # Delegate to the setter methods instead of setting the instance
  # variables directly.
  def initialize(first, last)
    self.first = first
    self.last = last
  end
end

person = Person.new('Adam', 'Dahan')
# puts person.full_name
