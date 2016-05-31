require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "item can be added" do
    item = Item.create(program: 'CS:GO')

    assert item.save
  end
end
