class ChangeSurveys < ActiveRecord::Migration[5.2]
  def change
    remove_column(:surveys, :people_id, :int)
    add_column(:surveys, :person_id, :int)
    add_column(:surveys, :question_id, :int)
  end
end
