defmodule Temporal.Api.Enums.V1.QueryResultType do
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :QUERY_RESULT_TYPE_UNSPECIFIED, 0
  field :QUERY_RESULT_TYPE_ANSWERED, 1
  field :QUERY_RESULT_TYPE_FAILED, 2
end

defmodule Temporal.Api.Enums.V1.QueryRejectCondition do
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :QUERY_REJECT_CONDITION_UNSPECIFIED, 0
  field :QUERY_REJECT_CONDITION_NONE, 1
  field :QUERY_REJECT_CONDITION_NOT_OPEN, 2
  field :QUERY_REJECT_CONDITION_NOT_COMPLETED_CLEANLY, 3
end