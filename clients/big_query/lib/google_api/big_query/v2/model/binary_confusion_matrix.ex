# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.BigQuery.V2.Model.BinaryConfusionMatrix do
  @moduledoc """
  Confusion matrix for binary classification models.

  ## Attributes

  - falseNegatives (String.t): Number of false samples predicted as false. Defaults to `nil`.
  - falsePositives (String.t): Number of false samples predicted as true. Defaults to `nil`.
  - positiveClassThreshold (float()): Threshold value used when computing each of the following metric. Defaults to `nil`.
  - precision (float()): Aggregate precision. Defaults to `nil`.
  - recall (float()): Aggregate recall. Defaults to `nil`.
  - trueNegatives (String.t): Number of true samples predicted as false. Defaults to `nil`.
  - truePositives (String.t): Number of true samples predicted as true. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :falseNegatives => String.t(),
          :falsePositives => String.t(),
          :positiveClassThreshold => float(),
          :precision => float(),
          :recall => float(),
          :trueNegatives => String.t(),
          :truePositives => String.t()
        }

  field(:falseNegatives)
  field(:falsePositives)
  field(:positiveClassThreshold)
  field(:precision)
  field(:recall)
  field(:trueNegatives)
  field(:truePositives)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.BinaryConfusionMatrix do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.BinaryConfusionMatrix.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.BinaryConfusionMatrix do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
