-- Full Setup Script

-- Cleanup

DROP TABLE demo.acme.agreement_assessment_attached;
DROP TABLE demo.acme.assessment_attached;
DROP TABLE demo.acme.claim_amount_attached;
DROP TABLE demo.acme.expense_reserve_attached;
DROP TABLE demo.acme.location_address_attached;
DROP TABLE demo.acme.organization_attached;
DROP TABLE demo.acme.physical_location_attached;
DROP TABLE demo.acme.premium_attached;
DROP TABLE demo.acme.agreement_attached;
DROP TABLE demo.acme.assessment_party_role_attached;
DROP TABLE demo.acme.claim_coverage_attached;
DROP TABLE demo.acme.fireclaim_attached;
DROP TABLE demo.acme.loss_payment_attached;
DROP TABLE demo.acme.party_attached;
DROP TABLE demo.acme.policy_amount_attached;
DROP TABLE demo.acme.underwriting_assessment_attached;
DROP TABLE demo.acme.agreement_party_role_attached;
DROP TABLE demo.acme.assessment_result_attached;
DROP TABLE demo.acme.claim_attached;
DROP TABLE demo.acme.geographic_location_attached;
DROP TABLE demo.acme.loss_reserve_attached;
DROP TABLE demo.acme.party_role_attached;
DROP TABLE demo.acme.policy_coverage_detail_attached;
DROP TABLE demo.acme.assesment_party_role_attached;
DROP TABLE demo.acme.catastrophe_attached;
DROP TABLE demo.acme.expense_payment_attached;
DROP TABLE demo.acme.insurable_object_attached;
DROP TABLE demo.acme.occurrence_attached;
DROP TABLE demo.acme.person_attached;
DROP TABLE demo.acme.policy_attached;
DROP TABLE demo.acme.agreement_assessment;
DROP TABLE demo.acme.assessment;
DROP TABLE demo.acme.claim_amount;
DROP TABLE demo.acme.expense_reserve;
DROP TABLE demo.acme.location_address;
DROP TABLE demo.acme.organization;
DROP TABLE demo.acme.physical_location;
DROP TABLE demo.acme.premium;
DROP TABLE demo.acme.agreement;
DROP TABLE demo.acme.assessment_party_role;
DROP TABLE demo.acme.claim_coverage;
DROP TABLE demo.acme.fireclaim;
DROP TABLE demo.acme.loss_payment;
DROP TABLE demo.acme.party;
DROP TABLE demo.acme.policy_amount;
DROP TABLE demo.acme.underwriting_assessment;
DROP TABLE demo.acme.agreement_party_role;
DROP TABLE demo.acme.assessment_result;
DROP TABLE demo.acme.claim;
DROP TABLE demo.acme.geographic_location;
DROP TABLE demo.acme.loss_reserve;
DROP TABLE demo.acme.party_role;
DROP TABLE demo.acme.policy_coverage_detail;
DROP TABLE demo.acme.assesment_party_role;
DROP TABLE demo.acme.catastrophe;
DROP TABLE demo.acme.expense_payment;
DROP TABLE demo.acme.insurable_object;
DROP TABLE demo.acme.occurrence;
DROP TABLE demo.acme.person;
DROP TABLE demo.acme.policy;

-- Attach CSVs to Virtual Tables

ATTACH_FROM_CSV('demo.acme.agreement_assessment_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Agreement_Assessment.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.assessment_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Assessment.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.claim_amount_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Claim_Amount.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.expense_reserve_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Expense_Reserve.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.location_address_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Location_Address.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.organization_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Organization.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.physical_location_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Physical_Location.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.premium_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Premium.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.agreement_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Agreement.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.assessment_party_role_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Assessment_Party_Role.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.claim_coverage_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Claim_Coverage.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.fireclaim_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/FireClaim.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.loss_payment_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Loss_Payment.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.party_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Party.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.policy_amount_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Policy_Amount.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.underwriting_assessment_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Underwriting_Assessment.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.agreement_party_role_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Agreement_Party_Role.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.assessment_result_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Assessment_Result.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.claim_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Claim.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.geographic_location_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Geographic_Location.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.loss_reserve_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Loss_Reserve.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.party_role_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Party_Role.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.policy_coverage_detail_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Policy_Coverage_Detail.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.assesment_party_role_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Assesment_Party_Role.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.catastrophe_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Catastrophe.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.expense_payment_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Expense_Payment.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.insurable_object_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Insurable_Object.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.occurrence_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Occurrence.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.person_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Person.csv',rows_to_check=>1,null_empty_string=>1);
ATTACH_FROM_CSV('demo.acme.policy_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Policy.csv',rows_to_check=>1,null_empty_string=>1);


-- Grant SELECT Privileges to SPARQL_SELECT

GRANT SELECT ON demo.acme.agreement_assessment_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.assessment_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.claim_amount_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.expense_reserve_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.location_address_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.organization_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.physical_location_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.premium_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.agreement_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.assessment_party_role_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.claim_coverage_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.fireclaim_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.loss_payment_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.party_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.policy_amount_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.underwriting_assessment_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.agreement_party_role_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.assessment_result_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.claim_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.geographic_location_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.loss_reserve_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.party_role_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.policy_coverage_detail_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.assesment_party_role_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.catastrophe_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.expense_payment_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.insurable_object_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.occurrence_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.person_attached TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.policy_attached TO SPARQL_SELECT;



