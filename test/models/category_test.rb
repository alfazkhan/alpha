require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category=Category.new(name:"Comedy")
  end

  test "Category should be valid" do
    assert @category.valid?
  end

  test "name should be present" do
    @category.name =""
    assert_not @category.valid?
  end

  test "name should be unique" do
    @category.save
    @cat=Category.new(name:"Comedy")
    assert_not @cat.valid?
  end

  test "name not too long" do
    @category.name = 'a' * 31
    assert_not @category.valid?
  end

  test "name not too short" do
    @category.name="aa"
    assert_not @category.valid?
  end


end
