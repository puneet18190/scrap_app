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

ActiveRecord::Schema.define(version: 20180331064735) do

  create_table "california_counties_campaign_finance_candidates", force: :cascade do |t|
    t.string  "full_name",                     limit: 255
    t.string  "last_name",                     limit: 255
    t.string  "first_name",                    limit: 255
    t.string  "middle_name",                   limit: 255
    t.string  "party",                         limit: 30
    t.string  "current_occupation",            limit: 255
    t.string  "district",                      limit: 255
    t.string  "full_address",                  limit: 255
    t.string  "address_1",                     limit: 255
    t.string  "address_1_cleaned",             limit: 255
    t.string  "address_2",                     limit: 255
    t.string  "address_2_cleaned",             limit: 255
    t.string  "city",                          limit: 255
    t.string  "county",                        limit: 255
    t.string  "state",                         limit: 255
    t.string  "zip",                           limit: 5
    t.string  "phone",                         limit: 255
    t.string  "email",                         limit: 255
    t.string  "website",                       limit: 255
    t.string  "pipeline_person_id",            limit: 255
    t.string  "SUID",                          limit: 255
    t.string  "source_table",                  limit: 255
    t.integer "source_table_id",               limit: 8
    t.integer "pl_staging_id",                 limit: 8
    t.string  "pl_staging_loki_status",        limit: 10
    t.integer "pl_production_id",              limit: 8
    t.string  "pl_production_loki_status",     limit: 10
    t.integer "added_by_loki",                 limit: 1,   default: 0
    t.integer "is_clean",                      limit: 1,   default: 0, null: false
    t.integer "old_pl_staging_id",             limit: 8
    t.string  "old_pl_staging_loki_status",    limit: 10
    t.integer "match_staging_checked",         limit: 1,   default: 0, null: false
    t.integer "old_pl_production_id",          limit: 8
    t.string  "old_pl_production_loki_status", limit: 10
    t.integer "match_production_checked",      limit: 1,   default: 0, null: false
  end

  create_table "california_counties_campaign_finance_committees", force: :cascade do |t|
    t.integer "candidate_id",              limit: 8
    t.string  "committee_name",            limit: 255
    t.string  "committee_number",          limit: 255
    t.string  "district",                  limit: 255
    t.string  "party",                     limit: 255
    t.string  "election_year",             limit: 255
    t.string  "office_sought",             limit: 255
    t.string  "county",                    limit: 255
    t.string  "chair_name",                limit: 255
    t.string  "chair_address",             limit: 255
    t.string  "chair_city",                limit: 255
    t.string  "chair_state",               limit: 255
    t.string  "chair_zip",                 limit: 5
    t.string  "chair_phone",               limit: 255
    t.string  "chair_email",               limit: 255
    t.string  "treasurer_name",            limit: 255
    t.string  "treasurer_address",         limit: 255
    t.string  "treasurer_city",            limit: 255
    t.string  "treasurer_state",           limit: 255
    t.string  "treasurer_zip",             limit: 5
    t.string  "treasurer_phone",           limit: 255
    t.string  "treasurer_email",           limit: 255
    t.string  "parent_entity",             limit: 255
    t.string  "parent_address",            limit: 255
    t.string  "parent_city",               limit: 255
    t.string  "parent_state",              limit: 255
    t.string  "parent_zip",                limit: 5
    t.string  "contact_name",              limit: 255
    t.string  "contact_address",           limit: 255
    t.string  "contact_city",              limit: 255
    t.string  "contact_state",             limit: 255
    t.string  "contact_zip",               limit: 5
    t.string  "contact_phone",             limit: 255
    t.string  "data_source_url",           limit: 255
    t.string  "data_source_state",         limit: 25
    t.string  "source_table",              limit: 255
    t.integer "source_table_id",           limit: 8
    t.integer "pl_production_id",          limit: 8
    t.string  "pl_production_loki_status", limit: 10
    t.integer "pl_staging_id",             limit: 8
    t.string  "pl_staging_loki_status",    limit: 10
    t.integer "candidate_by_loki",         limit: 1,   default: 0
    t.string  "cleaned_committee_name",    limit: 255
  end

  create_table "california_counties_campaign_finance_contributions", force: :cascade do |t|
    t.string   "date",                          limit: 255
    t.integer  "committee_id",                  limit: 8
    t.integer  "contributor_id",                limit: 8
    t.string   "county",                        limit: 255
    t.decimal  "amount",                                    precision: 15, scale: 2
    t.string   "type",                          limit: 255
    t.string   "type2",                         limit: 255
    t.string   "check_number",                  limit: 255
    t.string   "source_table",                  limit: 255
    t.integer  "source_table_id",               limit: 8
    t.string   "transaction_id_fec",            limit: 25,                           default: "0", null: false
    t.string   "sub_id",                        limit: 25,                           default: "0", null: false
    t.integer  "pl_contributor_checked",        limit: 1,                            default: 0,   null: false
    t.integer  "is_split",                      limit: 1,                            default: 0,   null: false
    t.integer  "pl_staging_id",                 limit: 8
    t.string   "pl_staging_loki_status",        limit: 10
    t.integer  "pl_production_id",              limit: 8
    t.string   "pl_production_loki_status",     limit: 10
    t.string   "source_agency_org",             limit: 255
    t.string   "source_agency_id",              limit: 255
    t.datetime "updated_at"
    t.integer  "old_pl_staging_id",             limit: 8
    t.string   "old_pl_staging_loki_status",    limit: 10
    t.integer  "old_pl_staging_removed",        limit: 1,                            default: 0,   null: false
    t.integer  "old_pl_production_id",          limit: 8
    t.string   "old_pl_production_loki_status", limit: 10
    t.integer  "old_pl_production_removed",     limit: 1,                            default: 0,   null: false
  end

  create_table "california_counties_campaign_finance_contributors", force: :cascade do |t|
    t.string   "name",                               limit: 255
    t.string   "name_cleaned",                       limit: 255
    t.string   "address",                            limit: 255
    t.string   "address_clean",                      limit: 255
    t.string   "city",                               limit: 255
    t.string   "county",                             limit: 255
    t.string   "state",                              limit: 255
    t.string   "zip",                                limit: 20
    t.string   "employer",                           limit: 255
    t.string   "job_title",                          limit: 255
    t.string   "sex",                                limit: 10
    t.string   "SUID",                               limit: 255
    t.integer  "is_org",                             limit: 1,   default: 0, null: false
    t.string   "source_table",                       limit: 255
    t.integer  "source_table_id",                    limit: 8
    t.string   "source_contributor_name",            limit: 255
    t.integer  "is_clean",                           limit: 1,   default: 0, null: false
    t.integer  "pl_staging_id",                      limit: 8
    t.string   "pl_staging_loki_status",             limit: 10
    t.integer  "pl_production_id",                   limit: 8
    t.string   "pl_production_loki_status",          limit: 10
    t.integer  "is_split",                           limit: 1,   default: 0, null: false
    t.integer  "split_source_id",                    limit: 8
    t.integer  "is_splitted",                        limit: 1,   default: 0, null: false
    t.string   "employer_is_org",                    limit: 5
    t.integer  "pl_employer_staging_id",             limit: 8
    t.string   "pl_employer_staging_loki_status",    limit: 25
    t.integer  "pl_employer_production_id",          limit: 8
    t.string   "pl_employer_production_loki_status", limit: 25
    t.string   "cleaned_employer_name",              limit: 255
    t.datetime "updated_at"
    t.integer  "old_pl_staging_id",                  limit: 8
    t.string   "old_pl_staging_loki_status",         limit: 10
    t.integer  "match_staging_checked",              limit: 1,   default: 0, null: false
    t.integer  "old_pl_production_id",               limit: 8
    t.string   "old_pl_production_loki_status",      limit: 10
    t.integer  "match_production_checked",           limit: 1,   default: 0, null: false
  end

end
