defmodule Stripe.Customer do
@moduledoc """
  The Struct and type spec information for a Stripe Customer
  """

  @type t :: %Stripe.Card{
                     id: String.t,
                 object: String.t,
                created: number,
               livemode: boolean,
            description: String.t,
             delinquent: boolean,
               metadata: map,
          subscriptions: list(Stripe.Subscription),
               discount: Stripe.Discount | nil,
        account_balance: number,
               currency: String.t,
                  cards: list(Stripe.Card),
           default_card: String.t | Stripe.Card | nil
  }

  defstruct          id: "",
                 object: "customer",
                created: 0,
               livemode: false,
            description: "",
             delinquent: false,
               metadata: %{},
          subscriptions: [],
               discount: nil,
        account_balance: 0,
               currency: "usd",
                  cards: [],
           default_card: nil
end
