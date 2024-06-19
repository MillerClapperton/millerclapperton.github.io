Jekyll::Hooks.register :site, :post_read do |site|
  site.pages.each do |page|
    if page.path.start_with?("docs/")
      site.data["docs"] ||= []
      path_parts = page.path.sub("docs/", "").split("/")
      build_tree(site.data["docs"], path_parts, page)
    end
  end
end

def build_tree(tree, parts, page)
  return if parts.empty?
  current_part = parts.shift
  if parts.empty?
    tree << { "title" => page.data["title"], "url" => page.url }
  else
    subtree = tree.find { |i| i["title"] == current_part } || { "title" => current_part, "items" => [] }
    tree << subtree unless tree.include?(subtree)
    build_tree(subtree["items"], parts, page)
  end
end
