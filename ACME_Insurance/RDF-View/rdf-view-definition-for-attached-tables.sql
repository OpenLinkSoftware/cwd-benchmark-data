SPARQL
prefix virtrdf: <http://www.openlinksw.com/schemas/virtrdf#>
prefix ns1: <urn:qm:>
prefix ns2: <http://data.world/schema/insurance/>
prefix ns3: <http://demo.openlinksw.com/acme-insurance-test-attached#>
create IRI class <r2rml:virt02-63d101b8de43bac643830054a11466c5> "http://demo.openlinksw.com/acme-insurance/Agent-%d#this" (in party_identifier integer) .
create IRI class <r2rml:virt02-f2834cb38e517d27bb309d7dba69a658> "http://demo.openlinksw.com/acme-insurance/Catastrophe-%d#this" (in Catastrophe_Identifier integer) .
create IRI class <r2rml:virt02-e9b5548a277410df3ccc963227c5566d> "http://demo.openlinksw.com/acme-insurance/Claim-%d#this" (in Claim_Identifier integer) .
create IRI class <r2rml:virt02-f5e646552dfe6844eb5b6f1e4e70546f> "http://demo.openlinksw.com/acme-insurance/ClaimAmount-%d#this" (in claim_amount_identifier integer) .
create IRI class <r2rml:virt02-14faf49b0a34b32c891921aef0776502> "http://demo.openlinksw.com/acme-insurance/InsurableObject-%d#this" (in Insurable_Object_Identifier integer) .
create IRI class <r2rml:virt02-b5c6a0a7468db0a3ab4d2b3c03719afd> "http://demo.openlinksw.com/acme-insurance/Location-%d#this" (in Geographic_Location_Identifier integer) .
create IRI class <r2rml:virt02-cb03626721f8346a077f1bef25de43bc> "http://demo.openlinksw.com/acme-insurance/Policy-Holder-%d#this" (in party_identifier integer) .
create IRI class <r2rml:virt02-f8951d252145b7891f46da21f5937ac6> "http://demo.openlinksw.com/acme-insurance/Policy-%d#this" (in Policy_Identifier integer) .
create IRI class <r2rml:virt02-da467369f438f3073e4c950c824eb123> "http://demo.openlinksw.com/acme-insurance/PolicyAmount-%d#this" (in policy_amount_identifier integer) .
create IRI class <r2rml:virt02-edca153fc13a71e83bcf3c4a39e443db> "http://demo.openlinksw.com/acme-insurance/PolicyCoverageDetail-%d#this" (in Policy_Coverage_Detail_Identifier integer) .
create IRI class <r2rml:virt02-729b5e55b270b25da8ac989bd821b787> "http://demo.openlinksw.com/acme-insurance/Premium-%d#this" (in policy_amount_identifier integer) .
create IRI class <r2rml:virt02-735c5b3434e6868ccd7bb3ac7feab651> "http://demo.openlinksw.com/acme-insurance/Underwriter-%d#this" (in party_identifier integer) .
create IRI class <r2rml:virt02-a2da0b0bdbe28838dc580b80140b58c5> "http://demo.openlinksw.com/acme-insurance/Underwriting-Assessment-%d#this" (in assessment_identifier integer) .
create IRI class <r2rml:virt02-0c54df4e07db77a1f8eb4e55d995a9aa> "http://demo.openlinksw.com/acme-insurance/UnderwritingAssessment-%d#this" (in assessment_identifier integer) .
alter quad storage virtrdf:DefaultQuadStorage
from sqlquery (SELECT DISTINCT 
                                                party_identifier 
                                             FROM demo.acme.agreement_party_role_attached
                                             JOIN demo.acme.policy_attached ON agreement_identifier = policy_identifier 
                                             WHERE agreement_party_role_attached.party_role_code = 'AG') as tbl4
from "Demo"."acme"."catastrophe_attached" as tbl5
from "Demo"."acme"."catastrophe_attached" as tbl6
from sqlquery (SELECT 
                                                geographic_location_identifier,
                                                line_1_address, 
                                                line_2_address, 
                                                municipality_name, 
                                                location_address_attached.state_code, 
                                                postal_code, 
                                                country_code, 
                                                latitude_value,
                                                longitude_value
                                             FROM demo.acme.geographic_location_attached 
                                             JOIN demo.acme.location_address_attached ON geographic_location_attached.location_address_identifier = location_address_attached.location_address_identifier
                                             JOIN demo.acme.physical_location_attached ON geographic_location_attached.physical_location_identifier = physical_location_attached.physical_location_identifier) as tbl7
