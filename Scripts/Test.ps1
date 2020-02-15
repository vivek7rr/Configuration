Function Pingmachine
            {
                $wpf.outbox = $Null
                $wpf.Outbox.AppendText("Please wait...`n`n")
                Param($Machines)
                foreach ($Machine in $Machines)              
                {
                $wpf.Outbox.Focus()


                    if(!(Test-Connection -Cn $Machine -BufferSize 16 -Count 1 -ea 0 -quiet))
                    {

                        $wpf.Outbox.AppendText("$Machine : Offline`r`n")
   
                    }
                    
                    else
                    {

                    $wpf.Outbox.AppendText("$Machine : Online`r`n")

                    }
                [void] [System.Windows.Forms.Application]::DoEvents()
                }
                $wpf.Outbox.AppendText("Ping Action Completed")
                
            }
