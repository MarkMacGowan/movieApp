=begin require "test_helper"
require "movie_forms_controller"

class MovieFormsControllerTest < ActiveSupport::TestCase
  test "should display all movies in database" do
    movieForm = MovieForm.all
    assert movie_form.new
  end

  test "should create new movie form" do
    movieForm = MovieForm.new
  end


end =end