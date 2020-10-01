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

defmodule GoogleApi.Compute.V1.Model.TestFailure do
  @moduledoc """


  ## Attributes

  *   `actualService` (*type:* `String.t`, *default:* `nil`) - BackendService or BackendBucket returned by load balancer.
  *   `expectedService` (*type:* `String.t`, *default:* `nil`) - Expected BackendService or BackendBucket resource the given URL should be mapped to.
  *   `host` (*type:* `String.t`, *default:* `nil`) - Host portion of the URL.
  *   `path` (*type:* `String.t`, *default:* `nil`) - Path portion including query parameters in the URL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actualService => String.t(),
          :expectedService => String.t(),
          :host => String.t(),
          :path => String.t()
        }

  field(:actualService)
  field(:expectedService)
  field(:host)
  field(:path)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.TestFailure do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.TestFailure.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.TestFailure do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
