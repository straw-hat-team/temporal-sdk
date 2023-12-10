defmodule Temporal.Api.Errordetails.V1.NotFoundFailure do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :current_cluster, 1, type: :string, json_name: "currentCluster"
  field :active_cluster, 2, type: :string, json_name: "activeCluster"
end

defmodule Temporal.Api.Errordetails.V1.WorkflowExecutionAlreadyStartedFailure do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :start_request_id, 1, type: :string, json_name: "startRequestId"
  field :run_id, 2, type: :string, json_name: "runId"
end

defmodule Temporal.Api.Errordetails.V1.NamespaceNotActiveFailure do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string
  field :current_cluster, 2, type: :string, json_name: "currentCluster"
  field :active_cluster, 3, type: :string, json_name: "activeCluster"
end

defmodule Temporal.Api.Errordetails.V1.NamespaceInvalidStateFailure do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string
  field :state, 2, type: Temporal.Api.Enums.V1.NamespaceState, enum: true

  field :allowed_states, 3,
    repeated: true,
    type: Temporal.Api.Enums.V1.NamespaceState,
    json_name: "allowedStates",
    enum: true
end

defmodule Temporal.Api.Errordetails.V1.NamespaceNotFoundFailure do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string
end

defmodule Temporal.Api.Errordetails.V1.NamespaceAlreadyExistsFailure do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"
end

defmodule Temporal.Api.Errordetails.V1.ClientVersionNotSupportedFailure do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :client_version, 1, type: :string, json_name: "clientVersion"
  field :client_name, 2, type: :string, json_name: "clientName"
  field :supported_versions, 3, type: :string, json_name: "supportedVersions"
end

defmodule Temporal.Api.Errordetails.V1.ServerVersionNotSupportedFailure do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :server_version, 1, type: :string, json_name: "serverVersion"

  field :client_supported_server_versions, 2,
    type: :string,
    json_name: "clientSupportedServerVersions"
end

defmodule Temporal.Api.Errordetails.V1.CancellationAlreadyRequestedFailure do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"
end

defmodule Temporal.Api.Errordetails.V1.QueryFailedFailure do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"
end

defmodule Temporal.Api.Errordetails.V1.PermissionDeniedFailure do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :reason, 1, type: :string
end

defmodule Temporal.Api.Errordetails.V1.ResourceExhaustedFailure do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :cause, 1, type: Temporal.Api.Enums.V1.ResourceExhaustedCause, enum: true
end

defmodule Temporal.Api.Errordetails.V1.SystemWorkflowFailure do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :workflow_execution, 1,
    type: Temporal.Api.Common.V1.WorkflowExecution,
    json_name: "workflowExecution"

  field :workflow_error, 2, type: :string, json_name: "workflowError"
end

defmodule Temporal.Api.Errordetails.V1.WorkflowNotReadyFailure do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"
end

defmodule Temporal.Api.Errordetails.V1.NewerBuildExistsFailure do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :default_build_id, 1, type: :string, json_name: "defaultBuildId"
end