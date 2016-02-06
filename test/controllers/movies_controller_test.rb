require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
  setup do
    @movie = movies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie" do
    assert_difference('Movie.count') do
      post :create, movie: { duration: @movie.duration, image1: @movie.image1, image2: @movie.image2, image3: @movie.image3, language: @movie.language, name: @movie.name, release_date: @movie.release_date, review_id: @movie.review_id, screen_id: @movie.screen_id, video_trailer: @movie.video_trailer }
    end

    assert_redirected_to movie_path(assigns(:movie))
  end

  test "should show movie" do
    get :show, id: @movie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie
    assert_response :success
  end

  test "should update movie" do
    patch :update, id: @movie, movie: { duration: @movie.duration, image1: @movie.image1, image2: @movie.image2, image3: @movie.image3, language: @movie.language, name: @movie.name, release_date: @movie.release_date, review_id: @movie.review_id, screen_id: @movie.screen_id, video_trailer: @movie.video_trailer }
    assert_redirected_to movie_path(assigns(:movie))
  end

  test "should destroy movie" do
    assert_difference('Movie.count', -1) do
      delete :destroy, id: @movie
    end

    assert_redirected_to movies_path
  end
end
