require 'rails_helper'

RSpec.describe Bookmark,'モデルに関するテスト', type: :model do
  describe 'アソシエーションのテスト' do
    context 'Staffモデルとの関係' do
      it '1:Nとなっている' do
        expect(Bookmark.reflect_on_association(:staff).macro).to eq :belongs_to
      end
    end
    context 'Informationモデルとの関係' do
      it '1:Nとなっている' do
        expect(Bookmark.reflect_on_association(:information).macro).to eq :belongs_to
      end
    end
  end
end