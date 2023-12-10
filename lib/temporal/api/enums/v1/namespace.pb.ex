defmodule Temporal.Api.Enums.V1.NamespaceState do
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :NAMESPACE_STATE_UNSPECIFIED, 0
  field :NAMESPACE_STATE_REGISTERED, 1
  field :NAMESPACE_STATE_DEPRECATED, 2
  field :NAMESPACE_STATE_DELETED, 3
end

defmodule Temporal.Api.Enums.V1.ArchivalState do
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :ARCHIVAL_STATE_UNSPECIFIED, 0
  field :ARCHIVAL_STATE_DISABLED, 1
  field :ARCHIVAL_STATE_ENABLED, 2
end

defmodule Temporal.Api.Enums.V1.ReplicationState do
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :REPLICATION_STATE_UNSPECIFIED, 0
  field :REPLICATION_STATE_NORMAL, 1
  field :REPLICATION_STATE_HANDOVER, 2
end