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

defmodule GoogleApi.VMMigration.V1.Model.DatacenterConnector do
  @moduledoc """
  DatacenterConnector message describes a connector between the Source and GCP, which is installed on a vmware datacenter (an OVA vm installed by the user) to connect the Datacenter to GCP and support vm migration data transfer.

  ## Attributes

  *   `applianceInfrastructureVersion` (*type:* `String.t`, *default:* `nil`) - Output only. Appliance OVA version. This is the OVA which is manually installed by the user and contains the infrastructure for the automatically updatable components on the appliance.
  *   `applianceSoftwareVersion` (*type:* `String.t`, *default:* `nil`) - Output only. Appliance last installed update bundle version. This is the version of the automatically updatable components on the appliance.
  *   `availableVersions` (*type:* `GoogleApi.VMMigration.V1.Model.AvailableUpdates.t`, *default:* `nil`) - Output only. The available versions for updating this appliance.
  *   `bucket` (*type:* `String.t`, *default:* `nil`) - Output only. The communication channel between the datacenter connector and GCP.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the connector was created (as an API call, not when it was actually installed).
  *   `error` (*type:* `GoogleApi.VMMigration.V1.Model.Status.t`, *default:* `nil`) - Output only. Provides details on the state of the Datacenter Connector in case of an error.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The connector's name.
  *   `registrationId` (*type:* `String.t`, *default:* `nil`) - Immutable. A unique key for this connector. This key is internal to the OVA connector and is supplied with its creation during the registration process and can not be modified.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - The service account to use in the connector when communicating with the cloud.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the DatacenterConnector, as determined by the health checks.
  *   `stateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the state was last set.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last time the connector was updated with an API call.
  *   `upgradeStatus` (*type:* `GoogleApi.VMMigration.V1.Model.UpgradeStatus.t`, *default:* `nil`) - Output only. The status of the current / last upgradeAppliance operation.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The version running in the DatacenterConnector. This is supplied by the OVA connector during the registration process and can not be modified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applianceInfrastructureVersion => String.t() | nil,
          :applianceSoftwareVersion => String.t() | nil,
          :availableVersions => GoogleApi.VMMigration.V1.Model.AvailableUpdates.t() | nil,
          :bucket => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :error => GoogleApi.VMMigration.V1.Model.Status.t() | nil,
          :name => String.t() | nil,
          :registrationId => String.t() | nil,
          :serviceAccount => String.t() | nil,
          :state => String.t() | nil,
          :stateTime => DateTime.t() | nil,
          :updateTime => DateTime.t() | nil,
          :upgradeStatus => GoogleApi.VMMigration.V1.Model.UpgradeStatus.t() | nil,
          :version => String.t() | nil
        }

  field(:applianceInfrastructureVersion)
  field(:applianceSoftwareVersion)
  field(:availableVersions, as: GoogleApi.VMMigration.V1.Model.AvailableUpdates)
  field(:bucket)
  field(:createTime, as: DateTime)
  field(:error, as: GoogleApi.VMMigration.V1.Model.Status)
  field(:name)
  field(:registrationId)
  field(:serviceAccount)
  field(:state)
  field(:stateTime, as: DateTime)
  field(:updateTime, as: DateTime)
  field(:upgradeStatus, as: GoogleApi.VMMigration.V1.Model.UpgradeStatus)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.VMMigration.V1.Model.DatacenterConnector do
  def decode(value, options) do
    GoogleApi.VMMigration.V1.Model.DatacenterConnector.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMMigration.V1.Model.DatacenterConnector do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
