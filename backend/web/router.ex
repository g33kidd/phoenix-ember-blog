defmodule Backend.Router do
  use Backend.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  # Other scopes may use custom stacks.
  scope "/api", Backend do
    pipe_through :api

    resources "/posts", PostController, except: [:new, :edit]
  end
end
