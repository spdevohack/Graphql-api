module Mutations
  class CreateLink < BaseMutation
    # arguments passed to the `resolve` method
    argument :description, String, required: true
    argument :url, String, required: true

    # return type from the mutation
    type Types::LinkType

    def resolve(description: nil, url: nil)
      debugger
      Link.create!(
        description: description,
        url: url,
        employe: context[:current_employe]
      )
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")  
    end
  end
end