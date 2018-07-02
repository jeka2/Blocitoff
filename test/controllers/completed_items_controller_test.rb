require 'test_helper'

class CompletedItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get completed_items_destroy_url
    assert_response :success
  end

end
