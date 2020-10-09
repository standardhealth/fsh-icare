Alias:    SCT = http://snomed.info/sct

Profile:	    CarePlanWithReview
Parent:         CarePlan
Id:             icare-care-plan-with-review
Title:          "Care Plan with Review"
Description:    "An extended Care Plan that includes clinical reviews and documentation of changes. The Care Plan itself describes how one or more practitioners intend to deliver care for a particular patient, group or community for a period of time, possibly limited to care for a specific condition or set of conditions. The Care Plan tracks the progress of activities associated with the plan. The review extension includes the practitioner doing the review, date of review, whether the plan was changed, a coded reason for change, and a narrative describing the change."
* extension contains CarePlanReview named carePlanReview 0..* MS

Extension:  CarePlanReview
Id: icare-care-plan-review
Description:    "Documentation of a re-assessment of the Care Plan, which may or may not lead to a revision of the plan. The fact the assessment has been conducted should be documented even when the Care Plan is not changed.
Implementation note: A ReasonCode is required when ChangedFlag is true."
//* value[x] 0..0
* extension contains 
    ReviewedBy 0..1 and
    ReviewDate 1..1 MS and
    ChangedFlag 1..1 MS and
    CarePlanChangeReason 0..1 MS and
    CommentOrDescription 0..1
* extension[ReviewedBy].value[x] only Reference
* extension[ReviewedBy].valueReference only Reference(Practitioner)
* extension[ReviewDate].value[x] only date
* extension[ChangedFlag].value[x] only boolean
* extension[CarePlanChangeReason].value[x] only CodeableConcept
* extension[CarePlanChangeReason].valueCodeableConcept from CarePlanChangeReasonVS (required)
* extension[CommentOrDescription].value[x] only string

ValueSet:	    CarePlanChangeReasonVS
Id: icare-care-plan-change-reason-vs
Title: "Care Plan Change Reason Value Set"
Description:    "Reasons that a care plan was changed. Similar to TreatmentTerminationReasonVS"
* SCT#405613005   "Planned Procedure (situation)"
* SCT#266721009   "Absent response to treatment (situation)"
* SCT#281647001   "Adverse reaction (disorder)"
* SCT#182890002   "Patient requests alternative treatment (finding)"
* SCT#74964007    "Other (qualifier value)"


/* these were created before I decided to inline the extensions
Extension:   ReviewedBy
Id: icare-reviewed-by
Description:  "The practitioner who is the reviewer. If not provided, it is assumed the author of the Care Plan was the reviewer."
* value[x] only Reference
* valueReference only Reference(Practitioner)
* extension 0..0

Extension:   ReviewedDate
Id: icare-reviewed-date
Description:  "The most recent date the item was reviewed."
* value[x] only date
* extension 0..0

Extension:   ChangedFlag
Id: icare-changed-flag
Description:  "A flag indicating whether a change was made to the Care Plan at the time of the review."
* value[x] only boolean
* extension 0..0

Extension:  CarePlanChangeReason
Id: icare-reason-code
Description:  "The explanation or justification for the current item or action, expressed as a code."
* value[x] only CodeableConcept
* valueCodeableConcept from CarePlanChangeReasonVS (required)
* extension 0..0

Extension:   CommentOrDescription
Id: icare-comment-or-description
Description:   "A text note containing additional details, explanation, description, comment, or summarization."
* value[x] only string
* extension 0..0
*/