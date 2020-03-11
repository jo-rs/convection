# frozen_string_literal: true

module Types
  SubmissionType =
    GraphQL::ObjectType.define do
      name 'Submission'
      description 'Consignment Submission'

      field :additional_info, types.String
      field :artist_id, !types.String
      field :authenticity_certificate, types.Boolean
      field :category, Types::CategoryType
      field :created_at, GraphQL::Types::ISO8601DateTime
      field :currency, types.String
      field :depth, types.String
      field :dimensions_metric, types.String
      field :edition_number, types.String
      field :edition_size, types.Int
      field :edition, types.String
      field :height, types.String
      field :id, !types.ID, 'Uniq ID for this submission'
      field :internalID, types.ID, property: :id # Alias for MPv2 compatability
      field :location_city, types.String
      field :location_country, types.String
      field :location_state, types.String
      field :medium, types.String
      field :minimum_price_dollars, types.Int
      field :provenance, types.String
      field :signature, types.Boolean
      field :state, Types::StateType
      field :title, types.String
      field :user_id, !types.String
      field :width, types.String
      field :year, types.String

      field :assets, types[Types::AssetType]
    end
end