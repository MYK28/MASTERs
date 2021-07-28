require 'rails_helper'

RSpec.describe Information,'モデルに関するテスト', type: :model do
  describe 'アソシエーションのテスト' do
    context 'Checkモデルとの関係' do
      it '1:Nとなっている' do
        expect(Information.reflect_on_association(:checks).macro).to eq :has_many
      end
    end
    context 'Commentモデルとの関係' do
      it '1:Nとなっている' do
        expect(Information.reflect_on_association(:comments).macro).to eq :has_many
      end
    end
    context 'Bookmarkモデルとの関係' do
      it '1:Nとなっている' do
        expect(Information.reflect_on_association(:bookmarks).macro).to eq :has_many
      end
    end
  end
end