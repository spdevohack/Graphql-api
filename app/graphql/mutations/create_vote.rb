module Mutations
  class CreateVote < BaseMutation
    argument :link_id, ID, required: false

    type Types::VoteType

    def resolve(link_id: nil)
      Vote.create!(
        link: Link.find(link_id),
        employe: context[:current_employe]
      )
    end
  end
end