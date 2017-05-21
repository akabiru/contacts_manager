defmodule ContactsManager.ContactView do
  use ContactsManager.Web, :view

  def render("index.json", %{page: page}), do: page
end
