require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'Facundo Iglesias')
    @user.save
    @post = Post.new(post: 'Hello World!', idUser: @user.id)
  end

  test 'is a valid user' do
    assert @post.valid?
  end

  test 'length needs to be less than 255' do
    @post.post = '1' * 256
    assert_not @post.valid?
  end

  test 'if no user given' do
    @post.post = 'Hello World!'
    @post.idUser = nil
    assert_not @post.valid?
  end
end
