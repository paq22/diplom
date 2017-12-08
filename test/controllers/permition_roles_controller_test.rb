require 'test_helper'

class PermitionRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @permition_role = permition_roles(:one)
  end

  test "should get index" do
    get permition_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_permition_role_url
    assert_response :success
  end

  test "should create permition_role" do
    assert_difference('PermitionRole.count') do
      post permition_roles_url, params: { permition_role: { parameter: @permition_role.parameter, permition_id: @permition_role.permition_id, role_id: @permition_role.role_id } }
    end

    assert_redirected_to permition_role_url(PermitionRole.last)
  end

  test "should show permition_role" do
    get permition_role_url(@permition_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_permition_role_url(@permition_role)
    assert_response :success
  end

  test "should update permition_role" do
    patch permition_role_url(@permition_role), params: { permition_role: { parameter: @permition_role.parameter, permition_id: @permition_role.permition_id, role_id: @permition_role.role_id } }
    assert_redirected_to permition_role_url(@permition_role)
  end

  test "should destroy permition_role" do
    assert_difference('PermitionRole.count', -1) do
      delete permition_role_url(@permition_role)
    end

    assert_redirected_to permition_roles_url
  end
end
