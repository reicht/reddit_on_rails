module LinksHelper

  def link_temp_block

  end

  def get_temp(link)
    link.likes.where(feels: 1).count - link.likes.where(feels: 0).count
  end
end
