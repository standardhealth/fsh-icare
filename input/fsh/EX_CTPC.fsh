// ICAREdata Patient
Instance: ICAREdata-patient
InstanceOf: mCodeCancerPatient
Description: "ICAREdata Patient"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m456"
* name.family = "Chanel"
* name.given = "Marsha"
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "999-999-9999"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "marsha.c@example.com"
* gender = #female
* birthDate = "1955-02-20"
* address.line = "456 Smith Lane"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"

// Primary Cancer Condition ICAREdata Patient
Instance: ICAREdata-primaryCancerCondition
InstanceOf: mCodePrimaryCancerCondition
Description: "Primary Cancer Condition for ICAREdata patient"
* id = "ICAREdataPrimaryCancerCondition"
* clinicalStatus =  http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* code = SCT#353431000119107 "Primary malignant neoplasm of female left breast"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* subject = Reference(ICAREdata-patient)

// Cancer Treatment Plan Change for ICAREdata Patient
Instance: ICAREdata-cancerTreatmentPlanChange
InstanceOf: CarePlanWithReview
Description: "Cancer treatment plan change for ICAREdata patient"
* status = http://hl7.org/fhir/request-status#active "Active"
* intent = http://hl7.org/fhir/care-plan-intent#plan "Plan"
* subject = Reference(ICAREdata-patient)
* extension[carePlanReview][+]
  * extension[ChangedFlag].valueBoolean = true
  * extension[CarePlanChangeReason].valueCodeableConcept = SCT#266721009 "Absent response to treatment (situation)"
  * extension[ReviewDate].valueDate = "2022-02-21"

// Cancer Disease Status for ICAREdata Patient
Instance: ICAREdata-CancerDiseaseStatus
InstanceOf: mCodeCancerDiseaseStatus
Description: "Cancer disease status for ICAREdata patient"
* status = http://hl7.org/fhir/observation-status#final "Final"
* subject = Reference(ICAREdata-patient)
* focus = Reference(ICAREdata-primaryCancerCondition)
* valueCodeableConcept = SCT#271299001	"Patient's condition worsened (finding)"
* extension[mcode-cancer-disease-status-evidence-type][+].valueCodeableConcept = SCT#363679005 "Imaging (procedure)"
* extension[mcode-cancer-disease-status-evidence-type][+].valueCodeableConcept = SCT#386344002 "Laboratory data interpretation (procedure)"
* effectiveDateTime = "2022-02-21"

/*
// Alliance Trial for ICAREdata Patient
Instance: ICAREdata-clinicalTrial-Compass
InstanceOf: ResearchStudy
Description: "Alliance COMPASS Protocol A011801 for ICAREdata"
* title = "Alliance COMPASS Trial A011801" 
* status =  http://hl7.org/fhir/research-study-status#active "Active"
*/