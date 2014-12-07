# coding: utf-8

require 'forwardable'
require 'date'

require 'necromancer/conversions'
require 'necromancer/context'
require 'necromancer/converter'
require 'necromancer/null_converter'
require 'necromancer/converters/array'
require 'necromancer/converters/boolean'
require 'necromancer/converters/date_time'
require 'necromancer/converters/float'
require 'necromancer/converters/integer'
require 'necromancer/converters/range'
require 'necromancer/conversion_target'
require 'necromancer/version'

module Necromancer
  # Raised when cannot conver to a given type
  ConversionTypeError = Class.new(StandardError)

  # Raised when conversion type is not available
  NoTypeConversionAvailableError = Class.new(StandardError)

  # Create a conversion instance
  #
  # @example
  #   converter = Necromancer.new
  #
  # @return [Context]
  #
  # @api private
  def new
    Context.new
  end

  module_function :new
end # Necromancer
