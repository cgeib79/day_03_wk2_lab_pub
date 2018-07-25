class Customer
  attr_reader :name, :wallet

  def initialize (name, wallet)
    @name = name
    @wallet = wallet
    @liver = []
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
