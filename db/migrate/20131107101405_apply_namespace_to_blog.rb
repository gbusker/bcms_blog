class ApplyNamespaceToBlog < ActiveRecord::Migration
  def up
    ['blog_comment_versions', 'blog_comments', 'blog_group_memberships',
     'blog_post_versions', 'blog_posts', 'blog_versions', 'blogs']. each do |tablename|

      rename_table "cms_#{tablename}", "bcms_blog_#{tablename}"
    end
  end

  def down
    ['blog_comment_versions', 'blog_comments', 'blog_group_memberships',
     'blog_post_versions', 'blog_posts', 'blog_versions', 'blogs']. each do |tablename|

      rename_table "bcms_blog_#{tablename}", "cms_#{tablename}"
    end
  end
end
