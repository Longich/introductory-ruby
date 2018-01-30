def convert_hash_syntax(old_syntax)
  regex = /:(\w+) *=> */
  old_syntax.gsub(regex, '\1: ')
end
