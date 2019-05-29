require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "haha", email: "8@d.com", password: "diyi", password_digest: "diyi" )
  end
  test "should be valid" do
    assert @user.valid?
  end
  test "should be present" do
    @user.name = "  "
    assert_not @user.valid?
  end
end
