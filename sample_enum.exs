defmodule Sample.Enum do

    def first([]) when length(list) == 0, do: nil
    def first([head | _]), do: head

end