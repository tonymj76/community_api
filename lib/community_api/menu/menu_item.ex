defmodule CommunityApi.Menu.MenuItem do
  use Ecto.Schema
  import Ecto.Changeset
  alias CommunityApi.News.Link

  schema "menu_items" do
    field :description, :string
    field :name, :string
    belongs_to :id, Link

    timestamps()
  end

  @doc false
  def changeset(menu_item, attrs) do
    menu_item
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
    |> foreign_key_constraint(:id)
  end
end
