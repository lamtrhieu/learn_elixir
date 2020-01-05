defmodule ModulePlayground do
    import IO, only: [puts: 1]
    import Kernel

    def say_here do
        puts("here again")
    end

    def inspect(param1) do
        puts("Starting oupout")
        puts param1
        puts("Ending outpout")
    end
end