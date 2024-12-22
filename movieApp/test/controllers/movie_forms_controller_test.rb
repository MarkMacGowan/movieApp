require "test_helper"

class MovieFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie_form = movie_forms(:one)
  end

  test "should get index" do
    get movie_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_form_url
    assert_response :success
  end

  test "should create movie_form" do
    assert_difference("MovieForm.count") do
      post movie_forms_url, params: { movie_form: { blu_ray: @movie_form.blu_ray, cast: @movie_form.cast, description: @movie_form.description, dvd: @movie_form.dvd, movie_id: @movie_form.movie_id, title: @movie_form.title, year: @movie_form.year } }
    end

    assert_redirected_to movie_form_url(MovieForm.last)
  end

  test "should show movie_form" do
    get movie_form_url(@movie_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_form_url(@movie_form)
    assert_response :success
  end

  test "should update movie_form" do
    patch movie_form_url(@movie_form), params: { movie_form: { blu_ray: @movie_form.blu_ray, cast: @movie_form.cast, description: @movie_form.description, dvd: @movie_form.dvd, movie_id: @movie_form.movie_id, title: @movie_form.title, year: @movie_form.year } }
    assert_redirected_to movie_form_url(@movie_form)
  end

  test "should destroy movie_form" do
    assert_difference("MovieForm.count", -1) do
      delete movie_form_url(@movie_form)
    end

    assert_redirected_to movie_forms_url
  end
end
