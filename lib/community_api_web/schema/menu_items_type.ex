defmodule CommunityApiWeb.Schema.MenuItemsType do
  use Absinthe.Schema
  alias CommunityApiWeb.Menu.MenuItem

  object :menu_item do
    field :id, non_null(:id)
    field :name, non_null(:name)
    field :description, non_null(:description)
  end

  query do
    @desc "menu types"
    field :
  end
end
