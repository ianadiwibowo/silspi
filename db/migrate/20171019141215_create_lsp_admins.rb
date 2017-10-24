class CreateLspAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :lsp_admins do |t|
      t.belongs_to :user, index: { name: 'idx_lsp_admins_user' }

      t.timestamps
    end
  end
end
