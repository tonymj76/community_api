defmodule CommunityApi.NewsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `CommunityApi.News` context.
  """

  @doc """
  Generate a link.
  """
  def link_fixture(attrs \\ %{}) do
    {:ok, link} =
      attrs
      |> Enum.into(%{
        description: "some description",
        url: "some url"
      })
      |> CommunityApi.News.create_link()

    link
  end
end
