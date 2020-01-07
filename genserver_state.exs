defmodule BasicState do
    use GenServer

    def start_link() do
        # you may want to register your server with `name: __MODULE__`
        # as a third argument to `start_link`
        GenServer.start_link(__MODULE__, "Hello")
    end

    def init(initial_state) do
        greetings = %{:greeting => initial_state}
        {:ok, greetings}
    end

    def get_greeting(process_id) do
        GenServer.call(process_id, {:get_the_greeting})
    end

    def set_greeting(process_id, new_greeting) do
        GenServer.call(process_id, {:set_the_greeting, new_greeting})
    end

    # Server callback

    def handle_call({:get_the_greeting}, _from, state) do
        current_greeting = Map.get(state, :greeting)

        {:reply, current_greeting, state}
    end

    def handle_call({:set_the_greeting, new_greeting}, _from, state) do
        new_state = Map.put(state, :greeting, new_greeting)
        {:reply, state, new_state}
    end

end