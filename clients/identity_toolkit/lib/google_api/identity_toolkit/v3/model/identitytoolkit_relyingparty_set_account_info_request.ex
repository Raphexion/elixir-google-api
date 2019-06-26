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

defmodule GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySetAccountInfoRequest do
  @moduledoc """
  Request to set the account information.

  ## Attributes

  *   `captchaChallenge` (*type:* `String.t`, *default:* `nil`) - The captcha challenge.
  *   `captchaResponse` (*type:* `String.t`, *default:* `nil`) - Response to the captcha.
  *   `createdAt` (*type:* `String.t`, *default:* `nil`) - The timestamp when the account is created.
  *   `customAttributes` (*type:* `String.t`, *default:* `nil`) - The custom attributes to be set in the user's id token.
  *   `delegatedProjectNumber` (*type:* `String.t`, *default:* `nil`) - GCP project number of the requesting delegated app. Currently only intended for Firebase V1 migration.
  *   `deleteAttribute` (*type:* `list(String.t)`, *default:* `nil`) - The attributes users request to delete.
  *   `deleteProvider` (*type:* `list(String.t)`, *default:* `nil`) - The IDPs the user request to delete.
  *   `disableUser` (*type:* `boolean()`, *default:* `nil`) - Whether to disable the user.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The name of the user.
  *   `email` (*type:* `String.t`, *default:* `nil`) - The email of the user.
  *   `emailVerified` (*type:* `boolean()`, *default:* `nil`) - Mark the email as verified or not.
  *   `idToken` (*type:* `String.t`, *default:* `nil`) - The GITKit token of the authenticated user.
  *   `instanceId` (*type:* `String.t`, *default:* `nil`) - Instance id token of the app.
  *   `lastLoginAt` (*type:* `String.t`, *default:* `nil`) - Last login timestamp.
  *   `localId` (*type:* `String.t`, *default:* `nil`) - The local ID of the user.
  *   `oobCode` (*type:* `String.t`, *default:* `nil`) - The out-of-band code of the change email request.
  *   `password` (*type:* `String.t`, *default:* `nil`) - The new password of the user.
  *   `phoneNumber` (*type:* `String.t`, *default:* `nil`) - Privileged caller can update user with specified phone number.
  *   `photoUrl` (*type:* `String.t`, *default:* `nil`) - The photo url of the user.
  *   `provider` (*type:* `list(String.t)`, *default:* `nil`) - The associated IDPs of the user.
  *   `returnSecureToken` (*type:* `boolean()`, *default:* `nil`) - Whether return sts id token and refresh token instead of gitkit token.
  *   `upgradeToFederatedLogin` (*type:* `boolean()`, *default:* `nil`) - Mark the user to upgrade to federated login.
  *   `validSince` (*type:* `String.t`, *default:* `nil`) - Timestamp in seconds for valid login token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :captchaChallenge => String.t(),
          :captchaResponse => String.t(),
          :createdAt => String.t(),
          :customAttributes => String.t(),
          :delegatedProjectNumber => String.t(),
          :deleteAttribute => list(String.t()),
          :deleteProvider => list(String.t()),
          :disableUser => boolean(),
          :displayName => String.t(),
          :email => String.t(),
          :emailVerified => boolean(),
          :idToken => String.t(),
          :instanceId => String.t(),
          :lastLoginAt => String.t(),
          :localId => String.t(),
          :oobCode => String.t(),
          :password => String.t(),
          :phoneNumber => String.t(),
          :photoUrl => String.t(),
          :provider => list(String.t()),
          :returnSecureToken => boolean(),
          :upgradeToFederatedLogin => boolean(),
          :validSince => String.t()
        }

  field(:captchaChallenge)
  field(:captchaResponse)
  field(:createdAt)
  field(:customAttributes)
  field(:delegatedProjectNumber)
  field(:deleteAttribute, type: :list)
  field(:deleteProvider, type: :list)
  field(:disableUser)
  field(:displayName)
  field(:email)
  field(:emailVerified)
  field(:idToken)
  field(:instanceId)
  field(:lastLoginAt)
  field(:localId)
  field(:oobCode)
  field(:password)
  field(:phoneNumber)
  field(:photoUrl)
  field(:provider, type: :list)
  field(:returnSecureToken)
  field(:upgradeToFederatedLogin)
  field(:validSince)
end

defimpl Poison.Decoder,
  for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySetAccountInfoRequest do
  def decode(value, options) do
    GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySetAccountInfoRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.IdentityToolkit.V3.Model.IdentitytoolkitRelyingpartySetAccountInfoRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
