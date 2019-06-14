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

defmodule GoogleApi.BigQuery.V2.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.BigQuery.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Returns the email address of the service account for your project used for interactions with Google Cloud KMS.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): Project ID for which the service account is requested.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.GetServiceAccountResponse{}} on success
  {:error, info} on failure
  """
  @spec bigquery_projects_get_service_account(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.GetServiceAccountResponse.t()}
          | {:error, Tesla.Env.t()}
  def bigquery_projects_get_service_account(
        connection,
        project_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/bigquery/v2/projects/{projectId}/serviceAccount", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.GetServiceAccountResponse{}])
  end

  @doc """
  Lists all projects to which you have been granted any project role.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): Maximum number of results to return
    - :pageToken (String.t): Page token, returned by a previous call, to request the next page of results

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.ProjectList{}} on success
  {:error, info} on failure
  """
  @spec bigquery_projects_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.ProjectList.t()} | {:error, Tesla.Env.t()}
  def bigquery_projects_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/bigquery/v2/projects", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.ProjectList{}])
  end
end
