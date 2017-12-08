require 'test_helper'

class RightGroupPermitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @right_group_permition = right_group_permitions(:one)
  end

  test "should get index" do
    get right_group_permitions_url
    assert_response :success
  end

  test "should get new" do
    get new_right_group_permition_url
    assert_response :success
  end

  test "should create right_group_permition" do
    assert_difference('RightGroupPermition.count') do
      post right_group_permitions_url, params: { right_group_permition: { group_right_id: @right_group_permition.group_right_id, parameter: @right_group_permition.parameter, permition_id: @right_group_permition.permition_id } }
    end

    assert_redirected_to right_group_permition_url(RightGroupPermition.last)
  end

  test "should show right_group_permition" do
    get right_group_permition_url(@right_group_permition)
    assert_response :success
  end

  test "should get edit" do
    get edit_right_group_permition_url(@right_group_permition)
    assert_response :success
  end

  test "should update right_group_permition" do
    patch right_group_permition_url(@right_group_permition), params: { right_group_permition: { group_right_id: @right_group_permition.group_right_id, parameter: @right_group_permition.parameter, permition_id: @right_group_permition.permition_id } }
    assert_redirected_to right_group_permition_url(@right_group_permition)
  end

  test "should destroy right_group_permition" do
    assert_difference('RightGroupPermition.count', -1) do
      delete right_group_permition_url(@right_group_permition)
    end

    assert_redirected_to right_group_permitions_url
  end
end
