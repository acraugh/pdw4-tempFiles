# pdw4-tempFiles
Work-in-progress examples for 4th Planetary Data Workshop (June 2019)

These files are posted temporarily (they will be taken down by mid-July) to illustrate the process described in my PDW4 talk "Designing a PDS4 Data Dictionary".  They are part of a project I'm currently working on: migrating Rosetta PDS3 mission data to PDS4.  The sample files are related to the navigational camera (NAVCAM) data sets, which are only moderately complicated.

Here's what included:

### IngestNAVCAM.xml

This is my very rough draft Ingest_LDD.xml file, which is input to *LDDTool*.  The command line used to run *LDDTool* was 

    % lddtool -lpMs IngestNAVCAM.xml

The 9.0.0 version of *LDDTool* was used to generate the schema files. 

### PDS4_RONAV_1B00.sch

The Schematron file produced by running the *IngestNAVCAM.xml* file through *LDDTool*.

### PDS4_RONAV_1B00.xsd

The XML Schema Definition Language (XSD) file produced by running the *IngestNAVCAM.xml* file through *LDDTool*.

### example.lbl

An example PDS3 label for a NAVCAM data product.  I used this in conjunction with the instrument interface document to determine the attributes and meanings needed for the PDS4 version.

### kwWorksheet.xlsx

Excel spreadsheet in which I collected my attribute information.  There are separate sheets for each step in the process, starting with the candidate attribute list (identified by PDS3 keyword names) and ending with my class organization and attribute data. This is what I used to code the *IngestNAVCAM.xml* file.

### navcamTest.lbl

My test label, which will currently show as validate if validated against the schemas it references. Note the clearly dummy values that are inserted in places like ```<logical_identifier>``` for examples of valid but clearly fake metadata.
