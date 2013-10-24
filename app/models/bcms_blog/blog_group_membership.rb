module BcmsBlog
  class BlogGroupMembership < BcmsBlog
    belongs_to :blog, :class_name => "BcmsBlog::Blog"
    belongs_to :group, :class_name => "Cms::Group"
  end
end
