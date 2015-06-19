defmodule Stripe.Tokens do
  @endpoint "v1/tokens/:id"
  @resource Stripe.Token
  use Stripe.Resource
end
