# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.NetworkServices.V1.Model.ListGatewaysResponse do
  @moduledoc """
  Response returned by the ListGateways method.

  ## Attributes

  *   `gateways` (*type:* `list(GoogleApi.NetworkServices.V1.Model.Gateway.t)`, *default:* `nil`) - List of Gateway resources.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gateways => list(GoogleApi.NetworkServices.V1.Model.Gateway.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:gateways, as: GoogleApi.NetworkServices.V1.Model.Gateway, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.ListGatewaysResponse do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.ListGatewaysResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.ListGatewaysResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
