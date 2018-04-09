class CreateCaliforniaCountiesCampaignFinanceContributions < ActiveRecord::Migration
  def change
    create_table :california_counties_campaign_finance_contributions do |t|
    	t.date :date#, limit:255
		t.bigint :committee_id, limit:20
		t.bigint :contributor_id, limit:20
		t.string :county, limit:255
		t.decimal :amount, limit:15, :precision => 15, :scale => 2
		t.string :type, limit:255
		t.string :type2, limit:255
		t.string :check_number, limit:255
		t.string :source_table, limit:255
		t.bigint :source_table_id, limit:20
		t.string :transaction_id_fec, limit:25, null: false, default: 0000000000000000000000000
		t.string :sub_id, limit:25, null: false, default: 0000000000000000000000000
		t.integer :pl_contributor_checked, limit:1, null: false, default: 0
		t.integer :is_split, limit:1, null: false, default: 0
		t.bigint :pl_staging_id, limit:20
		t.string :pl_staging_loki_status, limit:10
		t.bigint :pl_production_id, limit:20
		t.string :pl_production_loki_status, limit:10
		t.string :source_agency_org, limit:255#,null: false
		t.string :source_agency_id, limit:255#,null: false
		t.datetime :updated_at#,null: false
		t.bigint :old_pl_staging_id, limit:20
		t.string :old_pl_staging_loki_status, limit:10
		t.integer :old_pl_staging_removed, limit:1,null: false, default: 0
		t.bigint :old_pl_production_id, limit:20
		t.string :old_pl_production_loki_status, limit:10
		t.integer :old_pl_production_removed, limit:1,null: false, default: 0
      	#t.timestamps null: false
    end
    execute 'ALTER TABLE california_counties_campaign_finance_contributions MODIFY id bigint(20) DEFAULT NULL auto_increment NOT NULL'
  end
end
