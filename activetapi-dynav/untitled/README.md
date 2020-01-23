# Home

[Next](myPage)

The latest `activeTAPI.COM-DyNav_Setup.msi` installs activeTAPI.COM-DyNav v2015 which is now based on .NET 4.0 \(previous releases used .NET 3.5\). The NAV objects are based on NAV 2015 \(first delivery\) and were developed with Build 37847.

## activeTAPI-Timer-Control-Addin

The activeTAPI-Timer-Control-Addin `activeTAPI.RTC TimerControl.dll` is installed in all path: `C:\Program Files (x86)\Microsoft Dynamics NAV\xx\RoleTailored Client\Add-ins`, where `xx` is the Add-In directory of any NAV version since Microsoft Dynamics NAV 2013.

## Notes

1. The follwing changes were made in Navision: The Version-Code is AT2015.
2. There were some troubles with NAV 2013 \(R2\) and the Excel-Addin. To avoid this, we added a .NET-Check in Codeunit 40 \(thanks to Cajus\).
3. In Report 56780 "Fill Phone Index" there was no Request Page. It was added now.
4. In Page 56784 "TAPI Logs" there is a page action "Dial" \(Anrufen\). The Code was changed. Now always the Remode ID is dialed \(if not empty\).
5. In the Table 56782 TAPI Setup there is new field "Runs in Developer Mode". This field can only be changeld directly in the table \(developers should know how to do this ...\).

   If it is activated, activeTAPI automation object "TAPI Functions SI" is not started in Codeunit 40, LoginStart. So Developers, that have not installed activeTAPI, will not get automation errors anymore. But take care: You should also deactivate "Format Phone Numbers" and "Format Fax Numbers" in the TAPI SetUp. Otherwise you will get automation errors, if you  change any Phone No. AND: Don't forget, to deactivate "Runs in Developer Mode" at the end of your work.

## Previous NAV Versions \(&lt; v2015\)

There are two different versions of activeTAPI:

* `activeTAPI-DyNAV v2011.3`
  * for all NAV versions from 2009 SP2 with Classic Client and RTC \(depreciated\)
* `activeTAPI-DyNAV v2015` 
  * for all NAV version since 2013
  * Note: activeTAPI binaries are the same for all NAV versions, but the NAV Objects differ.

## Known Issues

Issues are tracked [here](https://github.com/SchmidteServices/activeTAPI-DyNav/issues), in the Issue Log.

## Feedback

We hope you enjoy the new version. Don't hesitate to give us hints, proposals, ...

