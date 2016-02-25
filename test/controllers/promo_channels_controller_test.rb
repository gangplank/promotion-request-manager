require 'test_helper'

class PromoChannelsControllerTest < ActionController::TestCase
  setup do
    @promo_channel = promo_channels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promo_channels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promo_channel" do
    assert_difference('PromoChannel.count') do
      post :create, promo_channel: { name: @promo_channel.name }
    end

    assert_redirected_to promo_channel_path(assigns(:promo_channel))
  end

  test "should show promo_channel" do
    get :show, id: @promo_channel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promo_channel
    assert_response :success
  end

  test "should update promo_channel" do
    patch :update, id: @promo_channel, promo_channel: { name: @promo_channel.name }
    assert_redirected_to promo_channel_path(assigns(:promo_channel))
  end

  test "should destroy promo_channel" do
    assert_difference('PromoChannel.count', -1) do
      delete :destroy, id: @promo_channel
    end

    assert_redirected_to promo_channels_path
  end
end
