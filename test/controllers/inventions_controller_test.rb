require 'test_helper'

class InventionsControllerTest < ActionController::TestCase
  setup do
    @invention = inventions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invention" do
    assert_difference('Invention.count') do
      post :create, invention: { blueprint: @invention.blueprint, prefered_decryptor: @invention.prefered_decryptor }
    end

    assert_redirected_to invention_path(assigns(:invention))
  end

  test "should show invention" do
    get :show, id: @invention
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invention
    assert_response :success
  end

  test "should update invention" do
    patch :update, id: @invention, invention: { blueprint: @invention.blueprint, prefered_decryptor: @invention.prefered_decryptor }
    assert_redirected_to invention_path(assigns(:invention))
  end

  test "should destroy invention" do
    assert_difference('Invention.count', -1) do
      delete :destroy, id: @invention
    end

    assert_redirected_to inventions_path
  end
end
