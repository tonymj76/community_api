defmodule CommunityApi.MenuTest do
  use CommunityApi.DataCase

  alias CommunityApi.Menu

  describe "menu_items" do
    alias CommunityApi.Menu.MenuItem

    import CommunityApi.MenuFixtures

    @invalid_attrs %{description: nil, name: nil}

    test "list_menu_items/0 returns all menu_items" do
      menu_item = menu_item_fixture()
      assert Menu.list_menu_items() == [menu_item]
    end

    test "get_menu_item!/1 returns the menu_item with given id" do
      menu_item = menu_item_fixture()
      assert Menu.get_menu_item!(menu_item.id) == menu_item
    end

    test "create_menu_item/1 with valid data creates a menu_item" do
      valid_attrs = %{description: "some description", name: "some name"}

      assert {:ok, %MenuItem{} = menu_item} = Menu.create_menu_item(valid_attrs)
      assert menu_item.description == "some description"
      assert menu_item.name == "some name"
    end

    test "create_menu_item/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Menu.create_menu_item(@invalid_attrs)
    end

    test "update_menu_item/2 with valid data updates the menu_item" do
      menu_item = menu_item_fixture()
      update_attrs = %{description: "some updated description", name: "some updated name"}

      assert {:ok, %MenuItem{} = menu_item} = Menu.update_menu_item(menu_item, update_attrs)
      assert menu_item.description == "some updated description"
      assert menu_item.name == "some updated name"
    end

    test "update_menu_item/2 with invalid data returns error changeset" do
      menu_item = menu_item_fixture()
      assert {:error, %Ecto.Changeset{}} = Menu.update_menu_item(menu_item, @invalid_attrs)
      assert menu_item == Menu.get_menu_item!(menu_item.id)
    end

    test "delete_menu_item/1 deletes the menu_item" do
      menu_item = menu_item_fixture()
      assert {:ok, %MenuItem{}} = Menu.delete_menu_item(menu_item)
      assert_raise Ecto.NoResultsError, fn -> Menu.get_menu_item!(menu_item.id) end
    end

    test "change_menu_item/1 returns a menu_item changeset" do
      menu_item = menu_item_fixture()
      assert %Ecto.Changeset{} = Menu.change_menu_item(menu_item)
    end
  end
end
