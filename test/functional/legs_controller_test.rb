require 'test_helper'

class LegsControllerTest < ActionController::TestCase
  setup do
    @leg = legs(:one)
    @texas = legs(:texas)
    @invalid = legs(:invalid)
    @invalid_depart_arrive_type = legs(:invalid_depart_arrive_type)
    @invalid_depart_arrive = legs(:invalid_depart_arrive)
  end
  test "should create a filled out leg"  do
    assert_difference('Leg.count', 1) do
      post :create, :leg => @texas.attributes
    end
     assert_redirected_to leg_path(assigns(:leg))
  end
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legs)
  end
  test "it should not make a leg with a blank location" do
      assert_no_difference('Leg.count') do
         post :create, :leg => @invalid.attributes
      end
  end
  test "it should not make a leg without a depart/arrival noted" do
  	assert_no_difference('Leg.count') do
         post :create, :leg => @invalid_depart_arrive_type.attributes
      end
  end
  test "it should not make a leg without a date noted" do
  	assert_no_difference('Leg.count') do
         post :create, :leg => @invalid_depart_arrive.attributes
      end
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leg" do
    assert_difference('Leg.count') do
      post :create, :leg => @leg.attributes
    end

    assert_redirected_to leg_path(assigns(:leg))
  end

  test "should show leg" do
    get :show, :id => @leg
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @leg
    assert_response :success
  end

  test "should update leg" do
    put :update, :id => @leg, :leg => @leg.attributes
    assert_redirected_to leg_path(assigns(:leg))
  end

  test "should destroy leg" do
    assert_difference('Leg.count', -1) do
      delete :destroy, :id => @leg
    end

    assert_redirected_to legs_path
  end
end
