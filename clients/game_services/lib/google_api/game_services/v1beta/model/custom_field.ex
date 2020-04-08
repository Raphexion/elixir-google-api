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

defmodule GoogleApi.GameServices.V1beta.Model.CustomField do
  @moduledoc """
  Custom fields.
  These can be used to create a counter with arbitrary field/value
  pairs.
  See: go/rpcsp-custom-fields.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Name is the field name.
  *   `value` (*type:* `String.t`, *default:* `nil`) - Value is the field value. It is important that in contrast to the
      CounterOptions.field, the value here is a constant that is not
      derived from the IAMContext.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t(),
          :value => String.t()
        }

  field(:name)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.GameServices.V1beta.Model.CustomField do
  def decode(value, options) do
    GoogleApi.GameServices.V1beta.Model.CustomField.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GameServices.V1beta.Model.CustomField do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
