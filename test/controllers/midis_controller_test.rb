require 'test_helper'

class MidisControllerTest < ActionController::TestCase
  setup do
    @midi = midis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:midis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create midi" do
    assert_difference('Midi.count') do
      post :create, midi: { author: @midi.author, title: @midi.title }
    end

    assert_redirected_to midi_path(assigns(:midi))
  end

  test "should show midi" do
    get :show, id: @midi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @midi
    assert_response :success
  end

  test "should update midi" do
    patch :update, id: @midi, midi: { author: @midi.author, title: @midi.title }
    assert_redirected_to midi_path(assigns(:midi))
  end

  test "should destroy midi" do
    assert_difference('Midi.count', -1) do
      delete :destroy, id: @midi
    end

    assert_redirected_to midis_path
  end
end
