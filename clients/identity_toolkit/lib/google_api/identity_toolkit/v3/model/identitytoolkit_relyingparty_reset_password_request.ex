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

defmodule GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyResetPasswordRequest do
  @moduledoc """
  Request to reset the password.

  ## Attributes

  *   `email` (*type:* `String.t`, *default:* `nil`) - The email address of the user.
  *   `newPassword` (*type:* `String.t`, *default:* `nil`) - The new password inputted by the user.
  *   `oldPassword` (*type:* `String.t`, *default:* `nil`) - The old password inputted by the user.
  *   `oobCode` (*type:* `String.t`, *default:* `nil`) - The confirmation code.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :email => String.t(),
          :newPassword => String.t(),
          :oldPassword => String.t(),
          :oobCode => String.t()
        }

  field(:email)
  field(:newPassword)
  field(:oldPassword)
  field(:oobCode)
end

defimpl Poison.Decoder,
  for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyResetPasswordRequest do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyResetPasswordRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartyResetPasswordRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
