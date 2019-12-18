class HomeController < ApplicationController
  
  def welcome
  end
  
  before_action :authenticate_user!
  
  def index
  end

end
