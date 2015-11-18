require 'test_helper'

class LineItemagainsControllerTest < ActionController::TestCase
  setup do
    @line_itemagain = line_itemagains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_itemagains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_itemagain" do
    assert_difference('LineItemagain.count') do
      post :create, line_itemagain: { gear_id: @line_itemagain.gear_id, student_id: @line_itemagain.student_id }
    end

    assert_redirected_to line_itemagain_path(assigns(:line_itemagain))
  end

  test "should show line_itemagain" do
    get :show, id: @line_itemagain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_itemagain
    assert_response :success
  end

  test "should update line_itemagain" do
    patch :update, id: @line_itemagain, line_itemagain: { gear_id: @line_itemagain.gear_id, student_id: @line_itemagain.student_id }
    assert_redirected_to line_itemagain_path(assigns(:line_itemagain))
  end

  test "should destroy line_itemagain" do
    assert_difference('LineItemagain.count', -1) do
      delete :destroy, id: @line_itemagain
    end

    assert_redirected_to line_itemagains_path
  end
end
