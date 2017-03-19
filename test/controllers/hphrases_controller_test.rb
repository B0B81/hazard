require 'test_helper'

class HphrasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hphrase = hphrases(:one)
  end

  test "should get index" do
    get hphrases_url
    assert_response :success
  end

  test "should get new" do
    get new_hphrase_url
    assert_response :success
  end

  test "should create hphrase" do
    assert_difference('Hphrase.count') do
      post hphrases_url, params: { hphrase: {  } }
    end

    assert_redirected_to hphrase_url(Hphrase.last)
  end

  test "should show hphrase" do
    get hphrase_url(@hphrase)
    assert_response :success
  end

  test "should get edit" do
    get edit_hphrase_url(@hphrase)
    assert_response :success
  end

  test "should update hphrase" do
    patch hphrase_url(@hphrase), params: { hphrase: {  } }
    assert_redirected_to hphrase_url(@hphrase)
  end

  test "should destroy hphrase" do
    assert_difference('Hphrase.count', -1) do
      delete hphrase_url(@hphrase)
    end

    assert_redirected_to hphrases_url
  end
end
