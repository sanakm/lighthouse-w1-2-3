class Foo
  def self.bar
    puts 'class method'
  end

  def baz
    puts 'instance method'
  end
end

Foo.bar
=> "class method"
Foo.baz
=> undefined method ‘baz’ for Foo:Class

Foo.new.baz
=> "instance method"
Foo.new.bar
=> undefined method ‘bar’ for #<Foo:0x1e820>


class Person
  def self.create(params)
    @name = params[:name]
    @age  = params[:age]
  end
end

person = Person.create(name: "John Doe", age: 27)
puts person
