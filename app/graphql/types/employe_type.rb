# frozen_string_literal: true

module Types
  class EmployeType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :email, String
    field :password_digest, String
    field :votes, [VoteType], null: false
    field :links, [LinkType], null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
