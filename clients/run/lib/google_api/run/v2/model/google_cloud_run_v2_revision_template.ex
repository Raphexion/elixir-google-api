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

defmodule GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionTemplate do
  @moduledoc """
  RevisionTemplate describes the data a revision should have when created from a template.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - KRM-style annotations for the resource.
  *   `containers` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Container.t)`, *default:* `nil`) - Holds the single container that defines the unit of execution for this Revision.
  *   `encryptionKey` (*type:* `String.t`, *default:* `nil`) - A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  *   `executionEnvironment` (*type:* `String.t`, *default:* `nil`) - The sandbox environment to host this Revision.
  *   `labels` (*type:* `map()`, *default:* `nil`) - KRM-style labels for the resource.
  *   `maxInstanceRequestConcurrency` (*type:* `integer()`, *default:* `nil`) - Sets the maximum number of requests that each serving instance can receive.
  *   `revision` (*type:* `String.t`, *default:* `nil`) - The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.
  *   `scaling` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionScaling.t`, *default:* `nil`) - Scaling settings for this Revision.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  *   `timeout` (*type:* `String.t`, *default:* `nil`) - Max allowed time for an instance to respond to a request.
  *   `volumes` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Volume.t)`, *default:* `nil`) - A list of Volumes to make available to containers.
  *   `vpcAccess` (*type:* `GoogleApi.Run.V2.Model.GoogleCloudRunV2VpcAccess.t`, *default:* `nil`) - VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :containers => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Container.t()) | nil,
          :encryptionKey => String.t() | nil,
          :executionEnvironment => String.t() | nil,
          :labels => map() | nil,
          :maxInstanceRequestConcurrency => integer() | nil,
          :revision => String.t() | nil,
          :scaling => GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionScaling.t() | nil,
          :serviceAccount => String.t() | nil,
          :timeout => String.t() | nil,
          :volumes => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Volume.t()) | nil,
          :vpcAccess => GoogleApi.Run.V2.Model.GoogleCloudRunV2VpcAccess.t() | nil
        }

  field(:annotations, type: :map)
  field(:containers, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Container, type: :list)
  field(:encryptionKey)
  field(:executionEnvironment)
  field(:labels, type: :map)
  field(:maxInstanceRequestConcurrency)
  field(:revision)
  field(:scaling, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionScaling)
  field(:serviceAccount)
  field(:timeout)
  field(:volumes, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Volume, type: :list)
  field(:vpcAccess, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2VpcAccess)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionTemplate do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2RevisionTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
