require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @user = User.new('Facundo Iglesias')
    @user.save
    @post = Post.new(idUser:@user.idUser, post:'Hello world')
    @post.save
    @comment = Comment.new(idUser:@user.idUser, idPost:@post.idPost, content:'this is a good post')
    @comment.save
  end

  test 'comment is valid' do
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
