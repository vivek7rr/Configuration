function testfuntion
{
 Param($machine)
 Get-Service -ComputerName $machine

}
Function Pingmachine
{
    Param($Machines)
    foreach ($Machine in $Machines)
    {
        if(!(Test-Connection -Cn $Machine -BufferSize 16 -Count 1 -ea 0 -quiet))
    {
        $wpf.output.Text = "$Machine : Offline"
    }
        else
        {

        $wpf.output.Text = "$Machine : Online"

        }

    }
}
