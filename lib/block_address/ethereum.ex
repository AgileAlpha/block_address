defmodule BlockKeys.Ethereum do
  @moduledoc """
  Helper module to convert a public key to an Ethereum Address
  """

  alias BlockKeys.Ethereum.Address

  def address(xpub), do: Address.from_xpub(xpub)
end
