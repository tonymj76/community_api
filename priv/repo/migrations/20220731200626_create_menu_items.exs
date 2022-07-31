defmodule CommunityApi.Repo.Migrations.CreateMenuItems do
  use Ecto.Migration

  def change do
    create table(:menu_items) do
      add :name, :string
      add :description, :text

      timestamps()
    end
  end
end