-- Create Physical Renditions of Virtual Tables
-- Cleanup

-- Create Physical Tables From Attachehd Tables

CREATE TABLE demo.acme.agreement_assessment AS SELECT * FROM demo.acme.agreement_assessment_attached WITH DATA;
CREATE TABLE demo.acme.assessment AS SELECT * FROM demo.acme.assessment_attached WITH DATA;
CREATE TABLE demo.acme.claim_amount AS SELECT * FROM demo.acme.claim_amount_attached WITH DATA;
CREATE TABLE demo.acme.expense_reserve AS SELECT * FROM demo.acme.expense_reserve_attached WITH DATA;
CREATE TABLE demo.acme.location_address AS SELECT * FROM demo.acme.location_address_attached WITH DATA;
CREATE TABLE demo.acme.organization AS SELECT * FROM demo.acme.organization_attached WITH DATA;
CREATE TABLE demo.acme.physical_location AS SELECT * FROM demo.acme.physical_location_attached WITH DATA;
CREATE TABLE demo.acme.premium AS SELECT * FROM demo.acme.premium_attached WITH DATA;
CREATE TABLE demo.acme.agreement AS SELECT * FROM demo.acme.agreement_attached WITH DATA;
CREATE TABLE demo.acme.assessment_party_role AS SELECT * FROM demo.acme.assessment_party_role_attached WITH DATA;
CREATE TABLE demo.acme.claim_coverage AS SELECT * FROM demo.acme.claim_coverage_attached WITH DATA;
CREATE TABLE demo.acme.fireclaim AS SELECT * FROM demo.acme.fireclaim_attached WITH DATA;
CREATE TABLE demo.acme.loss_payment AS SELECT * FROM demo.acme.loss_payment_attached WITH DATA;
CREATE TABLE demo.acme.party AS SELECT * FROM demo.acme.party_attached WITH DATA;
CREATE TABLE demo.acme.policy_amount AS SELECT * FROM demo.acme.policy_amount_attached WITH DATA;
CREATE TABLE demo.acme.underwriting_assessment AS SELECT * FROM demo.acme.underwriting_assessment_attached WITH DATA;
CREATE TABLE demo.acme.agreement_party_role AS SELECT * FROM demo.acme.agreement_party_role_attached WITH DATA;
CREATE TABLE demo.acme.assessment_result AS SELECT * FROM demo.acme.assessment_result_attached WITH DATA;
CREATE TABLE demo.acme.claim AS SELECT * FROM demo.acme.claim_attached WITH DATA;
CREATE TABLE demo.acme.geographic_location AS SELECT * FROM demo.acme.geographic_location_attached WITH DATA;
CREATE TABLE demo.acme.loss_reserve AS SELECT * FROM demo.acme.loss_reserve_attached WITH DATA;
CREATE TABLE demo.acme.party_role AS SELECT * FROM demo.acme.party_role_attached WITH DATA;
CREATE TABLE demo.acme.policy_coverage_detail AS SELECT * FROM demo.acme.policy_coverage_detail_attached WITH DATA;
CREATE TABLE demo.acme.assesment_party_role AS SELECT * FROM demo.acme.assesment_party_role_attached WITH DATA;
CREATE TABLE demo.acme.catastrophe AS SELECT * FROM demo.acme.catastrophe_attached WITH DATA;
CREATE TABLE demo.acme.expense_payment AS SELECT * FROM demo.acme.expense_payment_attached WITH DATA;
CREATE TABLE demo.acme.insurable_object AS SELECT * FROM demo.acme.insurable_object_attached WITH DATA;
CREATE TABLE demo.acme.occurrence AS SELECT * FROM demo.acme.occurrence_attached WITH DATA;
CREATE TABLE demo.acme.person AS SELECT * FROM demo.acme.person_attached WITH DATA;
CREATE TABLE demo.acme.policy
(
  "Policy_Identifier" BIGINT,
  "Effective_Date" DATETIME,
  "Expiration_Date" DATETIME,
  "Policy_Number" INTEGER,
  "Status_Code" VARCHAR(4072),
  "Geographic_Location_Identifier" VARCHAR(4072)
);

INSERT INTO demo.acme.policy
SELECT CAST(Policy_Identifier as BIGINT) as Policy_Identifier, Effective_Date, Expiration_Date, Policy_Number, Status_Code, Geographic_Location_Identifier FROM demo.acme.policy_attached;

-- Grant SELECT Privileges to SPARQL_SELECT

GRANT SELECT ON demo.acme.agreement_assessment TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.assessment TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.claim_amount TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.expense_reserve TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.location_address TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.organization TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.physical_location TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.premium TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.agreement TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.assessment_party_role TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.claim_coverage TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.fireclaim TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.loss_payment TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.party TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.policy_amount TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.underwriting_assessment TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.agreement_party_role TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.assessment_result TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.claim TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.geographic_location TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.loss_reserve TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.party_role TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.policy_coverage_detail TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.assesment_party_role TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.catastrophe TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.expense_payment TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.insurable_object TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.occurrence TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.person TO SPARQL_SELECT;
GRANT SELECT ON demo.acme.policy TO SPARQL_SELECT;