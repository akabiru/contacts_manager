# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :contacts_manager,
  ecto_repos: [ContactsManager.Repo]

# Configures the endpoint
config :contacts_manager, ContactsManager.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0TKzIp+ADCqE3wAGH0aKBoul7XNVh5yOWIyEI+SuAflCAkIwewigNrFl/uL53ehd",
  render_errors: [view: ContactsManager.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ContactsManager.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
