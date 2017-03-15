require 'test_helper'

class SubVineyardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_vineyard = sub_vineyards(:one)
  end

  test "should get index" do
    get sub_vineyards_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_vineyard_url
    assert_response :success
  end

  test "should create sub_vineyard" do
    assert_difference('SubVineyard.count') do
      post sub_vineyards_url, params: { sub_vineyard: { name: @sub_vineyard.name, sub_vineyard_id: @sub_vineyard.sub_vineyard_id, vineyard_id: @sub_vineyard.vineyard_id } }
    end

    assert_redirected_to sub_vineyard_url(SubVineyard.last)
  end

  test "should show sub_vineyard" do
    get sub_vineyard_url(@sub_vineyard)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_vineyard_url(@sub_vineyard)
    assert_response :success
  end

  test "should update sub_vineyard" do
    patch sub_vineyard_url(@sub_vineyard), params: { sub_vineyard: { name: @sub_vineyard.name, sub_vineyard_id: @sub_vineyard.sub_vineyard_id, vineyard_id: @sub_vineyard.vineyard_id } }
    assert_redirected_to sub_vineyard_url(@sub_vineyard)
  end

  test "should destroy sub_vineyard" do
    assert_difference('SubVineyard.count', -1) do
      delete sub_vineyard_url(@sub_vineyard)
    end

    assert_redirected_to sub_vineyards_url
  end
end
