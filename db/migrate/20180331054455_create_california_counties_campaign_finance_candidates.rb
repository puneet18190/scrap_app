class CreateCaliforniaCountiesCampaignFinanceCandidates < ActiveRecord::Migration
  def change
    create_table :california_counties_campaign_finance_candidates do |t|
      t.string :full_name, :limit => 255
      t.string :last_name, :limit => 255
      t.string :first_name, :limit => 255
      t.string :middle_name, :limit => 255
      t.string :party, :limit => 30
      t.string :current_occupation, :limit => 255
      t.string :district, :limit => 255
      t.string :full_address, :limit => 255
      t.string :address_1, :limit => 255
      t.string :address_1_cleaned, :limit => 255
      t.string :address_2, :limit => 255
      t.string :address_2_cleaned, :limit => 255
      t.string :city, :limit => 255
      t.string :county, :limit => 255
      t.string :state, :limit => 255
      t.string :zip, :limit => 5
      t.string :phone, :limit => 255
      t.string :email, :limit => 255
      t.string :website, :limit => 255
      t.string :pipeline_person_id, :limit => 255
      t.string :SUID, :limit => 255
      t.string :source_table, :limit => 255#, null: false
      t.bigint :source_table_id, :limit => 20
      t.bigint :pl_staging_id, :limit => 20
      t.string :pl_staging_loki_status, :limit => 10
      t.bigint :pl_production_id, :limit => 20
      t.string :pl_production_loki_status, :limit => 10
      t.integer :added_by_loki, :limit => 1,default: 0
      t.integer :is_clean, :limit => 1, null: false,default: 0
      t.bigint :old_pl_staging_id, :limit => 20
      t.string :old_pl_staging_loki_status, :limit => 10
      t.integer :match_staging_checked, :limit => 1, null: false,default: 0
      t.bigint :old_pl_production_id, :limit => 20
      t.string :old_pl_production_loki_status, :limit => 10
      t.integer :match_production_checked, :limit => 1, null: false,default: 0

      #t.timestamps null: false
    end
    execute 'ALTER TABLE california_counties_campaign_finance_candidates MODIFY id bigint(20) DEFAULT NULL auto_increment NOT NULL'
  end
end
