require 'test_helper'

class NeighboursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @neighbour = neighbours(:one)
  end

  test "should get index" do
    get neighbours_url
    assert_response :success
  end

  test "should get new" do
    get new_neighbour_url
    assert_response :success
  end

  test "should create neighbour" do
    assert_difference('Neighbour.count') do
      post neighbours_url, params: { neighbour: { about: @neighbour.about, address: @neighbour.address, name: @neighbour.name, phone: @neighbour.phone } }
    end

    assert_redirected_to neighbour_url(Neighbour.last)
  end

  test "should show neighbour" do
    get neighbour_url(@neighbour)
    assert_response :success
  end

  test "should get edit" do
    get edit_neighbour_url(@neighbour)
    assert_response :success
  end

  test "should update neighbour" do
    patch neighbour_url(@neighbour), params: { neighbour: { about: @neighbour.about, address: @neighbour.address, name: @neighbour.name, phone: @neighbour.phone } }
    assert_redirected_to neighbour_url(@neighbour)
  end

  test "should destroy neighbour" do
    assert_difference('Neighbour.count', -1) do
      delete neighbour_url(@neighbour)
    end

    assert_redirected_to neighbours_url
  end
end
