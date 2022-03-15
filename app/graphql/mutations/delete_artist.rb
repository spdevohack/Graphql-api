class Mutations::DeleteArtist < Mutations::BaseMutation
  argument :id, ID, required: true

  field :artist, Types::ArtistType, null: false
  field :errors, [String], null: false


  def resolve( id:nil)
    artist = Artist.find(id)
    # debugger
    artist.destroy
    if artist.destroy
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