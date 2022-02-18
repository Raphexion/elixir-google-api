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

defmodule GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentTextAnchor do
  @moduledoc """
  Text reference indexing into the Document.text.

  ## Attributes

  *   `content` (*type:* `String.t`, *default:* `nil`) - Contains the content of the text span so that users do not have to look it up in the text_segments. It is always populated for formFields.
  *   `textSegments` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment.t)`, *default:* `nil`) - The text segments from the Document.text.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => String.t() | nil,
          :textSegments =>
            list(
              GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment.t()
            )
            | nil
        }

  field(:content)

  field(:textSegments,
    as:
      GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentTextAnchor do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentTextAnchor.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta2DocumentTextAnchor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
