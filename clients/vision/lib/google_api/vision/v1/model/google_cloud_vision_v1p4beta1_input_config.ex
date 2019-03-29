# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1InputConfig do
  @moduledoc """
  The desired input location and metadata.

  ## Attributes

  - content (binary()): File content, represented as a stream of bytes. Note: As with all &#x60;bytes&#x60; fields, protobuffers use a pure binary representation, whereas JSON representations use base64.  Currently, this field only works for BatchAnnotateFiles requests. It does not work for AsyncBatchAnnotateFiles requests. Defaults to: `null`.
  - gcsSource (GoogleCloudVisionV1p4beta1GcsSource): The Google Cloud Storage location to read the input from. Defaults to: `null`.
  - mimeType (String.t): The type of the file. Currently only \&quot;application/pdf\&quot; and \&quot;image/tiff\&quot; are supported. Wildcards are not supported. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => any(),
          :gcsSource => GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1GcsSource.t(),
          :mimeType => any()
        }

  field(:content)
  field(:gcsSource, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1GcsSource)
  field(:mimeType)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1InputConfig do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1InputConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1InputConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
