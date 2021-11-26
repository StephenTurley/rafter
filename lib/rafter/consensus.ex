defmodule Rafter.Consensus do
  require Logger
  use GenServer

  def start_link(opts) do
    GenServer.start_link(__MODULE__, opts, name: __MODULE__)
  end

  @impl true
  def init(_args) do
    Logger.info("Consensus module has started.")

    state = %{
      log: []
    }

    {:ok, state}
  end

  # Server
  @impl true
  def handle_call({:append_entries, entries}, _from, %{log: log} = state) do
    Logger.info("Entries added")

    {:reply, :ok, Map.replace!(state, :log, entries ++ log)}
  end

  # Client
  def append_entry(entry) do
    GenServer.call(__MODULE__, {:append_entries, [entry]})
  end
end
