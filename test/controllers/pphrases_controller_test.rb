require 'test_helper'

class PphrasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pphrase = pphrases(:one)
  end

  test "should get index" do
    get pphrases_url
    assert_response :success
  end

  test "should get new" do
    get new_pphrase_url
    assert_response :success
  end

  test "should create pphrase" do
    assert_difference('Pphrase.count') do
      post pphrases_url, params: { pphrase: {  } }
    end

    assert_redirected_to pphrase_url(Pphrase.last)
  end

  test "should show pphrase" do
    get pphrase_url(@pphrase)
    assert_response :success
  end

  test "should get edit" do
    get edit_pphrase_url(@pphrase)
    assert_response :success
  end

  test "should update pphrase" do
    patch pphrase_url(@pphrase), params: { pphrase: {  } }
    assert_redirected_to pphrase_url(@pphrase)
  end

  test "should destroy pphrase" do
    assert_difference('Pphrase.count', -1) do
      delete pphrase_url(@pphrase)
    end

    assert_redirected_to pphrases_url
  end
end
