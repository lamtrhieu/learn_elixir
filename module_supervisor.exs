defmodule BasicSupervisor do
    use Supervisor

    def start_link() do
        Supervisor.start_link(__MODULE__, [], name: __MODULE__)
    end

    # def init([args]) do
    #     children = [
    #         worker(Basic, [])
    #     ]

    #     Supervisor.init(children, strategy: :one_for_one)
    # end
end


defmodule Basic do
    use GenServer

    def start_link() do
        # you may want to register your server with `name: __MODULE__`
        # as a third argument to `start_link`
        GenServer.start_link(__MODULE__, [])
    end

    def init(initial_data) do
        {:ok, :initial_data}
    end
end