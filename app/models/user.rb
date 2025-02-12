class User < ApplicationRecord
  has_many :companies, dependent: :destroy  # ユーザーが削除されたら企業データも削除
end
