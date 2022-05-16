defmodule Sendwal.Token do
  use Joken.Config

  def token_config do
    default_claims(skip: [:iat, :nbf, :iss, :aud, :jti])
  end
end
