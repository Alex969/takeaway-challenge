require 'takeaway'

describe Takeaway do
  subject(:takeaway) { described_class.new(menu: menu) }

  let(:menu) { double(:menu, return_menu: printed_menu) }
  let(:printed_menu) { "Fire noodles: £10.50" }

  it 'shows the menu' do
    expect(takeaway.show_menu).to eq(printed_menu)
  end
end