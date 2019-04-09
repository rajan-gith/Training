class WelcomeController < ApplicationController
  def index
    @articles = ["rails", "ror", "gem", "slim"]
  end

  # def about
  # end
  #
  # def contact_us
  # end
end
