require 'test_helper'

class TenThousandDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ten_thousand_day = ten_thousand_days(:one)
  end

  test "should get index" do
    get ten_thousand_days_url
    assert_response :success
  end

  test "should get new" do
    get new_ten_thousand_day_url
    assert_response :success
  end

  test "should create ten_thousand_day" do
    assert_difference('TenThousandDay.count') do
      post ten_thousand_days_url, params: { ten_thousand_day: { body: @ten_thousand_day.body, title: @ten_thousand_day.title } }
    end

    assert_redirected_to ten_thousand_day_url(TenThousandDay.last)
  end

  test "should show ten_thousand_day" do
    get ten_thousand_day_url(@ten_thousand_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_ten_thousand_day_url(@ten_thousand_day)
    assert_response :success
  end

  test "should update ten_thousand_day" do
    patch ten_thousand_day_url(@ten_thousand_day), params: { ten_thousand_day: { body: @ten_thousand_day.body, title: @ten_thousand_day.title } }
    assert_redirected_to ten_thousand_day_url(@ten_thousand_day)
  end

  test "should destroy ten_thousand_day" do
    assert_difference('TenThousandDay.count', -1) do
      delete ten_thousand_day_url(@ten_thousand_day)
    end

    assert_redirected_to ten_thousand_days_url
  end
end
