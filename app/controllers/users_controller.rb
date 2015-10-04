class UsersController < ApplicationController

    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params) ## Invoke user_params method
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_url, notice: 'User was successfully created.' 
        else
            render action: 'new'
        end       
    end

    private
    ## Strong Parameters 
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
