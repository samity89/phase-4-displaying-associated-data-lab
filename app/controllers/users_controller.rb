class UsersController < ApplicationController

    def show
        user = find_user
        render json: user, include: :items
    end

    private

    def find_user
        User.find_by(id: params[:id])
    end
end
