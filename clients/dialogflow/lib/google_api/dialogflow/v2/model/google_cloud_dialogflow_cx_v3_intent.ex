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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3Intent do
  @moduledoc """
  An intent represents a user's intent to interact with a conversational agent. You can provide information for the Dialogflow API to use to match user input to an intent by adding training phrases (i.e., examples of user input) to your intent.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Human readable description for better understanding an intent like its scope, content, result etc. Maximum character limit: 140 characters.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The human-readable name of the intent, unique within the agent.
  *   `isFallback` (*type:* `boolean()`, *default:* `nil`) - Indicates whether this is a fallback intent. Currently only default fallback intent is allowed in the agent, which is added upon agent creation. Adding training phrases to fallback intent is useful in the case of requests that are mistakenly matched, since training phrases assigned to fallback intents act as negative examples that triggers no-match event.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The key/value metadata to label an intent. Labels can contain lowercase letters, digits and the symbols '-' and '_'. International characters are allowed, including letters from unicase alphabets. Keys must start with a letter. Keys and values can be no longer than 63 characters and no more than 128 bytes. Prefix "sys-" is reserved for Dialogflow defined labels. Currently allowed Dialogflow defined labels include: * sys-head * sys-contextual The above labels do not require value. "sys-head" means the intent is a head intent. "sys.contextual" means the intent is a contextual intent.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the intent. Required for the Intents.UpdateIntent method. Intents.CreateIntent populates the name automatically. Format: `projects//locations//agents//intents/`.
  *   `parameters` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3IntentParameter.t)`, *default:* `nil`) - The collection of parameters associated with the intent.
  *   `priority` (*type:* `integer()`, *default:* `nil`) - The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  *   `trainingPhrases` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3IntentTrainingPhrase.t)`, *default:* `nil`) - The collection of training phrases the agent is trained on to identify the intent.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :isFallback => boolean() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :parameters =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3IntentParameter.t()) | nil,
          :priority => integer() | nil,
          :trainingPhrases =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3IntentTrainingPhrase.t())
            | nil
        }

  field(:description)
  field(:displayName)
  field(:isFallback)
  field(:labels, type: :map)
  field(:name)

  field(:parameters,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3IntentParameter,
    type: :list
  )

  field(:priority)

  field(:trainingPhrases,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3IntentTrainingPhrase,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3Intent do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3Intent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3Intent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
