require "test_helper"

class HangoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hangout = hangouts(:one)
  end

  test "should get index" do
    get hangouts_url
    assert_response :success
  end

  test "should get new" do
    get new_hangout_url
    assert_response :success
  end

  test "should create hangout" do
    assert_difference("Hangout.count") do
      post hangouts_url, params: { hangout: { creator_id: @hangout.creator_id, date: @hangout.date, time: @hangout.time } }
    end

    assert_redirected_to hangout_url(Hangout.last)
  end

  test "should show hangout" do
    get hangout_url(@hangout)
    assert_response :success
  end

  test "should get edit" do
    get edit_hangout_url(@hangout)
    assert_response :success
  end

  test "should update hangout" do
    patch hangout_url(@hangout), params: { hangout: { creator_id: @hangout.creator_id, date: @hangout.date, time: @hangout.time } }
    assert_redirected_to hangout_url(@hangout)
  end

  test "should destroy hangout" do
    assert_difference("Hangout.count", -1) do
      delete hangout_url(@hangout)
    end

    assert_redirected_to hangouts_url
  end
end
