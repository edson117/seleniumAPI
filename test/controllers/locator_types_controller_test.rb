require 'test_helper'

class LocatorTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @locator_type = locator_types(:one)
  end

  test "should get index" do
    get locator_types_url, as: :json
    assert_response :success
  end

  test "should create locator_type" do
    assert_difference('LocatorType.count') do
      post locator_types_url, params: { locator_type: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show locator_type" do
    get locator_type_url(@locator_type), as: :json
    assert_response :success
  end

  test "should update locator_type" do
    patch locator_type_url(@locator_type), params: { locator_type: {  } }, as: :json
    assert_response 200
  end

  test "should destroy locator_type" do
    assert_difference('LocatorType.count', -1) do
      delete locator_type_url(@locator_type), as: :json
    end

    assert_response 204
  end
end
