defmodule Rafter.Consensus do
  require Logger
  use GenServer

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, opts)
  end

  @impl true
  def init(_args) do
    Logger.info("Consensus module has started.")
    {:ok, %{}}
  end
end
