# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_08_104234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "servicos", force: :cascade do |t|
    t.date "data"
    t.integer "lampada_127x100_vermelho"
    t.integer "lampada_127x100_amarelo"
    t.integer "lampada_127x100_verde"
    t.integer "lampada_220x100_vermelho"
    t.integer "lampada_220x100_amarelo"
    t.integer "lampada_220x100_verde"
    t.integer "lente_vermelho"
    t.integer "lente_amarelo"
    t.integer "lente_verde"
    t.text "servico_executado"
    t.string "numero_os"
    t.time "hora_inicial"
    t.time "hora_final"
    t.boolean "controlador_brascontrol"
    t.boolean "controlador_mecanico"
    t.boolean "controlador_tesc"
    t.boolean "controlador_dataprom"
    t.boolean "controlador_digicon"
    t.boolean "porta_foco_t"
    t.boolean "porta_foco_g"
    t.boolean "porta_foco_pd"
    t.boolean "ld"
    t.boolean "le"
    t.string "cruzamento"
    t.string "sentido"
    t.string "executores_do_servico"
    t.string "supervisor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
