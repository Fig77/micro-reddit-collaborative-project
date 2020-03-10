require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'Facundo Iglesias')
  end

  test 'is a valid user' do
    assert @user.valid?
  end

  test 'name required' do
    @user.name = nil
    assert_not @user.valid?
  end

  test 'length needs to be less than 45' do
    @user.name = 'Facundo' * 45
    assert_not @user.valid?
  end
end
