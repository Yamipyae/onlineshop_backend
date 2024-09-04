class UserController < ApplicationController
  before_action :set_user, only: [:destroy]
    def index
        @user = User.all
        render json: @user
    end


    def create
        @user = User.new(user_params)
        if @user.save
          
          render json: @user
        else
          render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
        end
    end
    # DELETE /user/:id
    def destroy
      @user.destroy
      render json: { success:'Successfully Delete'}
    end

    def login
      user = User.find_by(email: user_params[:email])
     
      if user && user.authenticate(user_params[:password])
        render json: user
      else
        render json: { error: 'Invalid email or password' }, status: :unauthorized
      end
    end

    def logout
      @user = User.find_by(id: params[:id])
      User.where(id: @user).update_all(active_status: 0)
      render json: {message: 'Sign Out Successfully'}
    end

      private

      def user_params
        params.require(:user).permit(:name, :email, :password)
      end

      def set_user
        @user = User.find(params[:id])
      end

    end



