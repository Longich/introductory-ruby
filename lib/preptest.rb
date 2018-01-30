module NameDecorator
  def name
    "<<#{super}>>"
  end
end

class Product
  def name
    "A great film"
  end
end

class User
  def name
    'Alice'
  end
end

class User
  prepend NameDecorator
end

user = User.new
puts user.name

puts User.prepend NameDecorator
puts Product.prepend NameDecorator
