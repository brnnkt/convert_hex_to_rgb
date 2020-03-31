# convert_hex_to_rgb
[![Gem Version](https://badge.fury.io/rb/convert_hex_to_rgb.svg)](https://badge.fury.io/rb/convert_hex_to_rgb)

convert_hex_to_rgb is a Ruby library to provide basic HEX to RGB color conversion.

## Install

```
gem install convert_hex_to_rgb
```
## Usage

```
require 'convert_hex_to_rgb'

"#ff0000".hex_to_rgb => [255, 0, 0]
"ff0000".hex_to_rgb  => [255, 0, 0]

"f00".hex_to_rgb     => [255, 0, 0]
"#f00".hex_to_rgb    => [255, 0, 0]
```
## License

MIT
