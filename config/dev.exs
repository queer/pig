use Mix.Config

config :pig, PigWeb.Endpoint,
  http: [port: 8080],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []

config :pig, ecto_repos: [Pig.Repo]

config :pig, Pig.Repo,
  database: "pig",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: "5433"

config :logger, :console, format: "[$level] $message\n"

config :pig,
  singyeong_dsn: System.get_env("SINGYEONG_DSN") || "singyeong://pig:password@localhost:4567"

config :phoenix, :stacktrace_depth, 20

config :phoenix, :plug_init_mode, :runtime
