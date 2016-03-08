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

  test '#destroy' do
    assert_difference 'Item.count', 2 do
    create_two_items
    delete :show, format: :json, id: 1
    assert_response :no_content
  end
  end

  test '#create adds a new item to database' do
    assert_difference 'Item.count', 1 do
      item = {:name => "socks", :description => "fuzzy", :image_url => "png.png"}
      post :create, format: :json, item: item
      assert_response :created
    end
  end


end
