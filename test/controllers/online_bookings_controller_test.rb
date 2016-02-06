require 'test_helper'

class OnlineBookingsControllerTest < ActionController::TestCase
  setup do
    @online_booking = online_bookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:online_bookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create online_booking" do
    assert_difference('OnlineBooking.count') do
      post :create, online_booking: { booking_id: @online_booking.booking_id, movie_id: @online_booking.movie_id }
    end

    assert_redirected_to online_booking_path(assigns(:online_booking))
  end

  test "should show online_booking" do
    get :show, id: @online_booking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @online_booking
    assert_response :success
  end

  test "should update online_booking" do
    patch :update, id: @online_booking, online_booking: { booking_id: @online_booking.booking_id, movie_id: @online_booking.movie_id }
    assert_redirected_to online_booking_path(assigns(:online_booking))
  end

  test "should destroy online_booking" do
    assert_difference('OnlineBooking.count', -1) do
      delete :destroy, id: @online_booking
    end

    assert_redirected_to online_bookings_path
  end
end
