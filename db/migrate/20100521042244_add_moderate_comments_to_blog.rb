# This migration comes from bcms_blog (originally 20100521042244)
class AddModerateCommentsToBlog < ActiveRecord::Migration
  def self.up
    add_content_column prefix(:blogs), :moderate_comments, :boolean, :default => true
  end

  def self.down
    remove_content_column prefix(:blogs), :moderate_comments
    remove_content_column prefix(:blog_versions), :moderate_comments
  end
end
