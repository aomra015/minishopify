require 'test_helper'

class CartTest < ActiveSupport::TestCase
  
  test "should add line item to cart if it doesn't exist" do
  	line_item = Cart.create.add_product(products(:one))
  	assert_instance_of LineItem, line_item
  	assert_equal line_item.quantity, 1
  end

  test "should increment line item if it exists" do
  	incremented_item = carts(:one).add_product(products(:one))
  	assert_instance_of(LineItem, incremented_item)
  	assert_equal(2, incremented_item.quantity)
  end

end
