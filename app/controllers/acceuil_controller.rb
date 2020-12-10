#Jeremy Bernard 11/17/2020
class AcceuilController < ApplicationController
    before_action :authenticate_user! , :get_recettes
end
