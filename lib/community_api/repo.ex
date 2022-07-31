defmodule CommunityApi.Repo do
  use Ecto.Repo,
    otp_app: :community_api,
    adapter: Ecto.Adapters.Postgres
end
