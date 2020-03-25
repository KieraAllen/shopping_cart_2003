require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'

class ShoppingCartTest < Minitest::Test
  def setup
    @product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    @product2 = Product.new(:meat, 'chicken', 4.50, '2')

    @cart = ShoppingCart.new("King Soopers", "30items")
  end

  def test_it_exists

    assert_instance_of ShoppingCart, @cart
  end
end
