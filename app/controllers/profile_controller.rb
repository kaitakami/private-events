class ProfileController < ApplicationController
  def index
    @user = current_user
    render
  end
end
