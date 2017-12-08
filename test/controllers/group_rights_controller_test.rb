require 'test_helper'

class GroupRightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_right = group_rights(:one)
  end

  test "should get index" do
    get group_rights_url
    assert_response :success
  end

  test "should get new" do
    get new_group_right_url
    assert_response :success
  end

  test "should create group_right" do
    assert_difference('GroupRight.count') do
      post group_rights_url, params: { group_right: { group_name: @group_right.group_name, information_system_id: @group_right.information_system_id, parameter: @group_right.parameter } }
    end

    assert_redirected_to group_right_url(GroupRight.last)
  end

  test "should show group_right" do
    get group_right_url(@group_right)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_right_url(@group_right)
    assert_response :success
  end

  test "should update group_right" do
    patch group_right_url(@group_right), params: { group_right: { group_name: @group_right.group_name, information_system_id: @group_right.information_system_id, parameter: @group_right.parameter } }
    assert_redirected_to group_right_url(@group_right)
  end

  test "should destroy group_right" do
    assert_difference('GroupRight.count', -1) do
      delete group_right_url(@group_right)
    end

    assert_redirected_to group_rights_url
  end
end
