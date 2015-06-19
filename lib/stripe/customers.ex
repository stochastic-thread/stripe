defmodule Stripe.Customers do
  @endpoint "v1/customers/:id"
  @resource Stripe.Customer
  use Stripe.Resource
end
