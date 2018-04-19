# frozen_string_literal: true

# User controller class
class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def show
    @user = User.find(params[:id])
  end
end
