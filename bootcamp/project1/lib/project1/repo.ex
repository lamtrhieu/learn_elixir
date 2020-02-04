defmodule Project1.Repo do
  use Ecto.Repo,
    otp_app: :project1,
    adapter: Ecto.Adapters.Postgres
end
