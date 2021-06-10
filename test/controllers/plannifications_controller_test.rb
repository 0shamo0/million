require "test_helper"

class PlannificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plannification = plannifications(:one)
  end

  test "should get index" do
    get plannifications_url
    assert_response :success
  end

  test "should get new" do
    get new_plannification_url
    assert_response :success
  end

  test "should create plannification" do
    assert_difference('Plannification.count') do
      post plannifications_url, params: { plannification: { date: @plannification.date, etat: @plannification.etat, localisation: @plannification.localisation } }
    end

    assert_redirected_to plannification_url(Plannification.last)
  end

  test "should show plannification" do
    get plannification_url(@plannification)
    assert_response :success
  end

  test "should get edit" do
    get edit_plannification_url(@plannification)
    assert_response :success
  end

  test "should update plannification" do
    patch plannification_url(@plannification), params: { plannification: { date: @plannification.date, etat: @plannification.etat, localisation: @plannification.localisation } }
    assert_redirected_to plannification_url(@plannification)
  end

  test "should destroy plannification" do
    assert_difference('Plannification.count', -1) do
      delete plannification_url(@plannification)
    end

    assert_redirected_to plannifications_url
  end
end
