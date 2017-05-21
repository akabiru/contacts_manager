defmodule ContactsManager.ContactsController do
  use ContactsManager.Web, :controller

  alias ContactsManager.Contact

  def index(conn, params) do
    page = Contact
      |> order_by(:first_name)
      |> Repo.paginate(params)
    
    render conn, page: page
  end
end