from "Demo"."acme"."claim_attached" as tbl8
from "Demo"."acme"."claim_attached" as tbl9
from "Demo"."acme"."claim_attached" as tbl10
from "Demo"."acme"."claim_attached" as tbl11
from sqlquery (SELECT 
                                                geographic_location_identifier,
                                                line_1_address, 
                                                line_2_address, 
                                                municipality_name, 
                                                location_address_attached.state_code, 
                                                postal_code, 
                                                country_code, 
                                                latitude_value,
                                                longitude_value
                                             FROM demo.acme.geographic_location_attached 
                                             JOIN demo.acme.location_address_attached ON geographic_location_attached.location_address_identifier = location_address_attached.location_address_identifier
                                             JOIN demo.acme.physical_location_attached ON geographic_location_attached.physical_location_identifier = physical_location_attached.physical_location_identifier) as tbl12
from sqlquery (SELECT 
                                                ca.claim_identifier, 
                                                ca.claim_amount_identifier, 
                                                ca.claim_amount
                                             FROM demo.acme.claim_amount_attached ca
                                             JOIN demo.acme.expense_payment_attached ep ON ca.claim_amount_identifier = ep.claim_amount_identifier) as tbl13
from sqlquery (SELECT 
                                                ca.claim_identifier, 
                                                ca.claim_amount_identifier, 
                                                ca.claim_amount
                                             FROM demo.acme.claim_amount_attached ca
                                             JOIN demo.acme.expense_reserve_attached er ON ca.claim_amount_identifier = er.claim_amount_identifier) as tbl14
from "Demo"."acme"."insurable_object_attached" as tbl15
from sqlquery (SELECT 
                                                geographic_location_identifier,
                                                line_1_address, 
                                                line_2_address, 
                                                municipality_name, 
                                                location_address_attached.state_code, 
                                                postal_code, 
                                                country_code, 
                                                latitude_value,
                                                longitude_value
                                             FROM demo.acme.geographic_location_attached 
                                             JOIN demo.acme.location_address_attached ON geographic_location_attached.location_address_identifier = location_address_attached.location_address_identifier
                                             JOIN demo.acme.physical_location_attached ON geographic_location_attached.physical_location_identifier = physical_location_attached.physical_location_identifier) as tbl16
from sqlquery (SELECT 
                                                geographic_location_identifier,
                                                line_1_address, 
                                                line_2_address, 
                                                municipality_name, 
                                                location_address_attached.state_code, 
                                                postal_code, 
                                                country_code, 
                                                latitude_value,
                                                longitude_value
                                             FROM demo.acme.geographic_location_attached 
                                             JOIN demo.acme.location_address_attached ON geographic_location_attached.location_address_identifier = location_address_attached.location_address_identifier
                                             JOIN demo.acme.physical_location_attached ON geographic_location_attached.physical_location_identifier = physical_location_attached.physical_location_identifier) as tbl17
from sqlquery (SELECT 
                                                geographic_location_identifier,
                                                line_1_address, 
                                                line_2_address, 
                                                municipality_name, 
                                                location_address_attached.state_code, 
                                                postal_code, 
                                                country_code, 
                                                latitude_value,
                                                longitude_value
                                             FROM demo.acme.geographic_location_attached 
                                             JOIN demo.acme.location_address_attached ON geographic_location_attached.location_address_identifier = location_address_attached.location_address_identifier
                                             JOIN demo.acme.physical_location_attached ON geographic_location_attached.physical_location_identifier = physical_location_attached.physical_location_identifier) as tbl18
from sqlquery (SELECT 
                                                ca.claim_identifier, 
                                                ca.claim_amount_identifier, 
                                                ca.claim_amount
                                             FROM demo.acme.claim_amount_attached ca
                                             JOIN demo.acme.loss_payment_attached lp ON ca.claim_amount_identifier = lp.claim_amount_identifier) as tbl19
from sqlquery (SELECT 
                                                ca.claim_identifier, 
                                                ca.claim_amount_identifier, 
                                                ca.claim_amount
                                             FROM demo.acme.claim_amount_attached ca
                                             JOIN demo.acme.loss_reserve_attached lr ON ca.claim_amount_identifier = lr.claim_amount_identifier) as tbl20
from sqlquery (SELECT 
                                                policy_amount_identifier, 
                                                policy_amount_attached.policy_amount, 
                                                policy_amount_attached.policy_coverage_detail_identifier
                                             FROM demo.acme.policy_amount_attached 
                                             WHERE policy_amount_identifier not in (SELECT policy_amount_identifier FROM demo.acme.premium_attached )) as tbl21
from sqlquery (SELECT 
                                                policy_amount_identifier, 
                                                policy_amount_attached.policy_amount, 
                                                policy_amount_attached.policy_coverage_detail_identifier
                                             FROM demo.acme.policy_amount_attached 
                                             WHERE policy_amount_identifier not in (SELECT policy_amount_identifier FROM demo.acme.premium_attached )) as tbl22
