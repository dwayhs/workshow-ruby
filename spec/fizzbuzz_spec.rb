require 'rspec'
require_relative '../fizzbuzz'

RSpec.describe 'FizzBuzz' do
  describe 'FizzBuzz execution' do
    subject { FizzBuzz.new(list).run }

    context 'when list have 5 items' do
      let(:list) { [1..5] }
      it { expect(subject).to be [1, 2, 'Fizz', 4, 'Buzz']}
    end
  end
end
