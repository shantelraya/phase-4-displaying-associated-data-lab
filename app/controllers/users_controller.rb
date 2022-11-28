class UsersController < ApplicationController
    def show 
        user = User.find(params[:id])
        render json: user, include: :items
    end

    private
    
    def render_not_found_response
        render json: { error: "User not found" }, status: :render_not_found
    end
end
