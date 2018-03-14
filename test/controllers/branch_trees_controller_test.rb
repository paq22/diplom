require 'test_helper'

class BranchTreesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @branch_tree = branch_trees(:one)
  end

  test "should get index" do
    get branch_trees_url
    assert_response :success
  end

  test "should get new" do
    get new_branch_tree_url
    assert_response :success
  end

  test "should create branch_tree" do
    assert_difference('BranchTree.count') do
      post branch_trees_url, params: { branch_tree: { address: @branch_tree.address, branch_tree_id: @branch_tree.branch_tree_id, digital_name: @branch_tree.digital_name, full_name: @branch_tree.full_name, level: @branch_tree.level, name: @branch_tree.name } }
    end

    assert_redirected_to branch_tree_url(BranchTree.last)
  end

  test "should show branch_tree" do
    get branch_tree_url(@branch_tree)
    assert_response :success
  end

  test "should get edit" do
    get edit_branch_tree_url(@branch_tree)
    assert_response :success
  end

  test "should update branch_tree" do
    patch branch_tree_url(@branch_tree), params: { branch_tree: { address: @branch_tree.address, branch_tree_id: @branch_tree.branch_tree_id, digital_name: @branch_tree.digital_name, full_name: @branch_tree.full_name, level: @branch_tree.level, name: @branch_tree.name } }
    assert_redirected_to branch_tree_url(@branch_tree)
  end

  test "should destroy branch_tree" do
    assert_difference('BranchTree.count', -1) do
      delete branch_tree_url(@branch_tree)
    end

    assert_redirected_to branch_trees_url
  end
end
