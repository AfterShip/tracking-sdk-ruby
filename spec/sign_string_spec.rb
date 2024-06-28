require 'spec_helper'
require 'aftership-tracking-sdk/sign_string'

RSpec.describe 'Aftership::API::SignString' do
  describe '.sign' do
    let(:params) { { 'key1' => 'value1', 'key2' => 'value2' } }
    let(:private_key) { 'your_private_key' }

    it 'returns a valid aes signature' do
      string_to_sign = 'your_string_to_sign'
      test_aes_secret = 'assk_9a4d732fc662458fa6fc156e7a28d32b'
      signature = AftershipAPI::SignString.sign_aes(string_to_sign, test_aes_secret)
      expect(signature).to be_a(String)
      expect(signature).to eql('kOPTmtEx1bm9+3euIiFv+uh/kPmTcOioy8oFo8Ol1Z4=')
    end
  end
end