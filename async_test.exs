defmodule DeliverMan do
    def deliver_packages do
        packages = ["Book1", "Book2", "Book3", "Book4"]
        {:ok, pid} = PackageReceiver.start_link

        Enum.each(packages, fn (package) -> 
            IO.puts "I will deliver package #{package}"

            PackageReceiver.leave_at_the_door(pid, package)
        end)

        IO.puts "All done with deliveries."
        IO.puts "........................."

    end
end

defmodule PackageReceiver do
    use GenServer

    def start_link() do
        # you may want to register your server with `name: __MODULE__`
        # as a third argument to `start_link`
        GenServer.start_link(__MODULE__, [])
    end

    def init(_args) do
        {:ok, :initial_state}
    end

    def leave_at_the_door(receiver_id, package_name) do
       GenServer.cast(receiver_id, {:async_package, package_name}) 
    end

    def handle_cast({:async_package, package_name}, state) do
        :timer.sleep(1000)
        IO.puts "I receive package #{package_name}"
        {:noreply, state}
    end

end