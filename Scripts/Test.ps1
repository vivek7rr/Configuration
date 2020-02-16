Function clear-outbox

{$wpf.Outbox.Text = $Null}

Function IPMAC
{
    Param($Machines)
    $wpf.outbox.text = $Null
    $CNT = $Machines.Count
    $wpf.Outbox.AppendText("--------------Please Wait-----------`n`n")
    $details = @()
    foreach ($Machine in $Machines)
    {
     $i++
     [int]$pct1 = ($i/$CNT)*100
     $wpf.ActProgress.Value = $pct1
    if (!(test-Connection -Cn $Machine -quiet))
    {
         $wpf.Outbox.AppendText("$Machine : Offline`r`n")
         $Result = [ordered]@{
         MACHINE_NAME     = "$Machine"
         IP_Address      = "OFFLINE"
         MAC_Address = "OFFLINE"                       
         }
         $Details += New-Object PSObject -Property $Result
         $wpf.Outbox.ScrollToEnd()
    }
    else
    {
        $hostIp = [System.Net.Dns]::GetHostByName($Machine).AddressList[0].IpAddressToString
        $wmi = gwmi -Class Win32_NetworkAdapterConfiguration -ComputerName $Machine
        $mac = ($wmi | where { $_.IpAddress -eq $hostIp }).MACAddress
        $Result = [ordered]@{
        MACHINE_NAME     = "$Machine"
        IP_Address      = "$hostIp"
        MAC_Address = "$mac"     
                         }
        $wpf.Outbox.AppendText("$Machine : Online : IP-Address :  $hostIp : MAC-Address : $mac`n")
        $wpf.Outbox.ScrollToEnd() 
        $Details += New-Object PSObject -Property $Result
    }
    [void] [System.Windows.Forms.Application]::DoEvents()

}
    if ($FolderBrowser.SelectedPath -ne '')
    {
        $name = Get-Date | select *
        $name1 = $name | select -ExpandProperty Millisecond
        $Folderpath = $FolderBrowser | select -ExpandProperty SelectedPath
        $Nameofipmac = "$Folderpath\" + "IPMAC_" + "$name1" + ".csv"
        $Details | export-csv -Path $Nameofipmac -NoTypeInformation
        $wpf.Outbox.AppendText("`nReports saved to the below path`n`n$Nameofipmac")
    }
}

Function Pingmachine
            {
                
                Param($Machines)
                $details = @()
                $CNT = $Machines.Count
                $wpf.outbox.text = $Null
                $wpf.Outbox.AppendText("--------------Please Wait-----------`n`n")
                $CNTEach = 0
                foreach ($Machine in $Machines)              
                {

                     $i++
                     [int]$pct1 = ($i/$CNT)*100
                     $wpf.ActProgress.Value = $pct1
                    if(!(Test-Connection -Cn $Machine -quiet))
                    {

                        $Result = [ordered]@{
                        MACHINE_NAME     = "$Machine"
                        STATUS           = "Offline"  
                         }
                        $Details += New-Object PSObject -Property $Result
                        $wpf.Outbox.AppendText("$Machine : Offline`r`n")
                        $wpf.Outbox.ScrollToEnd()
                    }
                    
                    else
                    {
                     $Result = [ordered]@{
                     MACHINE_NAME     = "$Machine"
                     STATUS           = "OFFLINE"                     
                     }
                        $Details += New-Object PSObject -Property $Result
                        $wpf.Outbox.AppendText("$Machine : Online`r`n")
                        $wpf.Outbox.ScrollToEnd()
                    }
                [void] [System.Windows.Forms.Application]::DoEvents()
                }
                $wpf.Outbox.AppendText("`nDone !!!")
                if ($FolderBrowser.SelectedPath -ne '')
                    {
                        $name = Get-Date | select *
                        $name1 = $name | select -ExpandProperty Millisecond
                        $Folderpath = $FolderBrowser | select -ExpandProperty SelectedPath
                        $Nameofipmac = "$Folderpath\" + "PingResult_" + "$name1" + ".csv"
                        $Details | export-csv -Path $Nameofipmac -NoTypeInformation
                        $wpf.Outbox.AppendText("`nReports saved to the below path`n`n$Nameofipmac")
                    }
}

function MachinePolicy
{
    Param($Machines)
    $wpf.outbox.text = $Null
    $CNT = $Machines.Count
    $wpf.Outbox.AppendText("--------------Please Wait-----------`n`n")
    $details = @()
    foreach ($Machine in $Machines)
    {
     $i++
     [int]$pct1 = ($i/$CNT)*100
     $wpf.ActProgress.Value = $pct1
    if (!(test-Connection -Cn $Machine -quiet))
    {
         $wpf.Outbox.AppendText("$Machine : Offline`r`n")
         $Result = [ordered]@{
         MACHINE_NAME     = "$Machine"
         Machine_Policy      = "OFFLINE"                      
         }
         $Details += New-Object PSObject -Property $Result
         $wpf.Outbox.ScrollToEnd()
    }
    else
    {
        $Error.Clear()
        $WMIPath = "\\" + $Machine + "\root\ccm:SMS_Client"
        $SMSwmi = [wmiclass] $WMIPath
        [Void]$SMSwmi.TriggerSchedule($strQuery)

            if($Error[0])
            {
                $Result = [ordered]@{
                MACHINE_NAME     = "$Machine"
                Machine_Policy      = "Failed to run Machine Policy"}
                $Details += New-Object PSObject -Property $Result
                $wpf.Outbox.AppendText("$Machine : Online : Machine_Policy :  Failed`n")
                $wpf.Outbox.ScrollToEnd()
            }
            else
            {
                $Result = [ordered]@{
                MACHINE_NAME     = "$Machine"
                Machine_Policy      = "Successfull"}
                $Details += New-Object PSObject -Property $Result
                $wpf.Outbox.AppendText("$Machine : Online : Machine_Policy :  Successfull`n")
                $wpf.Outbox.ScrollToEnd()
            }

    }
    [void] [System.Windows.Forms.Application]::DoEvents()

}
    if ($FolderBrowser.SelectedPath -ne '')
    {
        $name = Get-Date | select *
        $name1 = $name | select -ExpandProperty Millisecond
        $Folderpath = $FolderBrowser | select -ExpandProperty SelectedPath
        $Nameofipmac = "$Folderpath\" + "MachinePolicy_" + "$name1" + ".csv"
        $Details | export-csv -Path $Nameofipmac -NoTypeInformation
        $wpf.Outbox.AppendText("`nReports saved to the below path`n`n$Nameofipmac")
    }
}
