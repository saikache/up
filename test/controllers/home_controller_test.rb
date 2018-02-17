require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get contact" do
    get home_contact_url
    assert_response :success
  end

  test "should get about" do
    get home_about_url
    assert_response :success
  end

  test "should get get_a_quote" do
    get home_get_a_quote_url
    assert_response :success
  end

  test "should get be_a_partner" do
    get home_be_a_partner_url
    assert_response :success
  end

end
