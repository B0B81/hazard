require 'test_helper'

class GhsSymbolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ghs_symbol = ghs_symbols(:one)
  end

  test "should get index" do
    get ghs_symbols_url
    assert_response :success
  end

  test "should get new" do
    get new_ghs_symbol_url
    assert_response :success
  end

  test "should create ghs_symbol" do
    assert_difference('GhsSymbol.count') do
      post ghs_symbols_url, params: { ghs_symbol: { code: @ghs_symbol.code, description: @ghs_symbol.description, handling: @ghs_symbol.handling, image: @ghs_symbol.image, string: @ghs_symbol.string, title: @ghs_symbol.title } }
    end

    assert_redirected_to ghs_symbol_url(GhsSymbol.last)
  end

  test "should show ghs_symbol" do
    get ghs_symbol_url(@ghs_symbol)
    assert_response :success
  end

  test "should get edit" do
    get edit_ghs_symbol_url(@ghs_symbol)
    assert_response :success
  end

  test "should update ghs_symbol" do
    patch ghs_symbol_url(@ghs_symbol), params: { ghs_symbol: { code: @ghs_symbol.code, description: @ghs_symbol.description, handling: @ghs_symbol.handling, image: @ghs_symbol.image, string: @ghs_symbol.string, title: @ghs_symbol.title } }
    assert_redirected_to ghs_symbol_url(@ghs_symbol)
  end

  test "should destroy ghs_symbol" do
    assert_difference('GhsSymbol.count', -1) do
      delete ghs_symbol_url(@ghs_symbol)
    end

    assert_redirected_to ghs_symbols_url
  end
end
