<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:ronav  Version:1.11.0.0 - Tue Jun 18 12:57:06 EDT 2019 -->
  <!-- Generated from the PDS4 Information Model Version 1.11.0.0 - System Build 9a -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/mission/ronav/v1" prefix="ronav"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="ronav:Imaging_Parameters/ronav:cover_position">
      <sch:assert test=". = ('DEFOC_NATT', 'FOC_ATT', 'FOC_NATT', 'UNDEFINED_POSITION')">
        The attribute ronav:cover_position must be equal to one of the following values 'DEFOC_NATT', 'FOC_ATT', 'FOC_NATT', 'UNDEFINED_POSITION'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ronav:Imaging_Parameters/ronav:data_valid">
      <sch:assert test=". = ('NOT_OK', 'OK')">
        The attribute ronav:data_valid must be equal to one of the following values 'NOT_OK', 'OK'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ronav:Imaging_Parameters/ronav:radiance_DN_step">
      <sch:assert test="@unit = ('W*m**-2*sr**-1*Hz**-1', 'W*m**-2*sr**-1*nm**-1', 'W*m**-2*sr**-1*um**-1', 'W*m**-3*sr**-1', 'W/m**2/sr/Hz', 'W/m**2/sr/nm', 'W/m**2/sr/μm', 'W/m**3/sr', 'uW*cm**-2*sr**-1*um**-1', 'μW/cm**2/sr/μm')">
        The attribute @unit must be equal to one of the following values 'W*m**-2*sr**-1*Hz**-1', 'W*m**-2*sr**-1*nm**-1', 'W*m**-2*sr**-1*um**-1', 'W*m**-3*sr**-1', 'W/m**2/sr/Hz', 'W/m**2/sr/nm', 'W/m**2/sr/μm', 'W/m**3/sr', 'uW*cm**-2*sr**-1*um**-1', 'μW/cm**2/sr/μm'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ronav:Instrument_Temperatures/ronav:CCD_T1_temperature">
      <sch:assert test="@unit = ('K', 'degC')">
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="ronav:Instrument_Temperatures/ronav:OPTICS_T7_temperature">
      <sch:assert test="@unit = ('K', 'degC')">
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
