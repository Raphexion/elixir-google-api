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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime do
  @moduledoc """


  ## Attributes

  *   `allDay` (*type:* `GoogleApi.CloudSearch.V1.Model.Date.t`, *default:* `nil`) - All day event.
  *   `timed` (*type:* `DateTime.t`, *default:* `nil`) - Non all day event.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allDay => GoogleApi.CloudSearch.V1.Model.Date.t() | nil,
          :timed => DateTime.t() | nil
        }

  field(:allDay, as: GoogleApi.CloudSearch.V1.Model.Date)
  field(:timed, as: DateTime)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteSharedCalendarEventAnnotationDataCalendarEventTime do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
