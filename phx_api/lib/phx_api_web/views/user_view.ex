defmodule PhxApiWeb.UserView do
  use PhxApiWeb, :view
  alias PhxApiWeb.UserView

  def render("index.json", %{users: users}) do
    render_many(users, UserView, "users.json")
  end

  def render("users.json", %{user: user}) do
    %{
      name: user.name,
      email: user.email,
      id: user.id
    }
  end
end
