defmodule Stripe.Resource do
  defmacro __using__(_) do
    quote location: :keep do
      @resource Module.get_attribute(__MODULE__, :resource) || nil

      def get(id) do
        raw_get(id).data
      end

      def raw_get(id) do
        Stripe.get(@endpoint <> "/#{id}")
        |> Stripe.Response.new(%{as: @resource})
      end

      def get do
        raw_get.data
      end

      def raw_get do
        Stripe.get(@endpoint)
        |> Stripe.Response.new(%{as: @resource})
      end
    end
  end
end
