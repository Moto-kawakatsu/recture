require 'rails_helper'
RSpec.describe User do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "name, email, password, password_confirmation, genre, grade, class_number, student_numberが存在すれば登録できる" do
        expect(@user).to be_valid
      end

      it "passwordが6文字以上で半角英数字混合であれば登録できる" do
        @user.password = "aaaa111"
        @user.password_confirmation = "aaaa111"
        expect(@user).to be_valid
      end

      it "emailに@が入っていれば登録できる" do
        @user.email = "aa@aaa"
        expect(@user).to be_valid
      end
  end

  context '新規登録がうまくいかないとき' do
    it "nameが空だと登録できない" do
      @user.name = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("名前 が入力されていません。")
    end

    it "emailが空だと登録できない" do
      @user.email = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("メールアドレス が入力されていません。")
    end

    it "emailが重複していると登録できない" do
      @user.save
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include("メールアドレス は既に使用されています。")
    end

    it "emailに@がないと登録できない" do
      @user.email = "aaaaaa.aaaaa"
      @user.valid?
      expect(@user.errors.full_messages).to include("メールアドレス は有効でありません。")
    end

    it "passwordが空だと登録できない" do
      @user.password = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワード が入力されていません。")
    end

    it "password_confirmationが空だと登録できない" do
      @user.password_confirmation = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("確認用パスワード が内容とあっていません。")
    end

    it "password_confirmationがpasswordと同じでないと登録できない" do
      @user.password = "aaaa111"
      @user.password_confirmation = "bbbb111"
      @user.valid?
      expect(@user.errors.full_messages).to include("確認用パスワード が内容とあっていません。")
    end

    it "passwordが５文字以下だと登録できない" do
      @user.password = "aa000"
      @user.password_confirmation = "aa000"
      @user.valid?
      expect(@user.errors.full_messages).to include("パスワード は6文字以上に設定して下さい。")
    end

    it "genreが空だと登録できない" do
      @user.genre = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("ユーザータイプ が入力されていません。")
    end

    it "gradeが空だと登録できない" do
      @user.grade = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("学年 が入力されていません。")
    end

    it "class_numberが空だと登録できない" do
      @user.class_number = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("クラス が入力されていません。")
    end

    it "student_numberが空だと登録できない" do
      @user.student_number = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("番号 が入力されていません。")
    end

  end

end
end

