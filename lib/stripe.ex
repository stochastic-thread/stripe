defmodule Stripe do
  use HTTPotion.Base

  @spec process_url(String.t) :: String.t
  def process_url(path) do
    "https://api.stripe.com/" <> path
  end

  @spec process_request_headers(map) :: map
  def process_request_headers(headers) do
    Dict.put headers, :Authorization, "Bearer #{secret_key}"
  end

  defp secret_key do
    System.get_env("STRIPE_SECRET_KEY") || Application.get_env(:stripe, :secret_key)
  end
end
