class WelcomeController < ApplicationController
  def index
    redirect_to mountains_path
  end
end
