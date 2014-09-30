# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140930043211) do

  create_table "aprendizs", force: true do |t|
    t.string   "nombres"
    t.string   "apellido"
    t.boolean  "genero"
    t.string   "identificacion"
    t.string   "email"
    t.integer  "ficha_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "aprendizs", ["ficha_id"], name: "index_aprendizs_on_ficha_id"

  create_table "centros", force: true do |t|
    t.string   "nombre_centro"
    t.string   "ciudad"
    t.string   "codigo"
    t.integer  "regional_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "centros", ["regional_id"], name: "index_centros_on_regional_id"

  create_table "equipo_aprendizs", force: true do |t|
    t.integer  "equipo_id"
    t.integer  "aprendiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "equipo_aprendizs", ["aprendiz_id"], name: "index_equipo_aprendizs_on_aprendiz_id"
  add_index "equipo_aprendizs", ["equipo_id"], name: "index_equipo_aprendizs_on_equipo_id"

  create_table "equipos", force: true do |t|
    t.string   "nombre_equipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fichas", force: true do |t|
    t.string   "numeroficha"
    t.integer  "programa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fichas", ["programa_id"], name: "index_fichas_on_programa_id"

  create_table "instructors", force: true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.boolean  "genero"
    t.string   "identificacion"
    t.string   "email"
    t.string   "titulo"
    t.integer  "centro_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "instructors", ["centro_id"], name: "index_instructors_on_centro_id"

  create_table "programas", force: true do |t|
    t.string   "nombre"
    t.integer  "centro_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "programas", ["centro_id"], name: "index_programas_on_centro_id"

  create_table "questionarios", force: true do |t|
    t.string   "pregunta"
    t.integer  "tema_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questionarios", ["tema_id"], name: "index_questionarios_on_tema_id"

  create_table "regionals", force: true do |t|
    t.string   "departamento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "temas", force: true do |t|
    t.string   "nombre_tema"
    t.integer  "programa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "temas", ["programa_id"], name: "index_temas_on_programa_id"

end
