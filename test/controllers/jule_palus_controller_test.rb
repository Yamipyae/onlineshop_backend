require "test_helper"

class JulePalusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jule_palu = jule_palus(:one)
  end

  test "should get index" do
    get jule_palus_url, as: :json
    assert_response :success
  end

  test "should create jule_palu" do
    assert_difference("JulePalu.count") do
      post jule_palus_url, params: { jule_palu: { image: @jule_palu.image, name: @jule_palu.name, price: @jule_palu.price, stock: @jule_palu.stock } }, as: :json
    end

    assert_response :created
  end

  test "should show jule_palu" do
    get jule_palu_url(@jule_palu), as: :json
    assert_response :success
  end

  test "should update jule_palu" do
    patch jule_palu_url(@jule_palu), params: { jule_palu: { image: @jule_palu.image, name: @jule_palu.name, price: @jule_palu.price, stock: @jule_palu.stock } }, as: :json
    assert_response :success
  end

  test "should destroy jule_palu" do
    assert_difference("JulePalu.count", -1) do
      delete jule_palu_url(@jule_palu), as: :json
    end

    assert_response :no_content
  end
end
