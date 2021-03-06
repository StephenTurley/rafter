defmodule Rafter.Application do
  use Application

  def start(_type, _args) do
    children = [Rafter.Consensus]
    opts = [strategy: :one_for_one, name: Rafter.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
