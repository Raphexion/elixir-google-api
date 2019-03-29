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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetection do
  @moduledoc """
  Relevant information for the image from the Internet.

  ## Attributes

  - bestGuessLabels ([GoogleCloudVisionV1p4beta1WebDetectionWebLabel]): The service&#39;s best guess as to the topic of the request image. Inferred from similar images on the open web. Defaults to: `null`.
  - fullMatchingImages ([GoogleCloudVisionV1p4beta1WebDetectionWebImage]): Fully matching images from the Internet. Can include resized copies of the query image. Defaults to: `null`.
  - pagesWithMatchingImages ([GoogleCloudVisionV1p4beta1WebDetectionWebPage]): Web pages containing the matching images from the Internet. Defaults to: `null`.
  - partialMatchingImages ([GoogleCloudVisionV1p4beta1WebDetectionWebImage]): Partial matching images from the Internet. Those images are similar enough to share some key-point features. For example an original image will likely have partial matching for its crops. Defaults to: `null`.
  - visuallySimilarImages ([GoogleCloudVisionV1p4beta1WebDetectionWebImage]): The visually similar image results. Defaults to: `null`.
  - webEntities ([GoogleCloudVisionV1p4beta1WebDetectionWebEntity]): Deduced entities from similar images on the Internet. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bestGuessLabels =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebLabel.t()),
          :fullMatchingImages =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebImage.t()),
          :pagesWithMatchingImages =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebPage.t()),
          :partialMatchingImages =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebImage.t()),
          :visuallySimilarImages =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebImage.t()),
          :webEntities =>
            list(GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebEntity.t())
        }

  field(
    :bestGuessLabels,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebLabel,
    type: :list
  )

  field(
    :fullMatchingImages,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebImage,
    type: :list
  )

  field(
    :pagesWithMatchingImages,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebPage,
    type: :list
  )

  field(
    :partialMatchingImages,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebImage,
    type: :list
  )

  field(
    :visuallySimilarImages,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebImage,
    type: :list
  )

  field(
    :webEntities,
    as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetectionWebEntity,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetection do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p4beta1WebDetection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
