# Stripe

Stripe API client for Elixir

## Scope

The goal is to map all objects in the Stripe API 1-1

[ ] Charges
[ ] Refunds
[ ] Customers
[ ] Cards
[ ] Subscriptions
[ ] Plans
[ ] Coupons
[ ] Discounts
[ ] Invoices
[ ] Invoice Items
[ ] Disputes
[ ] Transfers
[ ] Recipients
[ ] Application Fees
[ ] Application Fee Refunds
[ ] Account
[ ] Balance
[ ] Events
[ ] Tokens

## Authentication

Authentication for Stripe's API is done via a single Bearer token. The library will check the `STRIPE_SECRET_KEY` environment variable and fallback `to Application.get_env(:stripe, :secret_key)`.

## Usage

The RESTfulness of the Stripe API makes this easy. In essence, for every object
in the Stripe ecosystem, we should be able to make calls such as:

```Elixir
Stripe.Accounts.get("some_account_id")
# => %Stripe.Account{ business_name: "Seneca Systems" ...}
```

The pluralized object name (`Stripe.Accounts`) is used to return an individual instance,
or, in the case of the index read (`Stripe.Accounts.get`), a list of instances.
Those are instances of structs named for the singular resource name (e.g. `Stripe.Account`.)
