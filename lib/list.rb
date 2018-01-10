class List

  def ordered_list_item_tags(input)
    input.split("\n\n").map do |e|
      if e.start_with?("1")
        ordered = e.split("\n").map do |list|
          "<li>#{list[3..-1]}</li>"
        end.join("\n")
        "<ol>\n#{ordered}\n</ol>"
      else
        e
      end
    end.join("\n\n")
  end

  def unordered_list(input)
    input.split("\n\n").map do |e|
      if e.start_with?("*")
        unordered = e.split("\n").map do |list|
          "<li>#{list[2..-1]}</li>"
        end.join("\n")
        "<ul>\n#{unordered}\n</ul>"
      else
        e
      end
    end.join("\n\n")
  end
end
