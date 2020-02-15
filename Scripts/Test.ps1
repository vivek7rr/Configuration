Function Pingmachine
{
    Param($Machines)
    foreach ($Machine in $Machines)
    {
        if(!(Test-Connection -Cn $Machine -BufferSize 16 -Count 1 -ea 0 -quiet))
    {
        $wpf.output.AppendText("$Machine : Offline`n")
    }
        else
        {

        $wpf.output.AppendText("$Machine : Online`n")

        }

    }
}
