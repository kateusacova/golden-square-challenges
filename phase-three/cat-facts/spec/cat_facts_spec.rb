require_relative "../lib/cat_facts.rb"

RSpec.describe CatFacts do
  it "returns random cat fact" do
    requester = double :requester
    expect(requester).to receive(:get)
    .with(URI("https://catfact.ninja/fact"))
    .and_return('{"fact":"A queen (female cat) can begin mating when she is between 5 and 9 months old.","length":77}')
    fact = CatFacts.new(requester)
    expect(fact.provide).to eq "Cat fact: A queen (female cat) can begin mating when she is between 5 and 9 months old."
  end
end