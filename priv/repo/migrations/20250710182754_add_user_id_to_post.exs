defmodule Forum.Repo.Migrations.AddUserIdToPost do
  use Ecto.Migration

  def change do
    #alters table by adding user id to a post
    alter table(:posts) do
      add :user_id, references(:users, on_delete: :nothing)
    end
  end
end