from "Demo"."acme"."policy_coverage_detail_attached" as tbl23
from "Demo"."acme"."policy_coverage_detail_attached" as tbl24
from "Demo"."acme"."policy_coverage_detail_attached" as tbl25
from "Demo"."acme"."policy_coverage_detail_attached" as tbl26
from "Demo"."acme"."policy_attached" as tbl27
from "Demo"."acme"."policy_attached" as tbl28
from sqlquery (SELECT DISTINCT 
                                                party_identifier 
                                             FROM demo.acme.agreement_party_role_attached
                                             JOIN demo.acme.policy_attached ON agreement_party_role_attached.agreement_identifier = policy_attached.policy_identifier 
                                             WHERE agreement_party_role_attached.party_role_code = 'PH') as tbl29
from sqlquery (SELECT DISTINCT 
                                                party_identifier 
                                             FROM demo.acme.agreement_party_role_attached
                                             JOIN demo.acme.policy_attached ON agreement_party_role_attached.agreement_identifier = policy_attached.policy_identifier 
                                             WHERE agreement_party_role_attached.party_role_code = 'PH') as tbl30
from "Demo"."acme"."policy_attached" as tbl31
from "Demo"."acme"."policy_attached" as tbl32
from sqlquery (SELECT 
                                                policy_amount_attached.policy_amount_identifier, 
                                                policy_amount_attached.policy_amount, 
                                                policy_amount_attached.amount_type_code , 
                                                CASE when policy_amount_attached.amount_type_code = 'Year' then policy_amount_attached.policy_amount/12 end as monthly_policy_amount, 
                                                policy_amount_attached.policy_coverage_detail_identifier
                                             FROM demo.acme.policy_amount_attached 
                                             JOIN demo.acme.premium_attached ON policy_amount_attached.policy_amount_identifier = premium_attached.policy_amount_identifier) as tbl33
from sqlquery (SELECT 
                                                policy_amount_attached.policy_amount_identifier, 
                                                policy_amount_attached.policy_amount, 
                                                policy_amount_attached.amount_type_code , 
                                                CASE when policy_amount_attached.amount_type_code = 'Year' then policy_amount_attached.policy_amount/12 end as monthly_policy_amount, 
                                                policy_amount_attached.policy_coverage_detail_identifier
                                             FROM demo.acme.policy_amount_attached 
                                             JOIN demo.acme.premium_attached ON policy_amount_attached.policy_amount_identifier = premium_attached.policy_amount_identifier) as tbl34
from sqlquery (SELECT 
                                                policy_amount_attached.policy_amount_identifier, 
                                                policy_amount_attached.policy_amount, 
                                                policy_amount_attached.amount_type_code,  
                                                CASE when policy_amount_attached.amount_type_code = 'Year' then policy_amount_attached.policy_amount/12 end  as monthly_policy_amount,    policy_amount_attached.policy_coverage_detail_identifier
                                             FROM demo.acme.policy_amount_attached 
                                             JOIN demo.acme.premium_attached ON policy_amount_attached.policy_amount_identifier = premium_attached.policy_amount_identifier) as tbl35
from sqlquery (SELECT 
                                                policy_amount_attached.policy_amount_identifier, 
                                                policy_amount_attached.policy_amount , 
                                                policy_amount_attached.amount_type_code , 
                                                CASE when policy_amount_attached.amount_type_code = 'Year' then policy_amount_attached.policy_amount/12 end as monthly_policy_amount, 
                                                policy_amount_attached.policy_coverage_detail_identifier
                                             FROM demo.acme.policy_amount_attached 
                                             JOIN demo.acme.premium_attached ON policy_amount_attached.policy_amount_identifier = premium_attached.policy_amount_identifier) as tbl36
from sqlquery (SELECT 
                                                geographic_location_identifier,
                                                line_1_address, 
                                                line_2_address, 
                                                municipality_name, 
                                                location_address_attached.state_code, 
                                                postal_code, 
                                                country_code, 
                                                latitude_value,
                                                longitude_value
                                             FROM demo.acme.geographic_location_attached 
                                             JOIN demo.acme.location_address_attached ON geographic_location_attached.location_address_identifier = location_address_attached.location_address_identifier
                                             JOIN demo.acme.physical_location_attached ON geographic_location_attached.physical_location_identifier = physical_location_attached.physical_location_identifier) as tbl37
from sqlquery (SELECT DISTINCT 
                                                party_identifier
                                             FROM demo.acme.assessment_party_role_attached
                                             WHERE demo.acme.assessment_party_role_attached.party_role_code = 'UW') as tbl38
