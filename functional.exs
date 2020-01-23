defmodule FunctionalTest do
    def createFunction() do
        &internalFunction/1
    end


    defp internalFunction(name) do
        IO.puts "I am going to do something here. #{name}"
    end
end