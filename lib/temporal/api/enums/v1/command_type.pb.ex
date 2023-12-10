defmodule Temporal.Api.Enums.V1.CommandType do
  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :COMMAND_TYPE_UNSPECIFIED, 0
  field :COMMAND_TYPE_SCHEDULE_ACTIVITY_TASK, 1
  field :COMMAND_TYPE_REQUEST_CANCEL_ACTIVITY_TASK, 2
  field :COMMAND_TYPE_START_TIMER, 3
  field :COMMAND_TYPE_COMPLETE_WORKFLOW_EXECUTION, 4
  field :COMMAND_TYPE_FAIL_WORKFLOW_EXECUTION, 5
  field :COMMAND_TYPE_CANCEL_TIMER, 6
  field :COMMAND_TYPE_CANCEL_WORKFLOW_EXECUTION, 7
  field :COMMAND_TYPE_REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION, 8
  field :COMMAND_TYPE_RECORD_MARKER, 9
  field :COMMAND_TYPE_CONTINUE_AS_NEW_WORKFLOW_EXECUTION, 10
  field :COMMAND_TYPE_START_CHILD_WORKFLOW_EXECUTION, 11
  field :COMMAND_TYPE_SIGNAL_EXTERNAL_WORKFLOW_EXECUTION, 12
  field :COMMAND_TYPE_UPSERT_WORKFLOW_SEARCH_ATTRIBUTES, 13
  field :COMMAND_TYPE_PROTOCOL_MESSAGE, 14
  field :COMMAND_TYPE_MODIFY_WORKFLOW_PROPERTIES, 16
end