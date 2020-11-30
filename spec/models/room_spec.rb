require 'rails_helper'
RSpec.describe Room do
  before do
    @room = FactoryBot.build(:room)
    @room.room_id  {1}
    @room.user_id  {1}
  end

  describe 'ルーム新規作成' do
    context '新規作成がうまくいくとき' do
      it "name, user_idが存在すれば登録できる" do
        expect(@room).to be_valid
      end
  end
 end
end

