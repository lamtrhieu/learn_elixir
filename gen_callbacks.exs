defmodule Callback do
    use GenServer

    def start_link() do        
        GenServer.start_link(__MODULE__, nil)
    end

    def handle_call({:call1}, _from, state) do
        IO.puts "I hanlde server call"
        {:reply, state, state}
    end

    def handle_cast({:call2},state) do
        IO.puts " I handle server cast"
        {:noreply, state}
    end

    def handle_info({:call3}, state) do
        IO.puts "I handle info call"
        {:noreply, state}
    end

end