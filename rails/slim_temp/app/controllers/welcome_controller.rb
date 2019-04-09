class WelcomeController < ApplicationController
  def index
    @articles = ["rails", "ror", "gem", "slim"]
    @posts = Post.all
    @post = Post.new
  end

  # def about
  # end
  #
  # def contact_us
  # end
end
