class ApplicationController < ActionController::Base
  # 共通処理を記述（例：全てのアクションで認証チェック等）

  # このコントローラーで共通処理を使う場合は、ここにメソッドを定義
  # ユーザー情報の設定処理（ユーザー情報をすべてのビューで使用したい場合に有用）
  before_action :set_user

  private

  def set_user
    # 例: ログイン中のユーザーを @user にセット
    @user = User.find(session[:user_id]) if session[:user_id]
  end
end
