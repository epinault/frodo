# frozen_string_literal: true

module Frodo
  module Concerns
    module Caching
      # Public: Runs the block with caching disabled.
      #
      # block - A query/describe/etc.
      #
      # Returns the result of the block
      def without_caching
        options[:use_cache] = false
        yield
      ensure
        options.delete(:use_cache)
      end

      private

      # Internal: Cache to use for the caching middleware
      def cache
        options[:cache]
      end
    end
  end
end
