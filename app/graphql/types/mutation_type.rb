module Types
  class MutationType < Types::BaseObject
    field :create_artist, mutation: Mutations::CreateArtist
    field :create_item, mutation: Mutations::CreateItem
    field :create_link, mutation: Mutations::CreateLink
    # field :create_user, mutation: Mutations::CreateUser
    field :create_employe, mutation: Mutations::CreateEmploye
    field :sign_in_employe, mutation: Mutations::SignInEmploye
    field :create_vote, mutation: Mutations::CreateVote


  end
end
