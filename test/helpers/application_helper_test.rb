require 'test_helper'

class ApplicationHeelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, "テラフォーミングマーズ"
    assert_equal full_title("Help"), "Help | テラフォーミングマーズ"
  end
end