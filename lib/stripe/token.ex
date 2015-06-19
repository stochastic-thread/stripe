defmodule Stripe.Token do
	defmodule Stripe.Token.Card do
	  @moduledoc """
	  The Struct and type spec information for a Stripe Token
	  """
	  @type t :: %Stripe.Token.Card{
                 id: String.t,
            livemode: boolean,
              created: number,
                used: boolean,
              object: String.t,
                 type: String.t,
            card: Stripe.Card,
          client_ip: String.t
	  }

	  defstruct          id: "",
            livemode: false,
              created: 0,
                used: false,
              object: "token",
                 type: "card",
            card: "",
          client_ip: ""
  end
	
	defmodule Stripe.Token.BankAccount do
	  @type t :: %Stripe.Token.BankAccount{
                      id: String.t,
                livemode: boolean,
                 created: number,
                    used: boolean,
                  object: String.t,
                    type: String.t,
            bank_account: Stripe.BankAccount,
               client_ip: String.t
	  }

	  defstruct         id: "",
	  						livemode: false,
	  						 created: 0,
	  							  used: false,
	                object: "token",
	                  type: "bank_account",
	          bank_account: "",
	             client_ip: ""
	end
end