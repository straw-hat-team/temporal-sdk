defmodule Temporal.Api.Common.V1.DataBlob do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :encoding_type, 1,
    type: Temporal.Api.Enums.V1.EncodingType,
    json_name: "encodingType",
    enum: true

  field :data, 2, type: :bytes
end

defmodule Temporal.Api.Common.V1.Payloads do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :payloads, 1, repeated: true, type: Temporal.Api.Common.V1.Payload
end

defmodule Temporal.Api.Common.V1.Payload.MetadataEntry do
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: :bytes
end

defmodule Temporal.Api.Common.V1.Payload do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :metadata, 1,
    repeated: true,
    type: Temporal.Api.Common.V1.Payload.MetadataEntry,
    map: true

  field :data, 2, type: :bytes
end

defmodule Temporal.Api.Common.V1.SearchAttributes.IndexedFieldsEntry do
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Common.V1.Payload
end

defmodule Temporal.Api.Common.V1.SearchAttributes do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :indexed_fields, 1,
    repeated: true,
    type: Temporal.Api.Common.V1.SearchAttributes.IndexedFieldsEntry,
    json_name: "indexedFields",
    map: true
end

defmodule Temporal.Api.Common.V1.Memo.FieldsEntry do
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Common.V1.Payload
end

defmodule Temporal.Api.Common.V1.Memo do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :fields, 1, repeated: true, type: Temporal.Api.Common.V1.Memo.FieldsEntry, map: true
end

defmodule Temporal.Api.Common.V1.Header.FieldsEntry do
  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Common.V1.Payload
end

defmodule Temporal.Api.Common.V1.Header do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :fields, 1, repeated: true, type: Temporal.Api.Common.V1.Header.FieldsEntry, map: true
end

defmodule Temporal.Api.Common.V1.WorkflowExecution do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :workflow_id, 1, type: :string, json_name: "workflowId"
  field :run_id, 2, type: :string, json_name: "runId"
end

defmodule Temporal.Api.Common.V1.WorkflowType do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, type: :string
end

defmodule Temporal.Api.Common.V1.ActivityType do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :name, 1, type: :string
end

defmodule Temporal.Api.Common.V1.RetryPolicy do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :initial_interval, 1, type: Google.Protobuf.Duration, json_name: "initialInterval"
  field :backoff_coefficient, 2, type: :double, json_name: "backoffCoefficient"
  field :maximum_interval, 3, type: Google.Protobuf.Duration, json_name: "maximumInterval"
  field :maximum_attempts, 4, type: :int32, json_name: "maximumAttempts"

  field :non_retryable_error_types, 5,
    repeated: true,
    type: :string,
    json_name: "nonRetryableErrorTypes"
end

defmodule Temporal.Api.Common.V1.MeteringMetadata do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :nonfirst_local_activity_execution_attempts, 13,
    type: :uint32,
    json_name: "nonfirstLocalActivityExecutionAttempts"
end

defmodule Temporal.Api.Common.V1.WorkerVersionStamp do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :build_id, 1, type: :string, json_name: "buildId"
  field :bundle_id, 2, type: :string, json_name: "bundleId"
  field :use_versioning, 3, type: :bool, json_name: "useVersioning"
end

defmodule Temporal.Api.Common.V1.WorkerVersionCapabilities do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :build_id, 1, type: :string, json_name: "buildId"
  field :use_versioning, 2, type: :bool, json_name: "useVersioning"
end

defmodule Temporal.Api.Common.V1.ResetOptions do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  oneof :target, 0

  field :first_workflow_task, 1,
    type: Google.Protobuf.Empty,
    json_name: "firstWorkflowTask",
    oneof: 0

  field :last_workflow_task, 2,
    type: Google.Protobuf.Empty,
    json_name: "lastWorkflowTask",
    oneof: 0

  field :workflow_task_id, 3, type: :int64, json_name: "workflowTaskId", oneof: 0
  field :build_id, 4, type: :string, json_name: "buildId", oneof: 0

  field :reset_reapply_type, 10,
    type: Temporal.Api.Enums.V1.ResetReapplyType,
    json_name: "resetReapplyType",
    enum: true

  field :current_run_only, 11, type: :bool, json_name: "currentRunOnly"
end