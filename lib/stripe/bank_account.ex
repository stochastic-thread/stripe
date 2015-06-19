defmodule Stripe.BankAccount do
  @type t :: %Stripe.BankAccount{
                  id: String.t,
                  object: String.t,
                  last4: String.t,
                  country: String.t,
                  currency: String.t,
                  status: String.t,
                  fingerprint: String.t,
                  routing_number: String.t,
                  bank_name: String.t
  }

  defstruct 			id: "",
                  object: "bank_account",
                  last4: "",
                  country: "",
                  currency: "",
                  status: "",
                  fingerprint: "",
                  routing_number: "",
                  bank_name: ""
end