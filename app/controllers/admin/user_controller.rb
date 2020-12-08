#Jeremy Bernard 18/11/2020

class Admin::UserController < AdminController
    before_action :get_user
    def get_user
        @users = User.joins(:recettes).distinct
    end

    def show
        respond_to do |format|
            format.html{render 'admin/show'}
            format.json
            format.xml
        end   
    end
end