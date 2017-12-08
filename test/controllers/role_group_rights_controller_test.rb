require 'test_helper'

class RoleGroupRightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @role_group_right = role_group_rights(:one)
  end

  test "should get index" do
    get role_group_rights_url
    assert_response :success
  end

  test "should get new" do
    get new_role_group_right_url
    assert_response :success
  end

  test "should create role_group_right" do
    assert_difference('RoleGroupRight.count') do
      post role_group_rights_url, params: { role_group_right: { group_right_id: @role_group_right.group_right_id, parameter: @role_group_right.parameter, role_id: @role_group_right.role_id } }
    end

    assert_redirected_to role_group_right_url(RoleGroupRight.last)
  end

  test "should show role_group_right" do
    get role_group_right_url(@role_group_right)
    assert_response :success
  end

  test "should get edit" do
    get edit_role_group_right_url(@role_group_right)
    assert_response :success
  end

  test "should update role_group_right" do
    patch role_group_right_url(@role_group_right), params: { role_group_right: { group_right_id: @role_group_right.group_right_id, parameter: @role_group_right.parameter, role_id: @role_group_right.role_id } }
    assert_redirected_to role_group_right_url(@role_group_right)
  end

  test "should destroy role_group_right" do
    assert_difference('RoleGroupRight.count', -1) do
      delete role_group_right_url(@role_group_right)
    end

    assert_redirected_to role_group_rights_url
  end
end
