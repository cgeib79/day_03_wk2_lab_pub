class Customer
  attr_reader :name, :wallet, :age

  def initialize (name, wallet, age)
    @name = name
    @wallet = wallet
    @liver = []
    @age = age
  end

  def is_legal()
    age >= 18
  end

  def check_wallet()
    return @wallet
  end

  def check_drunk()
    return @liver.length
  end

  def buy_drink(pub)
      drink = pub.sell_drink(@drink1)
      @liver.push(drink)
      @wallet -= drink.price()
      pub.add_money(drink.price)
  end

end
