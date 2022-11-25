class ProfileController < ApplicationController
  def index
    @user = current_user
    @events = Event.where(id: current_user.id)
    render
  end
end
