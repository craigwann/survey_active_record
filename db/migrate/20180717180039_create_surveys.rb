class CreateSurveys < ActiveRecord::Migration[5.2]
  def change
    create_table(:surveys) do |t|
     t.column(:title, :string)
     t.column(:people_id, :int)

   end
  end
end
