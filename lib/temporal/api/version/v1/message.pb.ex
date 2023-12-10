defmodule Temporal.Api.Version.V1.ReleaseInfo do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :version, 1, type: :string
  field :release_time, 2, type: Google.Protobuf.Timestamp, json_name: "releaseTime"
  field :notes, 3, type: :string
end

defmodule Temporal.Api.Version.V1.Alert do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :message, 1, type: :string
  field :severity, 2, type: Temporal.Api.Enums.V1.Severity, enum: true
end

defmodule Temporal.Api.Version.V1.VersionInfo do
  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :current, 1, type: Temporal.Api.Version.V1.ReleaseInfo
  field :recommended, 2, type: Temporal.Api.Version.V1.ReleaseInfo
  field :instructions, 3, type: :string
  field :alerts, 4, repeated: true, type: Temporal.Api.Version.V1.Alert
  field :last_update_time, 5, type: Google.Protobuf.Timestamp, json_name: "lastUpdateTime"
end