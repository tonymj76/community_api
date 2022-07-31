defmodule CommunityApi.MenuFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `CommunityApi.Menu` context.
  """

  @doc """
  Generate a menu_item.
  """
  def menu_item_fixture(attrs \\ %{}) do
    {:ok, menu_item} =
      attrs
      |> Enum.into(%{
        description: "some description",
        name: "some name"
      })
      |> CommunityApi.Menu.create_menu_item()

    menu_item
  end
end
