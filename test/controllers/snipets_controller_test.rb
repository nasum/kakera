require 'test_helper'

class SnipetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snipet = snipets(:one)
  end

  test "should get index" do
    get snipets_url
    assert_response :success
  end

  test "should create snipet" do
    assert_difference('Snipet.count') do
      post snipets_url, params: { snipet: { name: @snipet.name, sentence: @snipet.sentence, url: @snipet.url } }
    end

    assert_response 201
  end

  test "should show snipet" do
    get snipet_url(@snipet)
    assert_response :success
  end

  test "should update snipet" do
    patch snipet_url(@snipet), params: { snipet: { name: @snipet.name, sentence: @snipet.sentence, url: @snipet.url } }
    assert_response 200
  end

  test "should destroy snipet" do
    assert_difference('Snipet.count', -1) do
      delete snipet_url(@snipet)
    end

    assert_response 204
  end
end
