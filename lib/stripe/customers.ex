defmodule Stripe.Customers do
  @resource Stripe.Customer
  @endpoint "v1/customers/:id"
  use Stripe.Resource
end