from sqlquery (SELECT DISTINCT 
                                                party_identifier
                                             FROM demo.acme.assessment_party_role_attached
                                             WHERE assessment_party_role_attached.party_role_code = 'UW') as tbl39
from sqlquery (SELECT 
                                                assessment_attached.assessment_identifier, 
                                                assessment_description, 
                                                assessment_attached.begin_date, 
                                                assessment_attached.end_date, 
                                                assessment_result_type_code 
                                             FROM demo.acme.assessment_result_attached ar
                                             JOIN demo.acme.underwriting_assessment_attached ua ON ar.assessment_result_identifier = ua.assessment_result_identifier
                                             JOIN demo.acme.assessment_attached  ON ar.assessment_identifier = assessment_attached.assessment_identifier) as tbl40
from sqlquery (SELECT 
                                                assessment_attached.assessment_identifier, 
                                                assessment_description, 
                                                assessment_attached.begin_date, 
                                                assessment_attached.end_date, 
                                                assessment_result_type_code 
                                             FROM demo.acme.assessment_result_attached ar
                                             JOIN demo.acme.underwriting_assessment_attached ua ON ar.assessment_result_identifier = ua.assessment_result_identifier
                                             JOIN demo.acme.assessment_attached  ON ar.assessment_identifier = assessment_attached.assessment_identifier) as tbl41
from sqlquery (SELECT 
                                                assessment_attached.assessment_identifier, 
                                                assessment_description, 
                                                assessment_attached.begin_date, 
                                                assessment_attached.end_date, 
                                                assessment_result_type_code 
                                             FROM demo.acme.assessment_result_attached ar
                                             JOIN demo.acme.underwriting_assessment_attached ua ON ar.assessment_result_identifier = ua.assessment_result_identifier
                                             JOIN demo.acme.assessment_attached  ON ar.assessment_identifier = assessment_attached.assessment_identifier) as tbl42
from sqlquery (SELECT 
                                                geographic_location_identifier,
                                                line_1_address, 
                                                line_2_address, 
                                                municipality_name, 
                                                location_address_attached.state_code, 
                                                postal_code, 
                                                country_code, 
                                                latitude_value,
                                                longitude_value
                                             FROM demo.acme.geographic_location_attached 
                                             JOIN demo.acme.location_address_attached ON geographic_location_attached.location_address_identifier = location_address_attached.location_address_identifier
                                             JOIN demo.acme.physical_location_attached ON geographic_location_attached.physical_location_identifier = physical_location_attached.physical_location_identifier) as tbl43
from "Demo"."acme"."claim_coverage_attached" as tbl44
from sqlquery (SELECT 
                                                assessment_attached.assessment_identifier, 
                                                assessment_party_role_attached.party_identifier
                                             FROM demo.acme.assessment_result_attached ar
                                             JOIN demo.acme.underwriting_assessment_attached ua ON ar.assessment_result_identifier = ua.assessment_result_identifier
                                             JOIN demo.acme.assessment_attached  ON ar.assessment_identifier = assessment_attached.assessment_identifier
                                             JOIN demo.acme.assessment_party_role_attached ON assessment_party_role_attached.assessment_identifier = assessment_attached.assessment_identifier
                                             WHERE assessment_party_role_attached.party_role_code = 'UW') as tbl45
from sqlquery (SELECT 
                                                policy_attached.policy_identifier, 
                                                assessment_attached.assessment_identifier
                                             FROM demo.acme.agreement_assessment_attached
                                             JOIN demo.acme.policy_attached ON policy_attached.policy_identifier = agreement_assessment_attached.agreement_identifier
                                             JOIN demo.acme.assessment_attached ON assessment_attached.assessment_identifier = agreement_assessment_attached.assessment_identifier) as tbl46
from "Demo"."acme"."claim_attached" as tbl47
from "Demo"."acme"."claim_coverage_attached" as tbl48
from sqlquery (SELECT 
                                                ca.claim_identifier, 
                                                ca.claim_amount_identifier, 
                                                ca.claim_amount
                                             FROM demo.acme.claim_amount_attached ca
                                             JOIN demo.acme.expense_payment_attached ep ON ca.claim_amount_identifier = ep.claim_amount_identifier) as tbl49
from sqlquery (SELECT 
                                                ca.claim_identifier, 
                                                ca.claim_amount_identifier, 
                                                ca.claim_amount
                                             FROM demo.acme.claim_amount_attached ca
                                             JOIN demo.acme.expense_reserve_attached er ON ca.claim_amount_identifier = er.claim_amount_identifier) as tbl50
