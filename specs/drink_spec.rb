require('minitest/autorun')
require_relative('../drink.rb') #does not need to know about customer and pub

class TestDrink <MiniTest::Test

  def setup
    @drink = Drink.new("Wine", 5)
  end

  def test_name()
    assert_equal("Wine", @drink.name)
  end

  def test_price
    assert_equal(5, @drink.price)
  end

end
