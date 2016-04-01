# UncommonSense.Nav.TestTableRelations
Microsoft Dynamics NAV application objects to test table relations

## What can I do with these objects?
These Microsoft Dynamics NAV objects provide a way to test primary/foreign key relationships (in the database in which they reside), much like the File|Database|Test feature did in pre-2013R2 versions of NAV. The testing process consists of two phases: in the analysis phase, the data model is examined and its metadata is stored in the tool's tables. In the verification phase, that metadata is used to see if all foreign key values refer to a valid primary key value in the related table. 

## How can I test my primary/foreign key relationships?
- From the Microsoft Dynamics NAV UI: Run page 50010 and use the resp. page actions to analyse and verify the table relations.
- From C/AL code: Run the desired function(s) from codeunits 50010 and 50011.
- From PowerShell: Use the Invoke-NAVCodeunit cmdlet from the Dynamics NAV Administration Shell to call the appropriate methods from codeunit 50010 and 50011. A sample script can be found in the demo folder of this project.

## FAQ
- Which versions of Microsoft Dynamics NAV are your objects compatible with? For now, I only tested with Microsoft Dynamics NAV 2016.
