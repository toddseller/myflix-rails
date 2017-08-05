class WelcomeController < ApplicationController
  layout 'no_nav'
  def index
    render 'welcome/index'
  end
end
