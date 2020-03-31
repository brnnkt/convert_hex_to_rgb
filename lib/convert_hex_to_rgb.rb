require "convert_hex_to_rgb/version"
module ConvertHexToRgb
  class Error < StandardError; end
  HEX_COLOR_REGEX = /^([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$/

  def hex_to_rgb
    symbols_from_input = self
    symbols_from_input.gsub!('#','')
    if !!(symbols_from_input =~ HEX_COLOR_REGEX)

      current_pattern =
      case symbols_from_input.length
      when 3
        /./
      when 6
        /../
      end

      prepared_array = symbols_from_input.scan current_pattern

      rgb =
      prepared_array.map do |d|
        digit =
        case symbols_from_input.length
        when 3
          d * 2
        when 6
          d
        end
        digit.to_i(16)
      end
    end
  end
end

class String
  include ConvertHexToRgb
end