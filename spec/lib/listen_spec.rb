RSpec.describe Listen do
  describe '.to' do
    it 'initializes listener' do
      expect(Listen::Listener).to receive(:new).with('/path')
      described_class.to('/path')
    end
  end

  describe '.stop' do
    it 'stops all listeners' do
      expect(Listen::Listener.allocate).to receive(:stop)
      described_class.stop
    end
  end
end
