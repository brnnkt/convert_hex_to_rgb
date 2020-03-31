require 'convert_hex_to_rgb'
describe ConvertHexToRgb do
  bad_values = %w(#f #ff ffff 0234 wzz)
  red_in_hex = %w(#ff0000 ff0000 #f00 f00)

  it "has nil, because of wrong value" do
    bad_values.each do |bv|
      expect(bv.hex_to_rgb).to eql(nil)
    end
  end

  it "shows red color in rgb" do
    red_in_hex.each do |red|
      expect(red.hex_to_rgb).to eql([255, 0, 0])
    end
  end
end