defmodule Rovex do
  use GenServer
  @moduledoc """
  Documentation for Rovex.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Rovex.hello()
      :world

  """
  def hello do
    :world
  end

  def start_link({x, y, d, name}) do 
    GenServer.start_link(__MODULE__, {x, y, d, name}, name: String.to_atom(name))
  end

  def init() do
    {:ok, %{}}
  end
end
