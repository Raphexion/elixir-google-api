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

defmodule GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1AndroidKeySettings do
  @moduledoc """
  Settings specific to keys that can be used by Android apps.

  ## Attributes

  *   `allowAllPackageNames` (*type:* `boolean()`, *default:* `nil`) - If set to true, allowed_package_names are not enforced.
  *   `allowedPackageNames` (*type:* `list(String.t)`, *default:* `nil`) - Android package names of apps allowed to use the key. Example: 'com.companyname.appname'
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowAllPackageNames => boolean() | nil,
          :allowedPackageNames => list(String.t()) | nil
        }

  field(:allowAllPackageNames)
  field(:allowedPackageNames, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1AndroidKeySettings do
  def decode(value, options) do
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1AndroidKeySettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1AndroidKeySettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
