#Jeremy Bernard 18/11/2020
class ApplicationController < ActionController::Base

    def get_recettes
        @recettes = current_user.recettes
    end
end
