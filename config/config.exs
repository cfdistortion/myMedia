# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :my_media,
  ecto_repos: [MyMedia.Repo]

# Configures the endpoint
config :my_media, MyMedia.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YWC9yvr04GZelRyPwJTnfTVcWnF/VsAgr8POigVhAJyvqe/Mxad7JcN9z002WuFZ",
  render_errors: [view: MyMedia.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MyMedia.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
