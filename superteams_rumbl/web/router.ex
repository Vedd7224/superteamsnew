defmodule SuperteamsRumbl.Router do
  use SuperteamsRumbl.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SuperteamsRumbl do
    pipe_through :browser
    get "/users",     UserController, :index
    get "/users/:id", UserController, :show
    get "/", PageController, :index
  end
end
