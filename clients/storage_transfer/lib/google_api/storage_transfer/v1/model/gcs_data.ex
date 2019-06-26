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

defmodule GoogleApi.StorageTransfer.V1.Model.GcsData do
  @moduledoc """
  In a GcsData resource, an object's name is the Google Cloud Storage object's
  name and its `lastModificationTime` refers to the object's updated time,
  which changes when the content or the metadata of the object is updated.

  ## Attributes

  *   `bucketName` (*type:* `String.t`, *default:* `nil`) - Required. Google Cloud Storage bucket name (see
      [Bucket Name
      Requirements](https://cloud.google.com/storage/docs/naming#requirements)).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketName => String.t()
        }

  field(:bucketName)
end

defimpl Poison.Decoder, for: GoogleApi.StorageTransfer.V1.Model.GcsData do
  def decode(value, options) do
    GoogleApi.StorageTransfer.V1.Model.GcsData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StorageTransfer.V1.Model.GcsData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
