Profile: CarePlanWithReview
Parent: http://hl7.org/fhir/StructureDefinition/CarePlan
Id: icare-care-plan-with-review
Title: "Care Plan with Review"
Description: "An extended Care Plan that includes clinical reviews and documentation of changes. The Care Plan itself describes how one or more practitioners intend to deliver care for a particular patient, group or community for a period of time, possibly limited to care for a specific condition or set of conditions. The Care Plan tracks the progress of activities associated with the plan. The review extension includes the practitioner doing the review, date of review, whether the plan was changed, a coded reason for change, and a narrative describing the change."
* ^version = "1.0.0"
* ^status = #active
* extension contains http://mcodeinitiative.org/codex/us/icare/StructureDefinition/icare-care-plan-review named carePlanReview 0..* MS

Extension: CarePlanReview
Id: icare-care-plan-review
Description: "Documentation of a re-assessment of the Care Plan, which may or may not lead to a revision of the plan. The fact the assessment has been conducted should be documented even when the Care Plan is not changed.\r\nImplementation note: A ReasonCode is required when ChangedFlag is true."
* ^version = "1.0.0"
* extension contains ReviewedBy 0..1
* extension[ReviewedBy].value[x] only Reference
* extension[ReviewedBy].valueReference 0..1
* extension[ReviewedBy].valueReference only Reference(http://hl7.org/fhir/StructureDefinition/Practitioner)
* extension contains ReviewDate 1..1 MS
* extension[ReviewDate].value[x] only date
* extension contains ChangedFlag 1..1 MS
* extension[ChangedFlag].value[x] only boolean
* extension contains CarePlanChangeReason 0..1 MS
* extension[CarePlanChangeReason].value[x] only CodeableConcept
* extension[CarePlanChangeReason].valueCodeableConcept 0..1
* extension[CarePlanChangeReason].valueCodeableConcept from http://mcodeinitiative.org/codex/us/icare/ValueSet/icare-care-plan-change-reason-vs (required)
* extension contains CommentOrDescription 0..1
* extension[CommentOrDescription].value[x] only string