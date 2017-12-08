require 'test_helper'

class DictionaryAccessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dictionary_access = dictionary_accesses(:one)
  end

  test "should get index" do
    get dictionary_accesses_url
    assert_response :success
  end

  test "should get new" do
    get new_dictionary_access_url
    assert_response :success
  end

  test "should create dictionary_access" do
    assert_difference('DictionaryAccess.count') do
      post dictionary_accesses_url, params: { dictionary_access: { access_key: @dictionary_access.access_key, information_system_id: @dictionary_access.information_system_id, name: @dictionary_access.name } }
    end

    assert_redirected_to dictionary_access_url(DictionaryAccess.last)
  end

  test "should show dictionary_access" do
    get dictionary_access_url(@dictionary_access)
    assert_response :success
  end

  test "should get edit" do
    get edit_dictionary_access_url(@dictionary_access)
    assert_response :success
  end

  test "should update dictionary_access" do
    patch dictionary_access_url(@dictionary_access), params: { dictionary_access: { access_key: @dictionary_access.access_key, information_system_id: @dictionary_access.information_system_id, name: @dictionary_access.name } }
    assert_redirected_to dictionary_access_url(@dictionary_access)
  end

  test "should destroy dictionary_access" do
    assert_difference('DictionaryAccess.count', -1) do
      delete dictionary_access_url(@dictionary_access)
    end

    assert_redirected_to dictionary_accesses_url
  end
end
