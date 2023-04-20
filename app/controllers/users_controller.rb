class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @prototypes = current_user.prototypes
    @prototype = Prototype.find(params[:id])
  end
end
