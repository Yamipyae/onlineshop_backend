require "test_helper"

class DiorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dior = diors(:one)
  end

  test "should get index" do
    get diors_url, as: :json
    assert_response :success
  end

  test "should create dior" do
    assert_difference("Dior.count") do
      post diors_url, params: { dior: { image: @dior.image, name: @dior.name, price: @dior.price, stock: @dior.stock } }, as: :json
    end

    assert_response :created
  end

  test "should show dior" do
    get dior_url(@dior), as: :json
    assert_response :success
  end

  test "should update dior" do
    patch dior_url(@dior), params: { dior: { image: @dior.image, name: @dior.name, price: @dior.price, stock: @dior.stock } }, as: :json
    assert_response :success
  end

  test "should destroy dior" do
    assert_difference("Dior.count", -1) do
      delete dior_url(@dior), as: :json
    end

    assert_response :no_content
  end
end
