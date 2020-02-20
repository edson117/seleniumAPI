require 'test_helper'

class TestsetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testset = testsets(:one)
  end

  test "should get index" do
    get testsets_url, as: :json
    assert_response :success
  end

  test "should create testset" do
    assert_difference('Testset.count') do
      post testsets_url, params: { testset: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show testset" do
    get testset_url(@testset), as: :json
    assert_response :success
  end

  test "should update testset" do
    patch testset_url(@testset), params: { testset: {  } }, as: :json
    assert_response 200
  end

  test "should destroy testset" do
    assert_difference('Testset.count', -1) do
      delete testset_url(@testset), as: :json
    end

    assert_response 204
  end
end
