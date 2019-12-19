class HomeController < ApplicationController
    before_action :authenticate_user!
    def index
        @user = current_user
        redirect_to cars_path
    end
end