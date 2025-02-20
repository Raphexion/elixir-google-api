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

defmodule GoogleApi.PlayIntegrity.V1.Model.TokenPayloadExternal do
  @moduledoc """
  Contains basic app information and integrity signals like device attestation and licensing details.

  ## Attributes

  *   `accountDetails` (*type:* `GoogleApi.PlayIntegrity.V1.Model.AccountDetails.t`, *default:* `nil`) - Required. Details about the Play Store account.
  *   `appIntegrity` (*type:* `GoogleApi.PlayIntegrity.V1.Model.AppIntegrity.t`, *default:* `nil`) - Required. Details about the application integrity.
  *   `deviceIntegrity` (*type:* `GoogleApi.PlayIntegrity.V1.Model.DeviceIntegrity.t`, *default:* `nil`) - Required. Details about the device integrity.
  *   `requestDetails` (*type:* `GoogleApi.PlayIntegrity.V1.Model.RequestDetails.t`, *default:* `nil`) - Required. Details about the integrity request.
  *   `testingDetails` (*type:* `GoogleApi.PlayIntegrity.V1.Model.TestingDetails.t`, *default:* `nil`) - Indicates that this payload is generated for testing purposes and contains any additional data that is linked with testing status.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountDetails => GoogleApi.PlayIntegrity.V1.Model.AccountDetails.t() | nil,
          :appIntegrity => GoogleApi.PlayIntegrity.V1.Model.AppIntegrity.t() | nil,
          :deviceIntegrity => GoogleApi.PlayIntegrity.V1.Model.DeviceIntegrity.t() | nil,
          :requestDetails => GoogleApi.PlayIntegrity.V1.Model.RequestDetails.t() | nil,
          :testingDetails => GoogleApi.PlayIntegrity.V1.Model.TestingDetails.t() | nil
        }

  field(:accountDetails, as: GoogleApi.PlayIntegrity.V1.Model.AccountDetails)
  field(:appIntegrity, as: GoogleApi.PlayIntegrity.V1.Model.AppIntegrity)
  field(:deviceIntegrity, as: GoogleApi.PlayIntegrity.V1.Model.DeviceIntegrity)
  field(:requestDetails, as: GoogleApi.PlayIntegrity.V1.Model.RequestDetails)
  field(:testingDetails, as: GoogleApi.PlayIntegrity.V1.Model.TestingDetails)
end

defimpl Poison.Decoder, for: GoogleApi.PlayIntegrity.V1.Model.TokenPayloadExternal do
  def decode(value, options) do
    GoogleApi.PlayIntegrity.V1.Model.TokenPayloadExternal.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlayIntegrity.V1.Model.TokenPayloadExternal do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
