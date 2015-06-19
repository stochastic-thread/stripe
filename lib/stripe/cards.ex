defmodule Stripe.Cards do
	@endpoint "v1/customers/:customer_id/cards/:id"
  @resource Stripe.Card
  use Stripe.Resource
end
