#Jeremy Bernard 18/11/2020

class RecettesController < ApplicationController
    before_action :authenticate_user!, :get_recettes

    def show
        respond_to do |format|
            format.html{render 'recettes/show'}
            format.json{render 'recettes/show.json'}
            format.xml{render 'recettes/show.xml'}

        end
    end
    def test
        respond_to do |format|
            format.html{render 'recettes/test'}
        end
    end
    def new
        @recette = Recette.new
    end
end