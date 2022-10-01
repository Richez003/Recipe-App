# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.all
    @current_user = current_user
  end

  def show; end
end
