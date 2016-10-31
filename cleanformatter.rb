#!/usr/bin/env ruby
# encoding: utf-8

module XCPretty
  class CleanFormatter < Formatter

    def pretty_format(text)
      if text.include? "Can't find keyplane that supports type 4 for keyboard"
        return
      end
      parser.parse(text)
    end
    
  end
end

CleanFormatter
