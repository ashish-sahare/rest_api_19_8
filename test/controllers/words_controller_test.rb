require "test_helper"

class WordsControllerTest < ActionDispatch::IntegrationTest
    RSpec.describe WordsController do
    describe 'GET index' do
      context 'when some words present' do
        it 'assigns @words' do
          word = Word.create(value: 'cat', language:'english')
          get :index
          expect(assigns(:words)).to eq([word])
        end
      end

      context 'when some words present' do
        it 'assigns @words' do
          word = Word.create
          get :index
          expect(assigns(:words)).to eq([word])
        end
      end


      it 'renders the index template' do
        get :index
        expect(response).to render_template(:index)
      end
    end
end
