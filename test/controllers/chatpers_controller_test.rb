require 'test_helper'

class ChatpersControllerTest < ActionController::TestCase
  setup do
    @chatper = chatpers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chatpers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chatper" do
    assert_difference('Chatper.count') do
      post :create, chatper: { content: @chatper.content, course_id: @chatper.course_id, img: @chatper.img, title: @chatper.title }
    end

    assert_redirected_to chatper_path(assigns(:chatper))
  end

  test "should show chatper" do
    get :show, id: @chatper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chatper
    assert_response :success
  end

  test "should update chatper" do
    patch :update, id: @chatper, chatper: { content: @chatper.content, course_id: @chatper.course_id, img: @chatper.img, title: @chatper.title }
    assert_redirected_to chatper_path(assigns(:chatper))
  end

  test "should destroy chatper" do
    assert_difference('Chatper.count', -1) do
      delete :destroy, id: @chatper
    end

    assert_redirected_to chatpers_path
  end
end
