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

-- Attach CSVs to Virtual Tables

ATTACH_FROM_CSV('demo.acme.agreement_assessment_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Agreement_Assessment.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.assessment_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Assessment.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.claim_amount_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Claim_Amount.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.expense_reserve_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Expense_Reserve.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.location_address_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Location_Address.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.organization_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Organization.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.physical_location_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Physical_Location.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.premium_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Premium.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.agreement_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Agreement.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.assessment_party_role_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Assessment_Party_Role.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.claim_coverage_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Claim_Coverage.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.fireclaim_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/FireClaim.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.loss_payment_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Loss_Payment.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.party_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Party.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.policy_amount_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Policy_Amount.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.underwriting_assessment_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Underwriting_Assessment.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.agreement_party_role_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Agreement_Party_Role.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.assessment_result_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Assessment_Result.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.claim_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Claim.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.geographic_location_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Geographic_Location.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.loss_reserve_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Loss_Reserve.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.party_role_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Party_Role.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.policy_coverage_detail_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Policy_Coverage_Detail.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.assesment_party_role_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Assesment_Party_Role.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.catastrophe_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Catastrophe.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.expense_payment_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Expense_Payment.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.insurable_object_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Insurable_Object.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.occurrence_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Occurrence.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.person_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Person.csv',rows_to_check=>1);
ATTACH_FROM_CSV('demo.acme.policy_attached', 'file:cwd-benchmark-data/ACME_Insurance/data/Policy.csv',rows_to_check=>1);


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