class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(post)
    @post = post
    @user = post.user
    @url  = 'http://example.com/login'
    mail(to: 'gladsquid@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end

