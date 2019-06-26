# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponseProviderUserInfo do
  @moduledoc """


  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The user's display name at the IDP.
  *   `federatedId` (*type:* `String.t`, *default:* `nil`) - User's identifier at IDP.
  *   `photoUrl` (*type:* `String.t`, *default:* `nil`) - The user's photo url at the IDP.
  *   `providerId` (*type:* `String.t`, *default:* `nil`) - The IdP ID. For whitelisted IdPs it's a short domain name, e.g., google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it's the OP identifier.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :federatedId => String.t(),
          :photoUrl => String.t(),
          :providerId => String.t()
        }

  field(:displayName)
  field(:federatedId)
  field(:photoUrl)
  field(:providerId)
end

defimpl Poison.Decoder,
  for: GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponseProviderUserInfo do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponseProviderUserInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.IdentityToolkit.V3.Model.SetAccountInfoResponseProviderUserInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
