require 'test_helper'

class OrangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orange = oranges(:one)
  end

  test "should get index" do
    get oranges_url, as: :json
    assert_response :success
  end

  test "should create orange" do
    assert_difference('Orange.count') do
      post oranges_url, params: { orange: { color: @orange.color } }, as: :json
    end

    assert_response 201
  end

  test "should show orange" do
    get orange_url(@orange), as: :json
    assert_response :success
  end

  test "should update orange" do
    patch orange_url(@orange), params: { orange: { color: @orange.color } }, as: :json
    assert_response 200
  end

  test "should destroy orange" do
    assert_difference('Orange.count', -1) do
      delete orange_url(@orange), as: :json
    end

    assert_response 204
  end
end
