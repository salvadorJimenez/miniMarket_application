require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "name can't be blank" do
    product= Product.new(name:"",brand_id: 36,description:"I'ts nice",price:16.50)
    assert_not product.save
  end

  test "brand must to exist" do
    product= Product.new(name:"Juice",brand_id: 164645486,description:"I'ts nice",price:16.50)
    assert_not product.save
  end

  test "price must to exist" do
    product= Product.new(name:"Juice",brand_id: 36,description:"I'ts nice",price:nil)
    assert_not product.save
  end

  test "price have to be less than 100" do
     product= Product.new(name:"Juice",brand_id: 36,description:"I'ts nice",price:50)
     assert_not product.save
  end
end
