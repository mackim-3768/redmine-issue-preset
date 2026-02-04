class CreateStencilTemplates < ActiveRecord::Migration[6.1]
  def change
    create_table :stencil_templates do |t|
      t.references :tracker, foreign_key: true
      t.text :body
      t.timestamps
    end
  end
end
