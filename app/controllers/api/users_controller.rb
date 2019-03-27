class Api::UsersController < Api::BaseController
  def index
    users = User.all
    render json: users, each_serializer: Api::UsersSerializer, status: :ok
  end
end
