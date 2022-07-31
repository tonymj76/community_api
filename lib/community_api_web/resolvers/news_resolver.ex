defmodule CommunityApiWeb.Resolvers.NewsResolver do
  alias CommunityApi.News

  def all_links(_roots, _args, _info) do
    {:ok, News.list_links()}
  end
end
