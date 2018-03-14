require 'test_helper'

class ModeratorControllerTest < ActionDispatch::IntegrationTest
  test "should get load_term_data_from_json" do
    get moderator_load_term_data_from_json_url
    assert_response :success
  end

  test "should get load_term_data_from_json_commit" do
    get moderator_load_term_data_from_json_commit_url
    assert_response :success
  end

end
