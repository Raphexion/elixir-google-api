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

defmodule GoogleApi.SafeBrowsing.V4.Api.EncodedFullHashes do
  @moduledoc """
  API calls for all endpoints tagged `EncodedFullHashes`.
  """

  alias GoogleApi.SafeBrowsing.V4.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """


  ## Parameters

  *   `connection` (*type:* `GoogleApi.SafeBrowsing.V4.Connection.t`) - Connection to server
  *   `encoded_request` (*type:* `String.t`) - A serialized FindFullHashesRequest proto.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:$.xgafv` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:clientId` (*type:* `String.t`) - A client ID that (hopefully) uniquely identifies the client implementation
          of the Safe Browsing API.
      *   `:clientVersion` (*type:* `String.t`) - The version of the client implementation.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.SafeBrowsing.V4.Model.FindFullHashesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec safebrowsing_encoded_full_hashes_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.SafeBrowsing.V4.Model.FindFullHashesResponse.t()}
          | {:error, Tesla.Env.t()}
  def safebrowsing_encoded_full_hashes_get(
        connection,
        encoded_request,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :clientId => :query,
      :clientVersion => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v4/encodedFullHashes/{encodedRequest}", %{
        "encodedRequest" => URI.encode(encoded_request, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.SafeBrowsing.V4.Model.FindFullHashesResponse{}]
    )
  end
end
