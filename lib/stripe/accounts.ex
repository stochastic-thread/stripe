defmodule Stripe.Accounts do
  @endpoint "v1/accounts/:id"
  @resource Stripe.Account
  use Stripe.Resource
end
