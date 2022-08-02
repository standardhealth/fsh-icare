Instance: ICAREdata-patient
InstanceOf: mCodeCancerPatient
Description: "Example for Patient"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m456"
* name.family = "C."
* name.given[0] = "Marsha"
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

Instance: ctpc-disease-not-responding
InstanceOf: CarePlanWithReview
Description: "Cancer treatment plan changed due to disease not responding"
//status = http://hl7.org/fhir/ValueSet/request-status#active "active"
* status = http://hl7.org/fhir/request-status#active "Active"
* intent = http://hl7.org/fhir/care-plan-intent#plan "Plan"
* subject = Reference(ICAREdata-patient)
* extension[carePlanReview][+]
  * extension[ChangedFlag].valueBoolean = true
  * extension[CarePlanChangeReason].valueCodeableConcept = SCT#266721009 "Absent response to treatment (situation)"
  * extension[ReviewDate].valueDate = "2022-02-21"