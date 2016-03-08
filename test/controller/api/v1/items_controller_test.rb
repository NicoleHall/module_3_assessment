require 'test_helper'


class Api::V1::ItemsControllerTest < ActionController::TestCase

  test '#index' do
    create_two_items
    get :index, format: :json
    assert_response :success
  end

  test '#show' do
    create_two_items
    get :show, format: :json, id: 1
    assert_response :success
  end

  test '#destr' do
    create_two_items
    delete :show, format: :json, id: 1
    assert_response :no_content
  end

end
