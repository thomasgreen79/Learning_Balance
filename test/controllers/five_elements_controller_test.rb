require 'test_helper'

class FiveElementsControllerTest < ActionController::TestCase
  test "should get fire" do
    get :fire
    assert_response :success
  end

  test "should get wood" do
    get :wood
    assert_response :success
  end

  test "should get earth" do
    get :earth
    assert_response :success
  end

  test "should get water" do
    get :water
    assert_response :success
  end

  test "should get metal" do
    get :metal
    assert_response :success
  end

end
