# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_curated_list,
  ecto_repos: [PhoenixCuratedList.Repo]

# Configures the endpoint
config :phoenix_curated_list, PhoenixCuratedList.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Q7WRH7rOOtAIIe1k/+gHK4NfQpQFMEdfz1Fd/QZoBpXV2Rgau6RGFzA5MIV3Ed6g",
  render_errors: [view: PhoenixCuratedList.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixCuratedList.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
