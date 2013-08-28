class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.belongs_to          :user, index: true, null: false
      t.belongs_to          :campaign, index: true
      t.belongs_to          :assigned_to, index: true
      t.string              :first_name
      t.string              :last_name
      t.string              :title
      t.string              :salutation
      t.string              :first_name
      t.string              :last_name
      t.string              :company
      t.string              :source
      t.string              :state
      t.string              :referred_by
      t.string              :email
      t.string              :blog
      t.string              :linkedin
      t.string              :facebook
      t.string              :twitter
      t.string              :skype
      t.integer             :rating
      t.boolean             :do_not_call, default: false
      t.datetime            :deleted_at
      t.text                :background_info
      t.timestamps
    end
  end
end