from "Demo"."acme"."policy_coverage_detail_attached" as tbl51
from "Demo"."acme"."insurable_object_attached" as tbl52
from sqlquery (SELECT 
                                                ca.claim_identifier, 
                                                ca.claim_amount_identifier, 
                                                ca.claim_amount
                                             FROM demo.acme.claim_amount_attached ca
                                             JOIN demo.acme.loss_reserve_attached lr ON ca.claim_amount_identifier = lr.claim_amount_identifier) as tbl53
from "Demo"."acme"."policy_coverage_detail_attached" as tbl54
from sqlquery (SELECT 
                                                policy_amount_identifier, 
                                                policy_amount_attached.policy_amount, 
                                                policy_amount_attached.policy_coverage_detail_identifier
                                             FROM demo.acme.policy_amount_attached 
                                             WHERE policy_amount_identifier not in (SELECT policy_amount_identifier FROM demo.acme.premium_attached )) as tbl55
from "Demo"."acme"."policy_coverage_detail_attached" as tbl56
from sqlquery (SELECT 
                                                policy_attached.policy_identifier, 
                                                party_identifier
                                             FROM demo.acme.agreement_party_role_attached
                                             JOIN demo.acme.policy_attached ON agreement_party_role_attached.agreement_identifier = policy_attached.policy_identifier
                                             WHERE agreement_party_role_attached.party_role_code = 'PH') as tbl57
from sqlquery (SELECT 
                                                policy_amount_attached.policy_amount_identifier, 
                                                policy_amount_attached.policy_amount, 
                                                policy_amount_attached.amount_type_code , 
                                                CASE when policy_amount_attached.amount_type_code = 'Year' then policy_amount_attached.policy_amount/12 end as monthly_policy_amount, 
                                                policy_amount_attached.policy_coverage_detail_identifier
                                             FROM demo.acme.policy_amount_attached 
                                             JOIN demo.acme.premium_attached ON policy_amount_attached.policy_amount_identifier = premium_attached.policy_amount_identifier) as tbl58
from "Demo"."acme"."claim_attached" as tbl59
from sqlquery (SELECT 
                                                policy_attached.policy_identifier, 
                                                party_identifier
                                             FROM demo.acme.agreement_party_role_attached
                                             JOIN demo.acme.policy_attached ON agreement_party_role_attached.agreement_identifier = policy_attached.policy_identifier
                                             WHERE agreement_party_role_attached.party_role_code = 'AG') as tbl60
from sqlquery (SELECT 
                                                policy_attached.policy_identifier, 
                                                assessment_attached.assessment_identifier
                                             FROM demo.acme.agreement_assessment_attached
                                             JOIN demo.acme.policy_attached ON policy_attached.policy_identifier = agreement_assessment_attached.agreement_identifier
                                             JOIN demo.acme.assessment_attached ON assessment_attached.assessment_identifier = agreement_assessment_attached.assessment_identifier) as tbl61
from sqlquery (SELECT 
                                                geographic_location_identifier,
                                                line_1_address, 
                                                line_2_address, 
                                                municipality_name, 
                                                location_address_attached.state_code, 
                                                postal_code, 
                                                country_code, 
                                                latitude_value,
                                                longitude_value
                                             FROM demo.acme.geographic_location_attached 
                                             JOIN demo.acme.location_address_attached ON geographic_location_attached.location_address_identifier = location_address_attached.location_address_identifier
                                             JOIN demo.acme.physical_location_attached ON geographic_location_attached.physical_location_identifier = physical_location_attached.physical_location_identifier) as tbl1
from sqlquery (SELECT 
                                                geographic_location_identifier,
                                                line_1_address, 
                                                line_2_address, 
                                                municipality_name, 
                                                location_address_attached.state_code, 
                                                postal_code, 
                                                country_code, 
                                                latitude_value,
                                                longitude_value
                                             FROM demo.acme.geographic_location_attached 
                                             JOIN demo.acme.location_address_attached ON geographic_location_attached.location_address_identifier = location_address_attached.location_address_identifier
                                             JOIN demo.acme.physical_location_attached ON geographic_location_attached.physical_location_identifier = physical_location_attached.physical_location_identifier) as tbl2
from sqlquery (SELECT 
                                                ca.claim_identifier, 
                                                ca.claim_amount_identifier, 
                                                ca.claim_amount
                                             FROM demo.acme.claim_amount_attached ca
                                             JOIN demo.acme.loss_payment_attached lp ON ca.claim_amount_identifier = lp.claim_amount_identifier) as tbl0
