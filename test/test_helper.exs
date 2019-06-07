# Disable until we can get this working on CircleCI
# :ok = LocalCluster.start()

# Application.ensure_all_started(:horde)

:telemetry.attach(
  :log_handler,
  [:horde, :cluster, :info],
  fn a, b, c, d -> IO.inspect({a, b, c, d}) end,
  nil
)

ExUnit.start()
