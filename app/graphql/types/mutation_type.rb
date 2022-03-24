module Types
  class MutationType < Types::BaseObject
    field :create_artist, mutation: Mutations::CreateArtist
    field :create_item, mutation: Mutations::CreateItem
    field :create_link, mutation: Mutations::CreateLink
    field :create_employe, mutation: Mutations::CreateEmploye
    field :sign_in_employe, mutation: Mutations::SignInEmploye
    field :create_vote, mutation: Mutations::CreateVote
    field :update_artist, mutation: Mutations::UpdateArtist
    field :delete_artist, mutation: Mutations::DeleteArtist
    field :sign_out, mutation: Mutations::SignOut

  end
end