from sqlquery (SELECT DISTINCT 
                                                party_identifier
                                             FROM demo.acme.agreement_party_role_attached
                                             JOIN demo.acme.policy_attached ON agreement_party_role_attached.agreement_identifier = policy_attached.policy_identifier 
                                             WHERE agreement_party_role_attached.party_role_code = 'AG') as tbl3
  {
    create ns1:e2bd0f47f73ed3429e8b0a4cd181165ab96c8479 as graph ns3: option (exclusive) {
            <r2rml:virt02-e9b5548a277410df3ccc963227c5566d> (tbl0."Claim_Identifier")
                    ns2:hasLossPayment <r2rml:virt02-f5e646552dfe6844eb5b6f1e4e70546f> (tbl0."Claim_Amount_Identifier") .
            <r2rml:virt02-b5c6a0a7468db0a3ab4d2b3c03719afd> (tbl1."Geographic_Location_Identifier")
                    ns2:addressLine1 tbl1."Line_1_Address" .
            <r2rml:virt02-b5c6a0a7468db0a3ab4d2b3c03719afd> (tbl2."Geographic_Location_Identifier")
                    ns2:addressLine2 tbl2."Line_2_Address" .
            <r2rml:virt02-63d101b8de43bac643830054a11466c5> (tbl3."Party_Identifier")
                    ns2:agentId tbl3."Party_Identifier" .
            <r2rml:virt02-63d101b8de43bac643830054a11466c5> (tbl4."Party_Identifier")
                    a ns2:Agent .
            <r2rml:virt02-f2834cb38e517d27bb309d7dba69a658> (tbl5."Catastrophe_Identifier")
                    ns2:catastropheName tbl5."Catastrophe_Name" .
            <r2rml:virt02-f2834cb38e517d27bb309d7dba69a658> (tbl6."Catastrophe_Identifier")
                    a ns2:Catastrophe .
            <r2rml:virt02-b5c6a0a7468db0a3ab4d2b3c03719afd> (tbl7."Geographic_Location_Identifier")
                    ns2:city tbl7."Municipality_Name" .
            <r2rml:virt02-e9b5548a277410df3ccc963227c5566d> (tbl8."Claim_Identifier")
                    ns2:claimCloseDate tbl8."Claim_Close_Date" .
            <r2rml:virt02-e9b5548a277410df3ccc963227c5566d> (tbl9."Claim_Identifier")
                    ns2:claimNumber tbl9."Company_Claim_Number" .
            <r2rml:virt02-e9b5548a277410df3ccc963227c5566d> (tbl10."Claim_Identifier")
                    ns2:claimOpenDate tbl10."Claim_Open_Date" .
            <r2rml:virt02-e9b5548a277410df3ccc963227c5566d> (tbl11."Claim_Identifier")
                    a ns2:Claim .
            <r2rml:virt02-b5c6a0a7468db0a3ab4d2b3c03719afd> (tbl12."Geographic_Location_Identifier")
                    ns2:country tbl12."Country_Code" .
            <r2rml:virt02-f5e646552dfe6844eb5b6f1e4e70546f> (tbl13."Claim_Amount_Identifier")
                    ns2:expensePaymentAmount tbl13."Claim_Amount" .
            <r2rml:virt02-f5e646552dfe6844eb5b6f1e4e70546f> (tbl14."Claim_Amount_Identifier")
                    ns2:expenseReserveAmount tbl14."Claim_Amount" .
            <r2rml:virt02-14faf49b0a34b32c891921aef0776502> (tbl15."Insurable_Object_Identifier")
                    a ns2:InsurableObject .
            <r2rml:virt02-b5c6a0a7468db0a3ab4d2b3c03719afd> (tbl16."Geographic_Location_Identifier")
                    ns2:latitude tbl16."Latitude_Value" .
            <r2rml:virt02-b5c6a0a7468db0a3ab4d2b3c03719afd> (tbl17."Geographic_Location_Identifier")
                    a ns2:Location .
            <r2rml:virt02-b5c6a0a7468db0a3ab4d2b3c03719afd> (tbl18."Geographic_Location_Identifier")
                    ns2:longitud tbl18."Longitude_Value" .
            <r2rml:virt02-f5e646552dfe6844eb5b6f1e4e70546f> (tbl19."Claim_Amount_Identifier")
                    ns2:lossPaymentAmount tbl19."Claim_Amount" .
            <r2rml:virt02-f5e646552dfe6844eb5b6f1e4e70546f> (tbl20."Claim_Amount_Identifier")
                    ns2:lossReserveAmount tbl20."Claim_Amount" .
            <r2rml:virt02-da467369f438f3073e4c950c824eb123> (tbl21."Policy_Amount_Identifier")
                    ns2:policyAmount tbl21."Policy_Amount" .
            <r2rml:virt02-da467369f438f3073e4c950c824eb123> (tbl22."Policy_Amount_Identifier")
                    a ns2:PolicyAmount .
            <r2rml:virt02-edca153fc13a71e83bcf3c4a39e443db> (tbl23."Policy_Coverage_Detail_Identifier")
                    ns2:policyCoverageDetailId tbl23."Policy_Coverage_Detail_Identifier" .
            <r2rml:virt02-edca153fc13a71e83bcf3c4a39e443db> (tbl24."Policy_Coverage_Detail_Identifier")
                    a ns2:PolicyCoverageDetail .
            <r2rml:virt02-edca153fc13a71e83bcf3c4a39e443db> (tbl25."Policy_Coverage_Detail_Identifier")
                    ns2:policyCoverageEffectiveDate tbl25."Effective_Date" .
            <r2rml:virt02-edca153fc13a71e83bcf3c4a39e443db> (tbl26."Policy_Coverage_Detail_Identifier")
                    ns2:policyCoverageExpirationDate tbl26."Expiration_Date" .
            <r2rml:virt02-f8951d252145b7891f46da21f5937ac6> (tbl27."Policy_Identifier")
                    ns2:policyEffectiveDate tbl27."Effective_Date" .
            <r2rml:virt02-f8951d252145b7891f46da21f5937ac6> (tbl28."Policy_Identifier")
                    ns2:policyExpirationDate tbl28."Expiration_Date" .
            <r2rml:virt02-cb03626721f8346a077f1bef25de43bc> (tbl29."Party_Identifier")
                    ns2:policyHolderId tbl29."Party_Identifier" .
            <r2rml:virt02-cb03626721f8346a077f1bef25de43bc> (tbl30."Party_Identifier")
                    a ns2:PolicyHolder .
            <r2rml:virt02-f8951d252145b7891f46da21f5937ac6> (tbl31."Policy_Identifier")
                    a ns2:Policy ;
                    ns2:policyNumber tbl31."Policy_Number" .
            <r2rml:virt02-f8951d252145b7891f46da21f5937ac6> (tbl32."Policy_Identifier")
                    a ns2:Policy .
            <r2rml:virt02-729b5e55b270b25da8ac989bd821b787> (tbl33."Policy_Amount_Identifier")
                    ns2:premiumAmountMonthly tbl33."monthly_policy_amount" .
            <r2rml:virt02-729b5e55b270b25da8ac989bd821b787> (tbl34."Policy_Amount_Identifier")
                    ns2:premiumAmount tbl34."Policy_Amount" .
            <r2rml:virt02-729b5e55b270b25da8ac989bd821b787> (tbl35."Policy_Amount_Identifier")
                    ns2:premiumPeriod tbl35."Amount_Type_Code" .
            <r2rml:virt02-729b5e55b270b25da8ac989bd821b787> (tbl36."Policy_Amount_Identifier")
                    a ns2:Premium .
            <r2rml:virt02-b5c6a0a7468db0a3ab4d2b3c03719afd> (tbl37."Geographic_Location_Identifier")
                    ns2:state tbl37."State_Code" .
            <r2rml:virt02-735c5b3434e6868ccd7bb3ac7feab651> (tbl38."Party_Identifier")
                    ns2:underwriterId tbl38."Party_Identifier" .
            <r2rml:virt02-735c5b3434e6868ccd7bb3ac7feab651> (tbl39."Party_Identifier")
                    a ns2:Underwriter .
            <r2rml:virt02-0c54df4e07db77a1f8eb4e55d995a9aa> (tbl40."Assessment_Identifier")
                    a ns2:UnderwritingAssessment .
            <r2rml:virt02-0c54df4e07db77a1f8eb4e55d995a9aa> (tbl41."Assessment_Identifier")
                    ns2:underwritingBeginDate tbl41."Begin_Date" .
            <r2rml:virt02-0c54df4e07db77a1f8eb4e55d995a9aa> (tbl42."Assessment_Identifier")
                    ns2:underwritingEndDate tbl42."End_Date" .
            <r2rml:virt02-b5c6a0a7468db0a3ab4d2b3c03719afd> (tbl43."Geographic_Location_Identifier")
                    ns2:zipCode tbl43."Postal_Code" .
            <r2rml:virt02-e9b5548a277410df3ccc963227c5566d> (tbl44."Claim_Identifier")
                    ns2:against <r2rml:virt02-edca153fc13a71e83bcf3c4a39e443db> (tbl44."Policy_Coverage_Detail_Identifier") .
            <r2rml:virt02-0c54df4e07db77a1f8eb4e55d995a9aa> (tbl45."Assessment_Identifier")
                    ns2:hasUnderwriter <r2rml:virt02-735c5b3434e6868ccd7bb3ac7feab651> (tbl45."Party_Identifier") .
            <r2rml:virt02-f8951d252145b7891f46da21f5937ac6> (tbl46."Policy_Identifier")
                    ns2:hasUnderwritingAssessment <r2rml:virt02-0c54df4e07db77a1f8eb4e55d995a9aa> (tbl46."Assessment_Identifier") .
            <r2rml:virt02-e9b5548a277410df3ccc963227c5566d> (tbl47."Claim_Identifier")
                    ns2:hasCatastrophe <r2rml:virt02-f2834cb38e517d27bb309d7dba69a658> (tbl47."Catastrophe_Identifier") .
            <r2rml:virt02-edca153fc13a71e83bcf3c4a39e443db> (tbl48."Policy_Coverage_Detail_Identifier")
                    ns2:hasClaim <r2rml:virt02-e9b5548a277410df3ccc963227c5566d> (tbl48."Claim_Identifier") .
            <r2rml:virt02-e9b5548a277410df3ccc963227c5566d> (tbl49."Claim_Identifier")
                    ns2:hasExpensePayment <r2rml:virt02-f5e646552dfe6844eb5b6f1e4e70546f> (tbl49."Claim_Amount_Identifier") .
            <r2rml:virt02-e9b5548a277410df3ccc963227c5566d> (tbl50."Claim_Identifier")
                    ns2:hasExpenseReserve <r2rml:virt02-f5e646552dfe6844eb5b6f1e4e70546f> (tbl50."Claim_Amount_Identifier") .
            <r2rml:virt02-edca153fc13a71e83bcf3c4a39e443db> (tbl51."Policy_Coverage_Detail_Identifier")
                    ns2:hasInsurableObject <r2rml:virt02-14faf49b0a34b32c891921aef0776502> (tbl51."Insurable_Object_Identifier") .
            <r2rml:virt02-14faf49b0a34b32c891921aef0776502> (tbl52."Insurable_Object_Identifier")
                    ns2:hasLocation <r2rml:virt02-b5c6a0a7468db0a3ab4d2b3c03719afd> (tbl52."Geographic_Location_Identifier") .
            <r2rml:virt02-e9b5548a277410df3ccc963227c5566d> (tbl53."Claim_Identifier")
                    ns2:hasLossReserve <r2rml:virt02-f5e646552dfe6844eb5b6f1e4e70546f> (tbl53."Claim_Amount_Identifier") .
            <r2rml:virt02-edca153fc13a71e83bcf3c4a39e443db> (tbl54."Policy_Coverage_Detail_Identifier")
                    ns2:hasPolicy <r2rml:virt02-f8951d252145b7891f46da21f5937ac6> (tbl54."Policy_Identifier") .
            <r2rml:virt02-edca153fc13a71e83bcf3c4a39e443db> (tbl55."Policy_Coverage_Detail_Identifier")
                    ns2:hasPolicyAmount <r2rml:virt02-da467369f438f3073e4c950c824eb123> (tbl55."Policy_Amount_Identifier") .
            <r2rml:virt02-f8951d252145b7891f46da21f5937ac6> (tbl56."Policy_Identifier")
                    ns2:hasPolicyCoverageDetail <r2rml:virt02-edca153fc13a71e83bcf3c4a39e443db> (tbl56."Policy_Coverage_Detail_Identifier") .
            <r2rml:virt02-f8951d252145b7891f46da21f5937ac6> (tbl57."Policy_Identifier")
                    ns2:hasPolicyHolder <r2rml:virt02-cb03626721f8346a077f1bef25de43bc> (tbl57."Party_Identifier") .
            <r2rml:virt02-edca153fc13a71e83bcf3c4a39e443db> (tbl58."Policy_Coverage_Detail_Identifier")
                    ns2:hasPremiumAmount <r2rml:virt02-729b5e55b270b25da8ac989bd821b787> (tbl58."Policy_Amount_Identifier") .
            <r2rml:virt02-e9b5548a277410df3ccc963227c5566d> (tbl59."Claim_Identifier")
                    ns2:involvesInsurableObject <r2rml:virt02-14faf49b0a34b32c891921aef0776502> (tbl59."Insurable_Object_Identifier") .
            <r2rml:virt02-f8951d252145b7891f46da21f5937ac6> (tbl60."Policy_Identifier")
                    ns2:soldByAgent <r2rml:virt02-63d101b8de43bac643830054a11466c5> (tbl60."Party_Identifier") .
            <r2rml:virt02-a2da0b0bdbe28838dc580b80140b58c5> (tbl61."Assessment_Identifier")
                    ns2:underwritesPolicy <r2rml:virt02-f8951d252145b7891f46da21f5937ac6> (tbl61."Policy_Identifier") }
  }

;