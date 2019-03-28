defmodule PhxApiWeb.Router do
  use PhxApiWeb, :router

  pipeline :api do
    plug CORSPlug, origin: "http://localhost:3000"
    plug :accepts, ["json"]
  end

  scope "/", PhxApiWeb do
    pipe_through :api

    options "/", UserController, :index
    get "/", UserController, :index
  end
end
