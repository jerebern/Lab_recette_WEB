#Jeremy Bernard 11/17/2020
class AcceuilController < ApplicationController
    before_action :get_All_recettes
    def get_All_recettes
        @recettes = Recette.all()

      end
end
