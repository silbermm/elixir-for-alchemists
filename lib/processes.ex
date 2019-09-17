defmodule Processes do
  @moduledoc """
  Simply show how processes work
  """

  @doc """
  Hello process that takes an `{:ok, "hello", send_to}` and sends a response to the send_to process
  """
  def hello do
    receive do
      {:ok, "hello", send_to} ->
        IO.inspect("IN HELLO PROCESS")
        send(send_to, "Alchemy")
    end
  end

  @doc """
  Process that prints out a message
  """
  def message do
    receive do
      msg -> IO.inspect(msg, label: "FROM MESSAGE PROCESS")
    end
  end

  @doc """
  Spawn two processes and send messages
  """
  def listen do
    hello_pid = spawn(Processes, :hello, [])
    message_pid = spawn(Processes, :message, [])

    IO.inspect("FROM LISTEN FUNCTION")

    send(hello_pid, {:ok, "hello", message_pid})

    IO.inspect("DONE CALLING SEND")
  end
end
