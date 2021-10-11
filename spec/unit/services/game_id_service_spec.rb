require 'services/game_id_service'

describe GameIdService do
  it 'returns a random 6 letter ID' do
    result = GameIdService.random_id
    puts result
    expect(result.length).to eq 6
  end
end