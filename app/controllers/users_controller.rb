class UsersController < ApplicationController
  def create
    User.create(params.permit('email', 'password'))
  end
end
