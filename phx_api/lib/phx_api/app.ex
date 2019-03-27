defmodule PhxApi.App do
  import Ecto.Query, warn: false

  alias PhxApi.Repo
  alias PhxApi.User

  def list_users do
    Repo.all(User)
  end
end
