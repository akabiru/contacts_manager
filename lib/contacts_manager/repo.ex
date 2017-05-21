defmodule ContactsManager.Repo do
  use Ecto.Repo, otp_app: :contacts_manager

  use Scrivener, page_size: 9
end
