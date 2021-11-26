defmodule Rafter do
  @moduledoc """
  Documentation for `Rafter`.
  """

  def append_entry(entry) do
    Rafter.Consensus.append_entry(entry)
  end
end
