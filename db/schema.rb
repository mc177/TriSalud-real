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

ActiveRecord::Schema.define(version: 20180520201804) do

  create_table "clinicas", force: :cascade do |t|
    t.integer "user_id"
    t.string "rif", limit: 255, null: false
    t.string "nombre", limit: 255, null: false
    t.string "direccion", limit: 255, null: false
    t.string "estatus", limit: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clinicas_on_user_id"
  end

  create_table "especialidads", force: :cascade do |t|
    t.string "descripcion", limit: 255, null: false
    t.string "estatus", limit: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historial_pacientes", force: :cascade do |t|
    t.integer "paciente_id"
    t.boolean "prob_cardio"
    t.boolean "prob_respira"
    t.boolean "diabetes"
    t.boolean "alergias"
    t.string "diab_pm", limit: 255, null: false
    t.string "sobrepso_pm", limit: 255, null: false
    t.string "hipertension_pm", limit: 255, null: false
    t.string "epilepsia_pm", limit: 255, null: false
    t.boolean "alcohol"
    t.boolean "deportes"
    t.boolean "tabaco"
    t.boolean "drogas"
    t.string "estatus", limit: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "index_historial_pacientes_on_paciente_id"
  end

  create_table "medicoen_clinicas", force: :cascade do |t|
    t.integer "clinica_id"
    t.integer "medico_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinica_id"], name: "index_medicoen_clinicas_on_clinica_id"
    t.index ["medico_id"], name: "index_medicoen_clinicas_on_medico_id"
  end

  create_table "medicos", force: :cascade do |t|
    t.integer "user_id"
    t.integer "especialidad_id"
    t.string "nombres", limit: 255, null: false
    t.string "apellidos", limit: 255, null: false
    t.string "direccion", limit: 255, null: false
    t.string "telefono", limit: 255, null: false
    t.string "edad", limit: 255, null: false
    t.string "sexo", limit: 255, null: false
    t.string "estatus", limit: 255, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["especialidad_id"], name: "index_medicos_on_especialidad_id"
    t.index ["user_id"], name: "index_medicos_on_user_id"
  end

  create_table "pacientes", force: :cascade do |t|
    t.integer "user_id"
    t.string "ced_paciente", limit: 255, null: false
    t.string "nombres", limit: 255, null: false
    t.string "apellidos", limit: 255, null: false
    t.string "nombres_responsable", limit: 255, null: false
    t.string "apellidos_responsable", limit: 255, null: false
    t.string "telefono_responsable", limit: 255, null: false
    t.string "direccion", limit: 255, null: false
    t.string "telefono", limit: 255, null: false
    t.string "edad", limit: 255, null: false
    t.string "sexo", limit: 255, null: false
    t.string "estatus", limit: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pacientes_on_user_id"
  end

  create_table "plan_quirurgicos", force: :cascade do |t|
    t.integer "medico_id"
    t.integer "paciente_id"
    t.date "fecha_consulta"
    t.string "descp_consulta", limit: 255, null: false
    t.date "fecha_pq"
    t.float "presupuesto"
    t.string "examen", limit: 255, null: false
    t.string "estatus", limit: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medico_id"], name: "index_plan_quirurgicos_on_medico_id"
    t.index ["paciente_id"], name: "index_plan_quirurgicos_on_paciente_id"
  end

  create_table "rols", force: :cascade do |t|
    t.string "codigo_rol"
    t.string "descripcion"
    t.string "estatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servicio_seleccionados", force: :cascade do |t|
    t.integer "servicio_id"
    t.integer "plan_quirurgico_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_quirurgico_id"], name: "index_servicio_seleccionados_on_plan_quirurgico_id"
    t.index ["servicio_id"], name: "index_servicio_seleccionados_on_servicio_id"
  end

  create_table "servicios", force: :cascade do |t|
    t.float "costo"
    t.string "descripcion", limit: 255, null: false
    t.string "estatus", limit: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "rol_id", null: false
    t.integer "paciente_id"
    t.string "estatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["paciente_id"], name: "index_users_on_paciente_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
