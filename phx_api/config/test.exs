use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phx_api, PhxApiWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phx_api, PhxApi.Repo,
  username: "root",
  password: "",
  database: "phx_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
