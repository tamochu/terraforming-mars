require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "Home | テラフォーミングマーズ"
  end
  
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | テラフォーミングマーズ"
  end
end
