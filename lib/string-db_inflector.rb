# frozen_string_literal: true

require_relative "string-db_inflector/version"

require 'dry-inflector'

module String::DbInflector
  class Error < StandardError; end

  @@db_inflector = Dry::Inflector.new

  refine String do
    # Pluralize word according to the database convention that a pluralized
    # word is always distinguishable from a singular word. This causes eg.
    # 'sheep' to be pluralized as 'sheeps'. It is guaranteed that
    # word.pluralize.sigularize is always equal to word
    #
    def pluralize
      r = @@db_inflector.pluralize(self)
      r == self ? "#{self}s" : r
    end

    # Singularize a word. The opposite operation of #pluralize
    def singularize
      r = @@db_inflector.singularize(self)
      if r == self
        if r.end_with?('s')
          r[0..-2]
        else
          raise ArgumentError "Can't singularize '#{self}'"
        end
      else
        r
      end
    end
  end
end

