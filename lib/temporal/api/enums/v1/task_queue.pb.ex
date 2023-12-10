defmodule Temporal.Api.Enums.V1.TaskQueueKind do
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :TASK_QUEUE_KIND_UNSPECIFIED, 0
  field :TASK_QUEUE_KIND_NORMAL, 1
  field :TASK_QUEUE_KIND_STICKY, 2
end

defmodule Temporal.Api.Enums.V1.TaskQueueType do
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :TASK_QUEUE_TYPE_UNSPECIFIED, 0
  field :TASK_QUEUE_TYPE_WORKFLOW, 1
  field :TASK_QUEUE_TYPE_ACTIVITY, 2
end

defmodule Temporal.Api.Enums.V1.TaskReachability do
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :TASK_REACHABILITY_UNSPECIFIED, 0
  field :TASK_REACHABILITY_NEW_WORKFLOWS, 1
  field :TASK_REACHABILITY_EXISTING_WORKFLOWS, 2
  field :TASK_REACHABILITY_OPEN_WORKFLOWS, 3
  field :TASK_REACHABILITY_CLOSED_WORKFLOWS, 4
end