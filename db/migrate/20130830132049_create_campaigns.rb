class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.uuid          :user_id, index: true
      t.uuid          :assigned_to, index: true
      t.string        :name
      t.string        :access
      t.string        :state
      t.decimal       :budget
      t.integer       :target_leads
      t.float         :target_conversion
      t.decimal       :target_revenue
      t.date          :starts_on
      t.date          :ends_on
      t.datetime      :deleted_at
      t.timestamps
    end
  end
end
