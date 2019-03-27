defmodule PhxApi.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string, null: false
    field :email, :string, null: false

    timestamps(inserted_at: :created_at)
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email])
    |> validate_required([:name, :email])
  end
end
