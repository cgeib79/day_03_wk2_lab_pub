class Pub
  attr_reader :name, :till, :drink

  def initialize(name, till)
    @name = name
    @till = till
    @drink = []
  end

def drink_count()
  return @drink.length()
end

  def add_drink(drink)
    @drink.push(drink)
  end

  def till_balance()
    return @till
  end

  def add_money(cost)
    @till += cost
  end

  def sell_drink(drink)
    return @drink.pop()
  end

end
