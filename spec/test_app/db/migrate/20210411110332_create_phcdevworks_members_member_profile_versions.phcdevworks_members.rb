# This migration comes from phcdevworks_members (originally 20170517064030)
class CreatePhcdevworksMembersMemberProfileVersions < ActiveRecord::Migration[6.0]
  TEXT_BYTES = 1_073_741_823
  def change
    create_table :phcdevworks_members_member_profile_versions do |t|

      t.string   :item_type, {:null=>false}
      t.integer  :item_id,   null: false
      t.string   :event,     null: false
      t.string   :whodunnit
      t.text     :object, limit: TEXT_BYTES
      t.datetime :created_at

    end

    add_index :phcdevworks_members_member_profile_versions, %i(item_type item_id), :name => 'member_profile_versions'

  end
end
