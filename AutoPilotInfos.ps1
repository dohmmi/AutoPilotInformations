﻿#This script gets the necessary data for the import of a Windows AutoPilot Device and generates an importable .csv file to the path C:\AutoPilot.csv
#Author: Daniel Siegenthaler
$outFile = "Device Serial Number,Windows Product ID,Hardware Hash"
$serialNumber = gwmi win32_bios | Select-Object SerialNumber

write-host $wmi.DeviceHardwareData

$outFile += "`r`n"
$outFile += $serialNumber.SerialNumber+"," +$productID+","+ $wmi.DeviceHardwareData

$outFile > C:\AutoPilot.csv

