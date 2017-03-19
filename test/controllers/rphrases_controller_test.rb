require 'test_helper'

class RphrasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rphrase = rphrases(:one)
  end

  test "should get index" do
    get rphrases_url
    assert_response :success
  end

  test "should get new" do
    get new_rphrase_url
    assert_response :success
  end

  test "should create rphrase" do
    assert_difference('Rphrase.count') do
      post rphrases_url, params: { rphrase: {  } }
    end

    assert_redirected_to rphrase_url(Rphrase.last)
  end

  test "should show rphrase" do
    get rphrase_url(@rphrase)
    assert_response :success
  end

  test "should get edit" do
    get edit_rphrase_url(@rphrase)
    assert_response :success
  end

  test "should update rphrase" do
    patch rphrase_url(@rphrase), params: { rphrase: {  } }
    assert_redirected_to rphrase_url(@rphrase)
  end

  test "should destroy rphrase" do
    assert_difference('Rphrase.count', -1) do
      delete rphrase_url(@rphrase)
    end

    assert_redirected_to rphrases_url
  end
end
