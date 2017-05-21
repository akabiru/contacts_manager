defmodule ContactsManager.ContactTest do
  use ContactsManager.ModelCase

  alias ContactsManager.Contact

  @valid_attrs %{first_name: "some content", gender: 42, last_name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Contact.changeset(%Contact{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Contact.changeset(%Contact{}, @invalid_attrs)
    refute changeset.valid?
  end
end
