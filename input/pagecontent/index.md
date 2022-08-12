
### About the ICAREdata&reg; Project

The Integrating Clinical trials And Real-world Endpoints data (ICAREdata) project is a collaboration between The MITRE Corporation, the Alliance for Clinical Trials in Oncology, and the National Cancer Institute (NCI). The overall goal of the [ICAREdata project](http://icaredata.org/) is to support the prospective collection of high quality real-world data, based on [mCODE&trade;](https://confluence.hl7.org/display/COD/mCODE/), short for minimal Common Oncology Data Elements, to enable clinical oncology research. The project is conducting a study to demonstrate the ability to use high-quality mCODE-based real-world data in a clinical trial setting.

### ICAREdata and mCODE

This implementation guide intends to cover content necessary for ICAREdata that is not part of [mCODE Standard for Trial Use 2 (STU 2)](http://hl7.org/fhir/us/mcode). Implementers should refer directly to mCODE for the specification of all mCODE elements. The mCODE implementation guide includes information on how to interpret conformance requirements as well as elements marked as "must support". This implementation guide follows those same guidelines.

### ICAREdata Questions, mCODE and the ICAREdata IG

The ICAREdata strategy is to collect improved real-world data in a way that does not disrupt existing clinical processes and minimizes burden to the provider while enabling the collection of complete, accurate, and computable data. ICAREdata questions are answered by clinicians with the results appearing as structured phrases in the clinical note.

ICAREdata structured questions and value sets are intended to be mapped to FHIR resources compliant with the requirements specified in the mCODE and ICAREdata implementation guides. This includes mapping 1) the ICAREdata question to the appropriate FHIR resource and element, and 2) the associated value to the appropriate vocabulary defined in the specification.

The figure below illustrates how ICAREdata questions relate to FHIR profiles and implementation guides.

<img src="icaredata_fhir.png" alt="ICAREdata and FHIR" width="80%" style="float:none; margin: 0px 0px 0px 0px;" />

For details on mapping guidance for specific ICAREdata questions, please consult [ICAREdata to FHIR mapping guidance](mapping_guidance.html).

### Contact Information

* For inquiries regarding the ICAREdata Project, contact the ICAREdata Team, icaredata@alliancefoundationtrials.org
* For questions or issues related to this implementation guide, please use our [ICAREdata GitHub issue tracker](https://github.com/standardhealth/fsh-icare/issues)
* For questions or issues regarding the content of mCODE implementation guide, please use the [mCODE GitHub issue tracker](https://github.com/HL7/fhir-mCODE-ig/issues)
