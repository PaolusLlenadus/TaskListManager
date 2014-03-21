class AddIsCompletedToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :is_completed, :boolean
  end
end
