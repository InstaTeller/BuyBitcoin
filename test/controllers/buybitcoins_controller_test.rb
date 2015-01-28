require 'test_helper'

class BuybitcoinsControllerTest < ActionController::TestCase
  setup do
    @buybitcoin = buybitcoins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buybitcoins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buybitcoin" do
    assert_difference('Buybitcoin.count') do
      post :create, buybitcoin: { btc: @buybitcoin.btc, mail: @buybitcoin.mail, phone: @buybitcoin.phone, usd: @buybitcoin.usd }
    end

    assert_redirected_to buybitcoin_path(assigns(:buybitcoin))
  end

  test "should show buybitcoin" do
    get :show, id: @buybitcoin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buybitcoin
    assert_response :success
  end

  test "should update buybitcoin" do
    patch :update, id: @buybitcoin, buybitcoin: { btc: @buybitcoin.btc, mail: @buybitcoin.mail, phone: @buybitcoin.phone, usd: @buybitcoin.usd }
    assert_redirected_to buybitcoin_path(assigns(:buybitcoin))
  end

  test "should destroy buybitcoin" do
    assert_difference('Buybitcoin.count', -1) do
      delete :destroy, id: @buybitcoin
    end

    assert_redirected_to buybitcoins_path
  end
end
