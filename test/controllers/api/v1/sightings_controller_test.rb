require 'test_helper'

class Api::V1::SightingsControllerTest < ActionDispatch::IntegrationTest
  test "should get location:string" do
    get api_v1_sightings_location:string_url
    assert_response :success
  end

  test "should get description:text" do
    get api_v1_sightings_description:text_url
    assert_response :success
  end

  test "should get photo:string" do
    get api_v1_sightings_photo:string_url
    assert_response :success
  end

  test "should get user_id:integer" do
    get api_v1_sightings_user_id:integer_url
    assert_response :success
  end

end
