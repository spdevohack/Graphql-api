class AddLinkToEmploye < ActiveRecord::Migration[7.0]
  def change
    add_reference :links, :employe
  end
end
