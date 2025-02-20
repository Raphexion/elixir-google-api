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

defmodule GoogleApi.Dataproc.V1.Model.GkeNodeConfig do
  @moduledoc """
  Parameters that describe cluster nodes.

  ## Attributes

  *   `accelerators` (*type:* `list(GoogleApi.Dataproc.V1.Model.GkeNodePoolAcceleratorConfig.t)`, *default:* `nil`) - Optional. A list of hardware accelerators (https://cloud.google.com/compute/docs/gpus) to attach to each node.
  *   `bootDiskKmsKey` (*type:* `String.t`, *default:* `nil`) - Optional. The Customer Managed Encryption Key (CMEK) (https://cloud.google.com/kubernetes-engine/docs/how-to/using-cmek) used to encrypt the boot disk attached to each node in the node pool. Specify the key using the following format: projects/KEY_PROJECT_ID/locations/LOCATION /keyRings/RING_NAME/cryptoKeys/KEY_NAME.
  *   `localSsdCount` (*type:* `integer()`, *default:* `nil`) - Optional. The number of local SSD disks to attach to the node, which is limited by the maximum number of disks allowable per zone (see Adding Local SSDs (https://cloud.google.com/compute/docs/disks/local-ssd)).
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Optional. The name of a Compute Engine machine type (https://cloud.google.com/compute/docs/machine-types).
  *   `minCpuPlatform` (*type:* `String.t`, *default:* `nil`) - Optional. Minimum CPU platform (https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform) to be used by this instance. The instance may be scheduled on the specified or a newer CPU platform. Specify the friendly names of CPU platforms, such as "Intel Haswell"` or Intel Sandy Bridge".
  *   `preemptible` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether the nodes are created as legacy preemptible VM instances (https://cloud.google.com/compute/docs/instances/preemptible). Also see Spot VMs, preemptible VM instances without a maximum lifetime. Legacy and Spot preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role).
  *   `spot` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether the nodes are created as Spot VM instances (https://cloud.google.com/compute/docs/instances/spot). Spot VMs are the latest update to legacy preemptible VMs. Spot VMs do not have a maximum lifetime. Legacy and Spot preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accelerators =>
            list(GoogleApi.Dataproc.V1.Model.GkeNodePoolAcceleratorConfig.t()) | nil,
          :bootDiskKmsKey => String.t() | nil,
          :localSsdCount => integer() | nil,
          :machineType => String.t() | nil,
          :minCpuPlatform => String.t() | nil,
          :preemptible => boolean() | nil,
          :spot => boolean() | nil
        }

  field(:accelerators, as: GoogleApi.Dataproc.V1.Model.GkeNodePoolAcceleratorConfig, type: :list)
  field(:bootDiskKmsKey)
  field(:localSsdCount)
  field(:machineType)
  field(:minCpuPlatform)
  field(:preemptible)
  field(:spot)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.GkeNodeConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.GkeNodeConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.GkeNodeConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
