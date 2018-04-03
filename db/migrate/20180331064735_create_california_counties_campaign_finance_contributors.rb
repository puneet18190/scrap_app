class CreateCaliforniaCountiesCampaignFinanceContributors < ActiveRecord::Migration
  def change
    create_table :california_counties_campaign_finance_contributors do |t|
    	t.string :name,limit: 255
		t.string :name_cleaned,limit: 255#,null: false
		t.string :address,limit: 255
		t.string :address_clean,limit: 255
		t.string :city,limit: 255
		t.string :county,limit: 255
		t.string :state,limit: 255
		t.string :zip,limit: 20
		t.string :employer,limit: 255
		t.string :job_title,limit: 255
		t.string :sex,limit: 10
		t.string :SUID,limit: 255
		t.integer :is_org,limit: 1,null: false,default: 0
		t.string :source_table,limit: 255#,null: false
		t.bigint :source_table_id,limit: 20
		t.string :source_contributor_name,limit: 255
		t.integer :is_clean,limit: 1,null: false,default: 0
		t.bigint :pl_staging_id,limit: 20
		t.string :pl_staging_loki_status,limit: 10
		t.bigint :pl_production_id,limit: 20
		t.string :pl_production_loki_status,limit: 10
		t.integer :is_split,limit: 1,null: false,default: 0
		t.bigint :split_source_id,limit: 20
		t.integer :is_splitted,limit: 1,null: false,default: 0
		t.string :employer_is_org,limit: 5
		t.bigint :pl_employer_staging_id,limit: 20
		t.string :pl_employer_staging_loki_status,limit: 25
		t.bigint :pl_employer_production_id,limit: 20
		t.string :pl_employer_production_loki_status,limit: 25
		t.string :cleaned_employer_name,limit: 255
		t.datetime :updated_at#,null: false
		t.bigint :old_pl_staging_id,limit: 20
		t.string :old_pl_staging_loki_status,limit: 10
		t.integer :match_staging_checked,limit: 1,null: false,default: 0
		t.bigint :old_pl_production_id,limit: 20
		t.string :old_pl_production_loki_status,limit: 10
		t.integer :match_production_checked,limit: 1,null: false,default: 0

      # t.timestamps null: false
    end
    execute 'ALTER TABLE california_counties_campaign_finance_contributors MODIFY id bigint(20) DEFAULT NULL auto_increment NOT NULL'
  end
end
