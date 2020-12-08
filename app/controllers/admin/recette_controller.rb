#Jeremy Bernard 18/11/2020

class Admin::RecetteController < AdminController
    before_action :get_recette_id

    def recette
        respond_to do |format|
            format.html{render 'admin/recette'}
            format.json
            format.xml
        end 
    end  
end