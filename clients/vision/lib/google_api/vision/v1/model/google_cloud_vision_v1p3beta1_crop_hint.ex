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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1CropHint do
  @moduledoc """
  Single crop hint that is used to generate a new crop when serving an image.

  ## Attributes

  - boundingPoly (GoogleCloudVisionV1p3beta1BoundingPoly): The bounding polygon for the crop region. The coordinates of the bounding box are in the original image&#39;s scale. Defaults to: `null`.
  - confidence (float()): Confidence of this being a salient region.  Range [0, 1]. Defaults to: `null`.
  - importanceFraction (float()): Fraction of importance of this salient region with respect to the original image. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundingPoly => GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1BoundingPoly.t(),
          :confidence => any(),
          :importanceFraction => any()
        }

  field(:boundingPoly, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1BoundingPoly)
  field(:confidence)
  field(:importanceFraction)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1CropHint do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1CropHint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p3beta1CropHint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
