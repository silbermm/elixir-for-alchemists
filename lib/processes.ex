defmodule Processes do
  def listen do
    receive do
      {:ok, "hello"} -> IO.puts("Alchemy")
    end

    listen
  end
end
