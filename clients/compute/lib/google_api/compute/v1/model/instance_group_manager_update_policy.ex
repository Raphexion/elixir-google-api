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

defmodule GoogleApi.Compute.V1.Model.InstanceGroupManagerUpdatePolicy do
  @moduledoc """


  ## Attributes

  *   `instanceRedistributionType` (*type:* `String.t`, *default:* `nil`) - The instance redistribution policy for regional managed instance groups. Valid values are: - PROACTIVE (default): The group attempts to maintain an even distribution of VM instances across zones in the region. - NONE: For non-autoscaled groups, proactive redistribution is disabled. 
  *   `maxSurge` (*type:* `GoogleApi.Compute.V1.Model.FixedOrPercent.t`, *default:* `nil`) - The maximum number of instances that can be created above the specified targetSize during the update process. This value can be either a fixed number or, if the group has 10 or more instances, a percentage. If you set a percentage, the number of instances is rounded if necessary. The default value for maxSurge is a fixed value equal to the number of zones in which the managed instance group operates. At least one of either maxSurge or maxUnavailable must be greater than 0. Learn more about maxSurge.
  *   `maxUnavailable` (*type:* `GoogleApi.Compute.V1.Model.FixedOrPercent.t`, *default:* `nil`) - The maximum number of instances that can be unavailable during the update process. An instance is considered available if all of the following conditions are satisfied: - The instance's status is RUNNING. - If there is a health check on the instance group, the instance's health check status must be HEALTHY at least once. If there is no health check on the group, then the instance only needs to have a status of RUNNING to be considered available. This value can be either a fixed number or, if the group has 10 or more instances, a percentage. If you set a percentage, the number of instances is rounded if necessary. The default value for maxUnavailable is a fixed value equal to the number of zones in which the managed instance group operates. At least one of either maxSurge or maxUnavailable must be greater than 0. Learn more about maxUnavailable.
  *   `minimalAction` (*type:* `String.t`, *default:* `nil`) - Minimal action to be taken on an instance. Use this option to minimize disruption as much as possible or to apply a more disruptive action than is necessary. - To limit disruption as much as possible, set the minimal action to REFRESH. If your update requires a more disruptive action, Compute Engine performs the necessary action to execute the update. - To apply a more disruptive action than is strictly necessary, set the minimal action to RESTART or REPLACE. For example, Compute Engine does not need to restart a VM to change its metadata. But if your application reads instance metadata only when a VM is restarted, you can set the minimal action to RESTART in order to pick up metadata changes. 
  *   `mostDisruptiveAllowedAction` (*type:* `String.t`, *default:* `nil`) - Most disruptive action that is allowed to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to allow actions that do not need instance restart, RESTART to allow actions that can be applied without instance replacing or REPLACE to allow all possible actions. If the Updater determines that the minimal update action needed is more disruptive than most disruptive allowed action you specify it will not perform the update at all.
  *   `replacementMethod` (*type:* `String.t`, *default:* `nil`) - What action should be used to replace instances. See minimal_action.REPLACE
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of update process. You can specify either PROACTIVE so that the instance group manager proactively executes actions in order to bring instances to their target versions or OPPORTUNISTIC so that no action is proactively executed but the update will be performed as part of other actions (for example, resizes or recreateInstances calls).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instanceRedistributionType => String.t() | nil,
          :maxSurge => GoogleApi.Compute.V1.Model.FixedOrPercent.t() | nil,
          :maxUnavailable => GoogleApi.Compute.V1.Model.FixedOrPercent.t() | nil,
          :minimalAction => String.t() | nil,
          :mostDisruptiveAllowedAction => String.t() | nil,
          :replacementMethod => String.t() | nil,
          :type => String.t() | nil
        }

  field(:instanceRedistributionType)
  field(:maxSurge, as: GoogleApi.Compute.V1.Model.FixedOrPercent)
  field(:maxUnavailable, as: GoogleApi.Compute.V1.Model.FixedOrPercent)
  field(:minimalAction)
  field(:mostDisruptiveAllowedAction)
  field(:replacementMethod)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManagerUpdatePolicy do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceGroupManagerUpdatePolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManagerUpdatePolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
