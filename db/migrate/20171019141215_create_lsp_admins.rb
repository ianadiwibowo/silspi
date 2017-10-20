class CreateLspAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :lsp_admins do |t|
      t.belongs_to :user

      t.timestamps
    end
  end
end
