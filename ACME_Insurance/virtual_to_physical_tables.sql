-- Script for Creating Physical Renditions of Virtual Tables
-- Cleanup

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