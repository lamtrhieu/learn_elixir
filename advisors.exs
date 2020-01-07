defmodule BasicSupervisor do
    use Supervisor

    def start_link() do
        # you may want to register your server with `name: __MODULE__`
        # as a third argument to `start_link`
        GenServer.start_link(__MODULE__, [])
    end

    def init([]) do
        children = [
            worker(Worker1, []),
            worker(Worker2, []),
            worker(Worker3, []),
        ]

        supervise(children, strategy: :one_for_one)
    end
end

defmodule Worker1 do
    use GenServer

    def start_link() do
        IO.puts "Worker 1 is starting"
        # you may want to register your server with `name: __MODULE__`
        # as a third argument to `start_link`
        GenServer.start_link(__MODULE__, [])
    end

    def init() do
        {:ok, :initial_state}
    end
end

defmodule Worker2 do
    use GenServer

    def start_link() do
        IO.puts "Worker 2 is starting"
        # you may want to register your server with `name: __MODULE__`
        # as a third argument to `start_link`
        GenServer.start_link(__MODULE__, [])
    end

    def init() do
        {:ok, :initial_state}
    end
end

defmodule Worker3 do
    use GenServer

    def start_link() do
        IO.puts "Worker 3 is starting"
        # you may want to register your server with `name: __MODULE__`
        # as a third argument to `start_link`
        GenServer.start_link(__MODULE__, [])
    end

    def init() do
        {:ok, :initial_state}
    end
end



