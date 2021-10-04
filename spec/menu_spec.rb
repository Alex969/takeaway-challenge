require 'menu'

describe Menu do
  subject(:menu) { described_class.new(dishes) }
  let(:dishes) do
    {
      fire_noodles: 10.50,
      cheese_burger: 12.60
    }
  end

  it 'holds a list of dishes with prices' do
    expect(menu.dishes).to eq(dishes)
  end

  it 'shows that list' do
    printed_menu = "Fire noodles £10.50, Cheese burger £12.60"
    expect(menu.return_menu).to eq(printed_menu)
  end
end