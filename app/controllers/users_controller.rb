class UsersController < ApplicationController
  def destroy
    @u = User.find_by_id(params[:id])
    @u.destroy

    respond_to do |format|
      format.html { redirect_to messages_url }
    end
  end
end
