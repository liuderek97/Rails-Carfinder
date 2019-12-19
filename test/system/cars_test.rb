require "application_system_test_case"

class CarsTest < ApplicationSystemTestCase
  setup do
    @car = cars(:one)
  end

  test "visiting the index" do
    visit cars_url
    assert_selector "h1", text: "Cars"
  end

  test "creating a Car" do
    visit cars_url
    click_on "New Car"

    fill_in "Color", with: @car.color
    fill_in "Description", with: @car.description
    fill_in "Km", with: @car.km
    fill_in "Location", with: @car.location
    fill_in "Make", with: @car.make
    fill_in "Model", with: @car.model
    fill_in "Picture", with: @car.picture
    fill_in "Price", with: @car.price
    fill_in "Registration", with: @car.registration
    fill_in "Transmission type", with: @car.transmission_type
    fill_in "Year", with: @car.year
    click_on "Create Car"

    assert_text "Car was successfully created"
    click_on "Back"
  end

  test "updating a Car" do
    visit cars_url
    click_on "Edit", match: :first

    fill_in "Color", with: @car.color
    fill_in "Description", with: @car.description
    fill_in "Km", with: @car.km
    fill_in "Location", with: @car.location
    fill_in "Make", with: @car.make
    fill_in "Model", with: @car.model
    fill_in "Picture", with: @car.picture
    fill_in "Price", with: @car.price
    fill_in "Registration", with: @car.registration
    fill_in "Transmission type", with: @car.transmission_type
    fill_in "Year", with: @car.year
    click_on "Update Car"

    assert_text "Car was successfully updated"
    click_on "Back"
  end

  test "destroying a Car" do
    visit cars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car was successfully destroyed"
  end
end