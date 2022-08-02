<style type="text/css">
  .img-container {
      text-align: center;
      display: block;
    }
</style>

<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">


<h1>About the ICAREdata&reg; Project</h1>

<p>The overall goal of the <a href="http://icaredata.org/" target="_blank">ICAREdata project</a> is to support the prospective collection of high quality real-world data, based on <a href="https://confluence.hl7.org/display/COD/mCODE/" target="_blank">mCODE&trade;</a>, to enable clinical oncology research.</p>

<p>The Integrating Clinical trials And Real-world Endpoints data (ICAREdata) project is a collaboration between The MITRE Corporation, the Alliance for Clinical Trials in Oncology, and the National Cancer Institute (NCI). The project is conducting a study to demonstrate the ability to use high-quality mCODE-based real-world data in a clinical trial setting.</p>

<h1>ICAREdata and mCODE</h1>

<p>This implementation guide intends to cover content necessary for ICAREdata that is not part of the <a href="http://hl7.org/fhir/us/mcode/" target="_blank">mCODE specification</a>. Implementers should refer directly to mCODE for the specification of all mCODE elements.</p>
<p>The mCODE implementation guide includes information on how to interpret conformance requirements as well as elements marked as "must support". This implementation guide follows those same guidelines.</p>

<h1>Structured phrases, mCODE and the ICAREdata IG</h1>

<p>The ICAREdata strategy is to collect improved real-world data in a way that does not disrupt existing clinical processes and minimizes burden to the provider while enabling the collection of complete, accurate, and computable data. ICAREdata questions are answered by clinicians with the results appearing as structured phrases in the clinical note.</p>

<p>ICAREdata structured questions and value sets are intended to be mapped to FHIR resources compliant with the requirements specified in the mCODE and ICAREdata implementation guides. This includes mapping 1) the ICAREdata question to the appropriate FHIR resource and element, and 2) the associated value to the appropriate vocabulary defined in the specification.</p>

<p>The figure below illustrates how ICAREdata structured phrases relate to FHIR profiles and implementation guides.</p>
<span class="img-container">
    <img src="icaredata_fhir.png" alt="ICAREdata and FHIR" width="65%">
</span>
<p>&nbsp;</p>

<p>For details on mapping guidance for specific ICAREdata structured phrases, please consult <a href="mapping_guidance.html"> ICAREdata to FHIR mapping guidance</a>.</p>
<!--
<h1>Known Issues and Limitations</h1>
<p>The profiles in this implementation guide may have dependencies on content in other implementation guides, namely mCODE. These dependencies may not always resolve in the profile.</p>
-->

<h1><a name="Contacts"></a>Contact Information</h1>

<p>For inquiries regarding ICAREdata Project, contact <a href="mailto:icaredata@alliancefoundationtrials.org">ICAREdata Team</a>.</p>
<p>For questions or issues related to this implementation guide, please use our <a href="https://github.com/standardhealth/fsh-icare/issues">ICAREdata GitHub issue tracker</a>.</p>
<p>For questions or issues regarding the content of mCODE implementation guide, please use the <a href="https://github.com/standardhealth/fsh-mcode/issues">mCODE GitHub issue tracker</a>.</p>
    
   </div>