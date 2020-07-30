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

defmodule GoogleApi.Calendar.V3.Model.ConferenceSolutionKey do
  @moduledoc """


  ## Attributes

  *   `type` (*type:* `String.t`, *default:* `nil`) - The conference solution type.
      If a client encounters an unfamiliar or empty type, it should still be able to display the entry points. However, it should disallow modifications.
      The possible values are:  
      - "eventHangout" for Hangouts for consumers (http://hangouts.google.com)
      - "eventNamedHangout" for classic Hangouts for G Suite users (http://hangouts.google.com)
      - "hangoutsMeet" for Google Meet (http://meet.google.com)
      - "addOn" for 3P conference providers
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :type => String.t()
        }

  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.ConferenceSolutionKey do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.ConferenceSolutionKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.ConferenceSolutionKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
