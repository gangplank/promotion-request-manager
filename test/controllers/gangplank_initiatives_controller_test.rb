require 'test_helper'

class GangplankInitiativesControllerTest < ActionController::TestCase
  setup do
    @gangplank_initiative = gangplank_initiatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gangplank_initiatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gangplank_initiative" do
    assert_difference('GangplankInitiative.count') do
      post :create, gangplank_initiative: { name: @gangplank_initiative.name }
    end

    assert_redirected_to gangplank_initiative_path(assigns(:gangplank_initiative))
  end

  test "should show gangplank_initiative" do
    get :show, id: @gangplank_initiative
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gangplank_initiative
    assert_response :success
  end

  test "should update gangplank_initiative" do
    patch :update, id: @gangplank_initiative, gangplank_initiative: { name: @gangplank_initiative.name }
    assert_redirected_to gangplank_initiative_path(assigns(:gangplank_initiative))
  end

  test "should destroy gangplank_initiative" do
    assert_difference('GangplankInitiative.count', -1) do
      delete :destroy, id: @gangplank_initiative
    end

    assert_redirected_to gangplank_initiatives_path
  end
end
