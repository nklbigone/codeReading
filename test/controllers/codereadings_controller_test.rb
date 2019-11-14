require 'test_helper'

class CodereadingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @codereading = codereadings(:one)
  end

  test "should get index" do
    get codereadings_url
    assert_response :success
  end

  test "should get new" do
    get new_codereading_url
    assert_response :success
  end

  test "should create codereading" do
    assert_difference('Codereading.count') do
      post codereadings_url, params: { codereading: { content: @codereading.content, title: @codereading.title } }
    end

    assert_redirected_to codereading_url(Codereading.last)
  end

  test "should show codereading" do
    get codereading_url(@codereading)
    assert_response :success
  end

  test "should get edit" do
    get edit_codereading_url(@codereading)
    assert_response :success
  end

  test "should update codereading" do
    patch codereading_url(@codereading), params: { codereading: { content: @codereading.content, title: @codereading.title } }
    assert_redirected_to codereading_url(@codereading)
  end

  test "should destroy codereading" do
    assert_difference('Codereading.count', -1) do
      delete codereading_url(@codereading)
    end

    assert_redirected_to codereadings_url
  end
end
