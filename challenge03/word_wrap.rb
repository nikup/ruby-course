class String
  def word_wrap(line_width)
    source = self.dup.strip.squeeze(" ").squeeze("\r\n")
    end_of_line, space_or_end_of_line = /[\r\n]+/x, /\s|[\r\n]+/x
    result = []
    while source.length > line_width
      last_space = source.rindex(space_or_end_of_line, line_width) ||
                   source.index(space_or_end_of_line) || 
                   source.length

      line = source[0...last_space].strip.gsub(end_of_line, '')
      result.push(line) if line != ""

      source = source[last_space...source.length].strip
    end

    line = source.strip.gsub(end_of_line, '')
    result.push(line) if line != ""

    result
  end
end