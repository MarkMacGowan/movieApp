require "test_helper"

class CreateMovieWorkFlowTest < ActionDispatch::IntegrationTest
  test "new movie record should be created" do
    get "/movie_forms/new"
    assert_response :success
    
    post "/movie_forms", params: {movie_forms:{movie_id: 5, title: "Superman Returns", year: 2006-7-01, cast: "Brandon Routh", description: "Kryptonite!", dvd: true, blu_ray: true}}
    assert_response :found
  end

  test "movie record should be viewable" do
    get "/movie_forms/5"
    assert_response :success

    post "/movie_forms", params: {movie_forms:{movie_button: true}}
    assert_response :found

  end

  test "movie record should be edited" do
    get "/movie_forms/6/edit"
    assert_response :success

    post "/movie_forms/5", params: {movie_forms:{edit_button: true}}
    assert_response :found

  end

end  