defmodule Stripe.Token do
	defmodule Stripe.Token.Card
	  @moduledoc """
	  The Struct and type spec information for a Stripe Token
	  """
	  @type t :: %Stripe.Token.Card{
                 id: String.t,
            livemode: boolean,
              created: number,
                used: boolean,
              object: "token",
                 type: "card",
            card: Stripe.Card,
          client_ip: String.t,
	  }

	  defstruct          id: "",
	                 object: "card",
	                  last4: "",
	                  brand: "",
	                funding: "",
	              exp_month: 0,
	               exp_year: 0,
	            fingerprint: "",
	                country: "",
	                   name: "",
	          address_line1: "",
	          address_line2: "",
	           address_city: "",
	          address_state: "",
	            address_zip: "",
	        address_country: "",
	              cvc_check: "",
	    address_line1_check: "",
	      address_zip_check: "",
	          dynamic_last4: "",
	               customer: ""
	  end

	
	defmodule Stripe.Token.BankAccount do
	  @type t :: %Stripe.Token.Card{
                 id: String.t,
            livemode: boolean,
              created: number,
                used: boolean,
              object: "token",
         type: "bank_account",
   bank_account: Stripe.BankAccount,
          client_ip: String.t,
	  }

	  defstruct          id: "",
	                 object: "card",
	                  last4: "",
	                  brand: "",
	                funding: "",
	              exp_month: 0,
	               exp_year: 0,
	            fingerprint: "",
	                country: "",
	                   name: "",
	          address_line1: "",
	          address_line2: "",
	           address_city: "",
	          address_state: "",
	            address_zip: "",
	        address_country: "",
	              cvc_check: "",
	    address_line1_check: "",
	      address_zip_check: "",
	          dynamic_last4: "",
	               customer: ""
	end

	end
end