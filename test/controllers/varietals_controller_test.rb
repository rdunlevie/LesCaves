require 'test_helper'

class VarietalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @varietal = varietals(:one)
  end

  test "should get index" do
    get varietals_url
    assert_response :success
  end

  test "should get new" do
    get new_varietal_url
    assert_response :success
  end

  test "should create varietal" do
    assert_difference('Varietal.count') do
      post varietals_url, params: { varietal: { name: @varietal.name, varietal_id: @varietal.varietal_id } }
    end

    assert_redirected_to varietal_url(Varietal.last)
  end

  test "should show varietal" do
    get varietal_url(@varietal)
    assert_response :success
  end

  test "should get edit" do
    get edit_varietal_url(@varietal)
    assert_response :success
  end

  test "should update varietal" do
    patch varietal_url(@varietal), params: { varietal: { name: @varietal.name, varietal_id: @varietal.varietal_id } }
    assert_redirected_to varietal_url(@varietal)
  end

  test "should destroy varietal" do
    assert_difference('Varietal.count', -1) do
      delete varietal_url(@varietal)
    end

    assert_redirected_to varietals_url
  end
end
