class AddMbtiToMatch < ActiveRecord::Migration[5.2]
  def change
    add_reference :matches, :mbti, foreign_key: true
  end
end
