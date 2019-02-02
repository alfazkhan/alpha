require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase

  def setup
    @category=Category.create(name:"Comedy")
    #@category.name="Comedy"
    #@category.save
  end

  test "check index" do
    get :index
    assert_response :success
  end

  test "check new" do

    get :new
    assert_response :success
  end

  test "check show" do

    var= categories(:one)

    get :show ,params: { id: var.id }
    assert_response :success
  end

end