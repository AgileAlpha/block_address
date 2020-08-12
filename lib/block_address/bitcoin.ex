defmodule BlockAddress.Bitcoin do
  @moduledoc """
  Helper module to derive and convert to a Bitcoin Address
  """

  alias BlockAddress.Bitcoin.Address

  def address(xpub), do: Address.from_xpub(xpub)
end
