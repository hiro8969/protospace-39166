class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
    # @prototypes = Prototype.find(params[:id])
  end
end
