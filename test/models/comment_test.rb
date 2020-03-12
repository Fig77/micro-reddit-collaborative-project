require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: 'Facundo Iglesias')
    @user.save
    @post = Post.new(idUser: @user.id, post: 'Hello world')
    @post.save
    @comment = Comment.new(idUser: @user.id, idPost: @post.id, content: 'this is a post')
  end

  test 'is a valid user' do
    assert @comment.valid?
  end

  test 'comment must have a valid user' do
    @comment.idUser = nil
    assert_not @comment.valid?
  end

  test 'comment must have a valid post' do
    @comment.idPost = nil
    assert_not @comment.valid?
  end

  test 'comment must have a content' do
    @comment.content = nil
    assert_not @comment.valid?
  end

  test 'comment must be under 144 characters ' do
    @comment.content = 't' * 145
    assert_not @comment.valid?
  end
end
