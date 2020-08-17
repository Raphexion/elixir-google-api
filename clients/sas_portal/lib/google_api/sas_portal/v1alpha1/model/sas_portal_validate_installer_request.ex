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

defmodule GoogleApi.SASPortal.V1alpha1.Model.SasPortalValidateInstallerRequest do
  @moduledoc """
  Request for ValidateInstaller method.

  ## Attributes

  *   `encodedSecret` (*type:* `String.t`, *default:* `nil`) - Required. JSON Web Token signed using a CPI private key. Payload must include a "secret" claim whose value is the secret.
  *   `installerId` (*type:* `String.t`, *default:* `nil`) - Required. Unique installer id (cpiId) from the Certified Professional Installers database.
  *   `secret` (*type:* `String.t`, *default:* `nil`) - Required. Secret returned by the GenerateSecret method.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encodedSecret => String.t(),
          :installerId => String.t(),
          :secret => String.t()
        }

  field(:encodedSecret)
  field(:installerId)
  field(:secret)
end

defimpl Poison.Decoder, for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalValidateInstallerRequest do
  def decode(value, options) do
    GoogleApi.SASPortal.V1alpha1.Model.SasPortalValidateInstallerRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalValidateInstallerRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
