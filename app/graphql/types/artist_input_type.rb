# frozen_string_literal: true

module Types
  class ArtistInputType < Types::BaseInputObject

    argument :first_name, String
    argument :last_name, String
    argument :email, String
  end
end
