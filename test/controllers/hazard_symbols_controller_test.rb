require 'test_helper'

class HazardSymbolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hazard_symbol = hazard_symbols(:one)
  end

  test "should get index" do
    get hazard_symbols_url
    assert_response :success
  end

  test "should get new" do
    get new_hazard_symbol_url
    assert_response :success
  end

  test "should create hazard_symbol" do
    assert_difference('HazardSymbol.count') do
      post hazard_symbols_url, params: { hazard_symbol: { image: @hazard_symbol.image, title: @hazard_symbol.title } }
    end

    assert_redirected_to hazard_symbol_url(HazardSymbol.last)
  end

  test "should show hazard_symbol" do
    get hazard_symbol_url(@hazard_symbol)
    assert_response :success
  end

  test "should get edit" do
    get edit_hazard_symbol_url(@hazard_symbol)
    assert_response :success
  end

  test "should update hazard_symbol" do
    patch hazard_symbol_url(@hazard_symbol), params: { hazard_symbol: { image: @hazard_symbol.image, title: @hazard_symbol.title } }
    assert_redirected_to hazard_symbol_url(@hazard_symbol)
  end

  test "should destroy hazard_symbol" do
    assert_difference('HazardSymbol.count', -1) do
      delete hazard_symbol_url(@hazard_symbol)
    end

    assert_redirected_to hazard_symbols_url
  end
end
