#Jérémy Bernard 11/17/20
class AdminController < ApplicationController
    before_action :is_admin?, :authenticate_user!
    private
    def get_recettes_id
      @recettes = Recette.find(params[:id])
    end
    def is_admin?
      unless current_user.admin == true
        redirect_to "/"
      end
    end
  end