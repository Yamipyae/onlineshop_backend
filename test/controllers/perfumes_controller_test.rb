require "test_helper"

class PerfumesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perfume = perfumes(:one)
  end

  test "should get index" do
    get perfumes_url, as: :json
    assert_response :success
  end

  test "should create perfume" do
    assert_difference("Perfume.count") do
      post perfumes_url, params: { perfume: { image: @perfume.image, name: @perfume.name, price: @perfume.price, stock: @perfume.stock } }, as: :json
    end

    assert_response :created
  end

  test "should show perfume" do
    get perfume_url(@perfume), as: :json
    assert_response :success
  end

  test "should update perfume" do
    patch perfume_url(@perfume), params: { perfume: { image: @perfume.image, name: @perfume.name, price: @perfume.price, stock: @perfume.stock } }, as: :json
    assert_response :success
  end

  test "should destroy perfume" do
    assert_difference("Perfume.count", -1) do
      delete perfume_url(@perfume), as: :json
    end

    assert_response :no_content
  end
end
