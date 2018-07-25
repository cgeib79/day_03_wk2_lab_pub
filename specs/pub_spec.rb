require('minitest/autorun')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class TestPub <MiniTest::Test

  def setup
    @pub = Pub.new('Horseshoe Bar', 100)
    @drink1 = Drink.new('Wine', 5)
    @drink2 = Drink.new('Whisky', 6)
    @drink3 = Drink.new('Beer', 4)
    @drink4 = Drink.new('Cider', 3)
    @pub.add_drink(@drink1)
    @pub.add_drink(@drink2)
    @pub.add_drink(@drink3)
  end

  def test_name
    assert_equal('Horseshoe Bar', @pub.name)
  end

  def test_drink_count()
    assert_equal(3, @pub.drink_count())
  end

  def test_add_drink()
    @pub.add_drink(@drink4)
    assert_equal(4, @pub.drink_count())
  end

  def test_till_balance
    assert_equal(100, @pub.till_balance)
  end

  def test_sell_drink
    assert_equal(2, @pub.drink_count())
  end

end
