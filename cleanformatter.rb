#!/usr/bin/env ruby
# encoding: utf-8

class CleanFormatter < XCPretty::Simple
	def pretty_format(text)
      if text.include? "Can't find keyplane that supports type 4 for keyboard"
        return
      end
      parser.parse(text)
    end
end

CleanFormatter
