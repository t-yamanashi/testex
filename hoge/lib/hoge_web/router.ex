defmodule HogeWeb.Router do
  use HogeWeb, :router

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

  scope "/api/rest/", HogeWeb do
    pipe_through :api

    get "/*path_", RestApiController, :index
    post "/*path_", RestApiController, :create
    put "/*path_", RestApiController, :update
    delete "/*path_", RestApiController, :delete
  end

  scope "/api/", HogeWeb do
    pipe_through :api

    get "/*path_", ApiController, :index
    post "/*path_", ApiController, :index
    put "/*path_", ApiController, :index
    delete "/*path_", ApiController, :index
  end

  scope "/", HogeWeb do
    pipe_through :browser

    get "/*path_", PageController, :index
    post "/*path_", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", HogeWeb do
  #   pipe_through :api
  # end
end
