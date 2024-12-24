require "application_system_test_case"

class MovieFormsTest < ApplicationSystemTestCase
  setup do
    @movie_form = movie_forms(:one)
  end

  test "visiting the index" do
    visit movie_forms_url
    assert_selector "h1", text: "Movie Collector"
  end

  test "should create movie form" do
    visit movie_forms_url
    click_on "New Movie"

    check "Blu ray" if @movie_form.blu_ray
    fill_in "Cast", with: @movie_form.cast
    fill_in "Description", with: @movie_form.description
    check "Dvd" if @movie_form.dvd
    fill_in "Movie", with: @movie_form.movie_id
    fill_in "Title", with: @movie_form.title
    fill_in "Year", with: @movie_form.year
    click_on "Create Movie form"

    assert_text "Movie form was successfully created"
    click_on "Homepage"
  end

  test "should update Movie form" do
    visit movie_form_url(@movie_form)
    click_on "Edit", match: :first

    check "Blu ray" if @movie_form.blu_ray
    fill_in "Cast", with: @movie_form.cast
    fill_in "Description", with: @movie_form.description
    check "Dvd" if @movie_form.dvd
    fill_in "Movie", with: @movie_form.movie_id
    fill_in "Title", with: @movie_form.title
    fill_in "Year", with: @movie_form.year
    click_on "Update Movie form"

    assert_text "Movie form was successfully updated"
    click_on "Return"
  end

  test "should destroy Movie form" do
    visit movie_form_url(@movie_form)
    click_on "Delete Movie", match: :first

    assert_text "Movie form was successfully destroyed"
  end
end
