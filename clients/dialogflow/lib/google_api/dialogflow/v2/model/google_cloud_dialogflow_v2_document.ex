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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Document do
  @moduledoc """
  A knowledge document to be used by a KnowledgeBase. For more information, see the [knowledge base guide](https://cloud.google.com/dialogflow/docs/how/knowledge-bases). Note: The `projects.agent.knowledgeBases.documents` resource is deprecated; only use `projects.knowledgeBases.documents`.

  ## Attributes

  *   `contentUri` (*type:* `String.t`, *default:* `nil`) - The URI where the file content is located. For documents stored in Google Cloud Storage, these URIs must have the form `gs:///`. NOTE: External URLs must correspond to public webpages, i.e., they must be indexed by Google Search. In particular, URLs for showing documents in Google Cloud Storage (i.e. the URL in your browser) are not supported. Instead use the `gs://` format URI described above.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the document. The name must be 1024 bytes or less; otherwise, the creation request fails.
  *   `enableAutoReload` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, we try to automatically reload the document every day (at a time picked by the system). If false or unspecified, we don't try to automatically reload the document. Currently you can only enable automatic reload for documents sourced from a public url, see `source` field for the source types. Reload status can be tracked in `latest_reload_status`. If a reload fails, we will keep the document unchanged. If a reload fails with internal errors, the system will try to reload the document on the next day. If a reload fails with non-retriable errors (e.g. PERMISION_DENIED), the system will not try to reload the document anymore. You need to manually reload the document successfully by calling `ReloadDocument` and clear the errors.
  *   `knowledgeTypes` (*type:* `list(String.t)`, *default:* `nil`) - Required. The knowledge type of document content.
  *   `latestReloadStatus` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DocumentReloadStatus.t`, *default:* `nil`) - Output only. The time and status of the latest reload. This reload may have been triggered automatically or manually and may not have succeeded.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Optional. Metadata for the document. The metadata supports arbitrary key-value pairs. Suggested use cases include storing a document's title, an external URL distinct from the document's content_uri, etc. The max size of a `key` or a `value` of the metadata is 1024 bytes.
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - Required. The MIME type of this document.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Optional. The document resource name. The name must be empty when creating a document. Format: `projects//locations//knowledgeBases//documents/`.
  *   `rawContent` (*type:* `String.t`, *default:* `nil`) - The raw content of the document. This field is only permitted for EXTRACTIVE_QA and FAQ knowledge types.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the document.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentUri => String.t() | nil,
          :displayName => String.t() | nil,
          :enableAutoReload => boolean() | nil,
          :knowledgeTypes => list(String.t()) | nil,
          :latestReloadStatus =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DocumentReloadStatus.t() | nil,
          :metadata => map() | nil,
          :mimeType => String.t() | nil,
          :name => String.t() | nil,
          :rawContent => String.t() | nil,
          :state => String.t() | nil
        }

  field(:contentUri)
  field(:displayName)
  field(:enableAutoReload)
  field(:knowledgeTypes, type: :list)

  field(:latestReloadStatus,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DocumentReloadStatus
  )

  field(:metadata, type: :map)
  field(:mimeType)
  field(:name)
  field(:rawContent)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Document do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Document.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Document do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
