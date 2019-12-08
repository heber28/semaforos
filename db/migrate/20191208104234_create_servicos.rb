class CreateServicos < ActiveRecord::Migration[6.0]
  def change
    create_table :servicos do |t|
      t.date :data
      t.integer :lampada_127x100_vermelho
      t.integer :lampada_127x100_amarelo
      t.integer :lampada_127x100_verde
      t.integer :lampada_220x100_vermelho
      t.integer :lampada_220x100_amarelo
      t.integer :lampada_220x100_verde
      t.integer :lente_vermelho
      t.integer :lente_amarelo
      t.integer :lente_verde
      t.text :servico_executado
      t.string :numero_os
      t.time :hora_inicial
      t.time :hora_final
      t.boolean :controlador_brascontrol
      t.boolean :controlador_mecanico
      t.boolean :controlador_tesc
      t.boolean :controlador_dataprom
      t.boolean :controlador_digicon
      t.boolean :porta_foco_t
      t.boolean :porta_foco_g
      t.boolean :porta_foco_pd
      t.boolean :ld
      t.boolean :le
      t.string :cruzamento
      t.string :sentido
      t.string :executores_do_servico
      t.string :supervisor

      t.timestamps
    end
  end
end
