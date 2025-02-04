# frozen_string_literal: true
require_relative 'base'
require_relative 'access_method'

module Figo
  module Model
    class Service < Base
      # @return [String] figo ID of financial service provider.
      attr_accessor :id

      # @return [String] Name of the financial service provider.
      attr_accessor :name

      # @return [Object]
      attr_accessor :icon

      # @return [Boolean] Indicates if access to financial source is supported by the figo API.
      attr_accessor :supported

      # @return [String] Country in which the financial service provider operates.
      attr_accessor :country

      # @return [Object]
      attr_accessor :language

      # @return [Object]
      attr_accessor :group

      # @return [Array] List of access methods available for this catalog item.
      attr_reader :access_methods
      def access_methods=(array)
        @access_methods = array.map { |hash| AccessMethod.new hash }
      end
    end
  end
end
