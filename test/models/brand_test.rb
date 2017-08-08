require 'test_helper'

class BrandTest < ActiveSupport::TestCase
  test "the name can't be blank" do
    brand= Brand.new
    assert_not brand.save  
  end
end
