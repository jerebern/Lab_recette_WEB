#Jérémy Bernard 11/17/20
class AdminController < ApplicationController
    before_action :is_admin?, :authenticate_user!
    private
    def is_admin?
      unless current_user.email == "jere.bern@hotmail.com"
        redirect_to "/"
      end
    end
  end