defmodule ContactsManager.Contact do
  use ContactsManager.Web, :model

  schema "contacts" do
    field :first_name, :string
    field :last_name, :string
    field :gender, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:first_name, :last_name, :gender])
    |> validate_required([:first_name, :last_name, :gender])
  end
end
