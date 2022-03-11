module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end


    field :items, 
    [Types::ItemType],
    null: false, 
    description: "Return a list of items"

    def items
      Item.where(artist_id: 2).order(title: :desc)
    end 


    field :artists, 
    [Types::ArtistType],
    null: false, 
    description: "Return a list of items"

    def artists()
      Artist.all.order(id: :desc)
    end 

    #Find Single Artist
    field :artist, Types::ArtistType, null: false do 
      argument :id, ID, required: true
    end

    def artist(id:)
      Artist.find(id)
    end


    #Find Single Item
    field :item, Types::ItemType, null: false do 
      argument :id, ID, required: true
    end

    def item(id:)
      Item.find(id)
    end


    field :links, [LinkType], null: false
    

    def links
      Link.all.order("id")
    end


    field :employes, [EmployeType], null: false

    def employes
      Employe.all 
    end

  end
end
