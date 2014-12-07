defmodule Stripe.Cards do
  @resource Stripe.Card
  @endpoint "v1/customers/:customer_id/cards/:id"
  use Stripe.Resource
end
