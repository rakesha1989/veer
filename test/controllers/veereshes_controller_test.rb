require 'test_helper'

class VeereshesControllerTest < ActionController::TestCase
  setup do
    @veeresh = veereshes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:veereshes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create veeresh" do
    assert_difference('Veeresh.count') do
      post :create, veeresh: { booking_id: @veeresh.booking_id, canteen: @veeresh.canteen, car_parks: @veeresh.car_parks, establishment: @veeresh.establishment, feedback_id: @veeresh.feedback_id, image: @veeresh.image, number_of_tickets_box: @veeresh.number_of_tickets_box, number_of_tickets_online: @veeresh.number_of_tickets_online, proprietor: @veeresh.proprietor, screen_id: @veeresh.screen_id, seating_capacity: @veeresh.seating_capacity, total_amount_per_day: @veeresh.total_amount_per_day, user_id: @veeresh.user_id }
    end

    assert_redirected_to veeresh_path(assigns(:veeresh))
  end

  test "should show veeresh" do
    get :show, id: @veeresh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @veeresh
    assert_response :success
  end

  test "should update veeresh" do
    patch :update, id: @veeresh, veeresh: { booking_id: @veeresh.booking_id, canteen: @veeresh.canteen, car_parks: @veeresh.car_parks, establishment: @veeresh.establishment, feedback_id: @veeresh.feedback_id, image: @veeresh.image, number_of_tickets_box: @veeresh.number_of_tickets_box, number_of_tickets_online: @veeresh.number_of_tickets_online, proprietor: @veeresh.proprietor, screen_id: @veeresh.screen_id, seating_capacity: @veeresh.seating_capacity, total_amount_per_day: @veeresh.total_amount_per_day, user_id: @veeresh.user_id }
    assert_redirected_to veeresh_path(assigns(:veeresh))
  end

  test "should destroy veeresh" do
    assert_difference('Veeresh.count', -1) do
      delete :destroy, id: @veeresh
    end

    assert_redirected_to veereshes_path
  end
end
