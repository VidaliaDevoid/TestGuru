class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    # Связи ответ-вопрос, вопрос-тест, тест-категория однозначны. 
    # То есть по id ответа пользователю можно получить вопрос, в каком тесте он был и в какой категории.
    create_table :users do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
