class RenameCommentToOpinion < ActiveRecord::Migration
  def up
    rename_column :comments, :comment, :opinion
  end

  def down
    rename_column :comments, :opinion, :comment
  end
end
