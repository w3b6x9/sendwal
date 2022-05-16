defmodule SendwalWeb.RoomChannel do
  use SendwalWeb, :channel

  require Logger

  @impl true
  def join("room:" <> _, _payload, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_in(_, payload, socket) do
    Logger.info("SENDWAL CHANGES: #{inspect(payload)}")
    {:noreply, socket}
  end
end
