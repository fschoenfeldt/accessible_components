defmodule AccessibleComponents.Repo do
  use Ecto.Repo,
    otp_app: :accessible_components,
    adapter: Ecto.Adapters.Postgres
end
