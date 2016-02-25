require 'test_helper'

class PromoRequestsControllerTest < ActionController::TestCase
  setup do
    @promo_request = promo_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promo_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promo_request" do
    assert_difference('PromoRequest.count') do
      post :create, promo_request: { description: @promo_request.description, event_name: @promo_request.event_name, event_privacy: @promo_request.event_privacy, initiative_id: @promo_request.initiative_id, is_free: @promo_request.is_free, is_space_reserved: @promo_request.is_space_reserved, location_id: @promo_request.location_id, organization_name: @promo_request.organization_name, organizer_email: @promo_request.organizer_email, press_release_uri: @promo_request.press_release_uri, promo_image_uri: @promo_request.promo_image_uri, registration_url: @promo_request.registration_url }
    end

    assert_redirected_to promo_request_path(assigns(:promo_request))
  end

  test "should show promo_request" do
    get :show, id: @promo_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promo_request
    assert_response :success
  end

  test "should update promo_request" do
    patch :update, id: @promo_request, promo_request: { description: @promo_request.description, event_name: @promo_request.event_name, event_privacy: @promo_request.event_privacy, initiative_id: @promo_request.initiative_id, is_free: @promo_request.is_free, is_space_reserved: @promo_request.is_space_reserved, location_id: @promo_request.location_id, organization_name: @promo_request.organization_name, organizer_email: @promo_request.organizer_email, press_release_uri: @promo_request.press_release_uri, promo_image_uri: @promo_request.promo_image_uri, registration_url: @promo_request.registration_url }
    assert_redirected_to promo_request_path(assigns(:promo_request))
  end

  test "should destroy promo_request" do
    assert_difference('PromoRequest.count', -1) do
      delete :destroy, id: @promo_request
    end

    assert_redirected_to promo_requests_path
  end
end
