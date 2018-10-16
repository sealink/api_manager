require 'active_support/all'
require 'action_controller'
require 'rest-client'
require 'rails'
require 'api_manager'
require 'active_record'
require 'spec_helper'

RSpec.describe APIManager, :vcr do
  describe '#get' do
    subject { APIManager.get(value) }

    context 'when valid url with html content type' do
      let(:value) { {
        url: "https://www.google.com",
        as: :html
      } }
      it 'the return value to exist' do
        expect(subject).to be_truthy
      end
    end

    context 'when valid url with raw content type' do
      let(:value) { {
        url: "https://www.google.com",
        as: :raw
      } }
      it 'the return value to exist' do
        expect(subject).to be_truthy
      end
    end

    context 'when valid url with json content type' do
      let(:value) { {
        url: "https://jsonplaceholder.typicode.com/todos/1",
        as: :json
      } }
      it 'the return value to exist' do
        expect(subject).to be_truthy
      end
    end

    context 'when valid url, error with response' do
      let(:value) { {
        url: "https://jsonplaceholder.typicode.com/todos/x",
        as: :json
      } }
      it 'the return value to exist' do
        expect { subject }.to raise_error(APIManager::ErrorWithResponse)
      end
    end

    context 'when invalid url' do
      let(:value) { { url: "x" } }
      it 'it should return an error without any response' do
        expect { subject }.to raise_error(APIManager::Error)
      end
    end
  end

  describe '#post' do
    subject { APIManager.post(value) }

    let(:value) { {
      url: "https://www.google.com",
      as: :html
    } }
    it 'the server to respond with a 405' do
      expect { subject }.to raise_error(APIManager::ErrorWithResponse)
    end
  end

  describe '#put' do
    subject { APIManager.put(value) }

    let(:value) { {
      url: "https://www.google.com",
      as: :html
    } }
    it 'the server to respond with a 405' do
      expect { subject }.to raise_error(APIManager::ErrorWithResponse)
    end
  end

  describe '#delete' do
    subject { APIManager.delete(value) }

    let(:value) { {
      url: "https://www.google.com",
      as: :html
    } }
    it 'the server to respond with a 405' do
      expect { subject }.to raise_error(APIManager::ErrorWithResponse)
    end
  end
end
