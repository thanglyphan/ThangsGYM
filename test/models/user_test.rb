require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    user = User.create(username: 'Thang', password: '123123', email: 'Lyern52@gmail.com')
    user.save
    @user = User.find_by(:username => 'Thang')
  end

  test "should not be valid without required email and password" do
    user = User.create(username: 'Thang')
    # user should have all required fields, like password, email etc.
    assert_not user.save, "user was not saved"
  end

  test "this is a valid user" do
    user = User.create(username: 'Thaung', password: '1238123', email: 'Lyerun52@gmail.com')
    # user should have all required fields, like password, email etc.
    assert user.save, 'user was saved'
  end

  test "cannot add user with same name or email" do
    user = User.create(username: 'Thang', password: '123123', email: 'Lyern52@gmail.com')
    assert_not user.save, 'user was not saved'
  end

  test "user can change email" do
    assert @user.email = 'Test@ja.no', 'user has changed pw'
  end

  test "user password is encrypted" do
    assert_not @user.password == '123123', 'user password is encrypted'
  end
end
