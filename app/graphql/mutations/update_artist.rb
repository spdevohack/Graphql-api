class Mutations::UpdateArtist < Mutations::BaseMutation
  argument :id, ID, required: true
  argument :first_name, String, required: true
  argument :last_name, String, required: true
  argument :email, String, required: true

  field :artist, Types::ArtistType, null: false
  field :errors, [String], null: false


  def resolve(first_name:nil, last_name:nil, email:nil, id:nil)
    artist = Artist.find(id)
    # debugger
    artist.update(id: id ,first_name: first_name, last_name: last_name, email: email)
    if artist.update
      {
        artist: artist,
        errors: []
      }
     else{
        artist: nil,
        errors: artist.errors.full_messages
      }
    end
  end
end