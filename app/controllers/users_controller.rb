class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    # @prototypes = current_user.prototypes
    @prototypes = Prototype.find(params[:id])
end
