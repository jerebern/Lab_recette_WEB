#Jeremy Bernard 18/11/2020

class RecettesController < ApplicationController
    before_action :authenticate_user! , :get_recettes

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

    def create
        # Securite lors d'une assignation de masse, on filtre les paramètres authoriser avant de les envoyer au modèle qui gère la base de données
        # Voir fonction privé de ce controlleur
        #post_params = params.require(:post).permit(:title, :body)

        @recette = current_user.recettes.new(recette_params)
        
        respond_to do |format|    
          if @recette.save # Si la sauvegarde se passe bien, on redirige vers l'action index_5 pour rafraichir le formulaire
            format.html {redirect_to '/mesrecettes'}
          else
            format.html {redirect_to '/recettes/new' } # Si une erreur arrive, on l'affiche sur le formulaire d'origine
          end
          # Si utilisation en javascript
          format.json { render :json => @recette.to_json }
          format.xml { render :xml => @recette.as_json.to_xml }
        end
    end

    private
    def recette_params
        params.require(:recette).permit(:titre, :etapes)
    end
end