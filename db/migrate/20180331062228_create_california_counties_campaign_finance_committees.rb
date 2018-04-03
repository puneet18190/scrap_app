class CreateCaliforniaCountiesCampaignFinanceCommittees < ActiveRecord::Migration
  def change
    create_table :california_counties_campaign_finance_committees do |t|
      	t.bigint :candidate_id, limit: 20
		t.string :committee_name, limit: 255
		t.string :committee_number, limit: 255
		t.string :district, limit: 255
		t.string :party, limit: 255
		t.string :election_year, limit: 255
		t.string :office_sought, limit: 255
		t.string :county, limit: 255
		t.string :chair_name, limit: 255
		t.string :chair_address, limit: 255
		t.string :chair_city, limit: 255
		t.string :chair_state, limit: 255
		t.string :chair_zip, limit: 5
		t.string :chair_phone, limit: 255
		t.string :chair_email, limit: 255
		t.string :treasurer_name, limit: 255
		t.string :treasurer_address, limit: 255
		t.string :treasurer_city, limit: 255
		t.string :treasurer_state, limit: 255
		t.string :treasurer_zip, limit: 5
		t.string :treasurer_phone, limit: 255
		t.string :treasurer_email, limit: 255
		t.string :parent_entity, limit: 255
		t.string :parent_address, limit: 255
		t.string :parent_city, limit: 255
		t.string :parent_state, limit: 255
		t.string :parent_zip, limit: 5
		t.string :contact_name, limit: 255
		t.string :contact_address, limit: 255
		t.string :contact_city, limit: 255
		t.string :contact_state, limit: 255
		t.string :contact_zip, limit: 5
		t.string :contact_phone, limit: 255
		t.string :data_source_url, limit: 255
		t.string :data_source_state, limit: 25
		t.string :source_table, limit: 255#, null: false
		t.bigint :source_table_id, limit: 20
		t.bigint :pl_production_id, limit: 20
		t.string :pl_production_loki_status, limit: 10
		t.bigint :pl_staging_id, limit: 20
		t.string :pl_staging_loki_status, limit: 10
		t.integer :candidate_by_loki, limit: 1, default: 0
		t.string :cleaned_committee_name, limit: 255

      #t.timestamps null: false
    end
    execute 'ALTER TABLE california_counties_campaign_finance_committees MODIFY id bigint(20) DEFAULT NULL auto_increment NOT NULL'
  end
end
