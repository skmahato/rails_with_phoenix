defmodule PhxApiWeb.Router do
  use PhxApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhxApiWeb do
    pipe_through :api

    get "/", UserController, :index
  end
end
