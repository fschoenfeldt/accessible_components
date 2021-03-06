defmodule AccessibleComponentsWeb.Router do
  use AccessibleComponentsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {AccessibleComponentsWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AccessibleComponentsWeb do
    pipe_through :browser

    # no id so get the first
    live "/", IndexLive, :index
    # get id from parameter and show specific question
    live "/question/:id", IndexLive, :show
    post "/question/:id", QuestionController, :submit_answer
    live "/finished", GoodbyeLive, :index

    # for testing
    live "/list", ListLive, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", AccessibleComponentsWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser

      live_dashboard "/dashboard",
        metrics: AccessibleComponentsWeb.Telemetry,
        ecto_repos: [AccessibleComponents.Repo]
    end
  end
end
