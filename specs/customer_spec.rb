require('minitest/autorun')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')

class TestCusts <MiniTest::Test
  def setup
    @customer1 = Customer.new("Jane", 10, 16)
    @pub = Pub.new('Horseshoe Bar', 100)
    @drink1 = Drink.new('Wine', 5)
    @drink2 = Drink.new('Whisky', 5)
    @drink3 = Drink.new('Beer', 5)
    @drink4 = Drink.new('Cider', 5)
    @pub.add_drink(@drink1)
    @pub.add_drink(@drink2)
    @pub.add_drink(@drink3)
  end

  def test_name()
    assert_equal("Jane", @customer1.name())
  end

  def test_is_legal()
    assert_equal(false, @customer1.is_legal())
  end

  def test_drunk()
    assert_equal(0, @customer1.check_drunk)
  end

  def test_buy_drink()
    @customer1.buy_drink(@pub)
    assert_equal(1, @customer1.check_drunk())
    assert_equal(5, @customer1.check_wallet())
    assert_equal(105, @pub.till_balance())
  end
end
