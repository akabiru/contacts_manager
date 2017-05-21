defmodule ContactsManager.PageController do
  use ContactsManager.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
