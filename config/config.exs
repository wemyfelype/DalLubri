# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :dallubri,
  ecto_repos: [Dallubri.Repo]

# Configures the endpoint
config :dallubri, DallubriWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vDz9wD0XzsTVS8tFTVU93pK4YaKIx33/RjPnlBaMWF/TscVxvM/bxKIymOg1zMzA",
  render_errors: [view: DallubriWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Dallubri.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
