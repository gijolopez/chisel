class Text
  def paragraph_tags(input)
    header = "<h"
    list1 = "<ul>"
    list2 = "<ol>"
    p_tags = input.split("\n\n").map do |line|
      if line.include?(header) || line.include?(list1) || line.include?(list2)
        line
      else
        "<p>\n#{line}\n</p>"#.delete("\n")
      end
    end.join("\n\n")
  end

  def header1_tags(input)
    h1_tags = input.split("\n").map do |e|
      if e.start_with?("# ")
        "<h1>#{e[2..-1]}</h1>"
      else
        e
      end
    end
    h1_tags.join("\n")
  end

  def header2_tags(input)
    h2_tags = input.split("\n").map do |e|
      if e.start_with?("## ")
        "<h2>#{e[3..-1]}</h2>"
      else
        e
      end
    end
    h2_tags.join("\n")
  end

  def header3_tags(input)
    h3_tags = input.split("\n").map do |e|
      if e.start_with?("### ")
        "<h3>#{e[4..-1]}</h3>"
      else
        e
      end
    end
      h3_tags.join("\n")
  end

  def header4_tags(input)
    h4_tags = input.split("\n").map do |e|
      if e.start_with?("#### ")
        "<h4>#{e[5..-1]}</h4>"
      else
        e
      end
    end
      h4_tags.join("\n")
  end

  def header5_tags(input)
    h5_tags = input.split("\n").map do |e|
      if e.start_with?("##### ")
        "<h5>#{e[6..-1]}</h5>"
      else
        e
      end
    end
      h5_tags.join("\n")
  end

  def header6_tags(input)
    h6_tags = input.split("\n").map do |e|
      if e.start_with?("###### ")
        "<h6>#{e[7..-1]}</h6>"
      else
        e
      end
    end
      h6_tags.join("\n")
  end

  def stronged_tags(input)
    input.split("\n").map do |line|
      if line.include?("**")
        a = line.split.map do |word|
          if word.start_with?("**")
            "<strong>#{word[2..-1]}"
          elsif word.end_with?("**")
             "#{word[0..-3]}</strong>"
          else
            word
          end
        end.join(" ")
      else
        line
      end
    end.join("\n")
  end

  def emphasized_tags(input)
    input.split("\n").map do |line|
      if line.include?("*")
        a = line.split.map do |word|
          if word.include?("*")
            "<em>#{word[1..-2]}</em>"
          else
            word
          end
        end.join(" ")
      else
        line
      end
    end.join("\n")
  end
end
