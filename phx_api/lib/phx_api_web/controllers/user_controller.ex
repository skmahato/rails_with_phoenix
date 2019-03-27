defmodule PhxApiWeb.UserController do
  use PhxApiWeb, :controller

  alias PhxApi.App

  def index(conn, _params) do
    users = App.list_users()
    render(conn, "index.json", users: users)
  end
end
