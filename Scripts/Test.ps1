<Window x:Name="MainWindows"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:WpfApp1"

        Title="MainWindow" Height="620" Width="975.5" ResizeMode="NoResize">
    <Grid x:Name="Grid" Margin="0,0,-3,0">
        <Label x:Name="Label" Content="SCCM Powershell Tool - Microland" HorizontalAlignment="Left" Margin="243,3.833,0,0" VerticalAlignment="Top" Width="415.16" Height="41.127" FontSize="24" FontWeight="Bold" Background="White" Foreground="#FFFF8000"/>
        <TextBox x:Name="CollIDbox" HorizontalAlignment="Left" Height="21.667" Margin="119.5,316.5,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="119.25"/>
        <Label x:Name="CollIDlbl" Content="Collection ID&#x9;" HorizontalAlignment="Left" Margin="4.667,318.002,0,0" VerticalAlignment="Top" Width="89.326" Height="24.793"/>
        <Label x:Name="SCCMServerLbl_Copy" Content="SCCM Site Code" HorizontalAlignment="Left" Margin="4.667,135.834,0,0" VerticalAlignment="Top" Width="97.326" Height="24.793"/>
        <TextBox x:Name="SiteNameBox" HorizontalAlignment="Left" Height="21" Margin="120.5,137.833,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="120"/>
        <RadioButton x:Name="Addcoll" Content="Add to Collection" HorizontalAlignment="Left" Margin="255,320.333,0,0" VerticalAlignment="Top" Width="124.706" Height="22.96"/>
        <RadioButton x:Name="Delcollection" Content="Delete from Collection" HorizontalAlignment="Left" Margin="395.333,318.833,0,0" VerticalAlignment="Top" Width="142.039" Height="22.96"/>
        <Label x:Name="Inputfromtext" Content="Input Item (.txt)" HorizontalAlignment="Left" Margin="6.167,184.834,0,0" VerticalAlignment="Top" Width="97.326" Height="24.793"/>
        <Button x:Name="browse" Content="Browse" HorizontalAlignment="Left" Margin="121.5,187.665,0,0" VerticalAlignment="Top" Width="119"/>
        <Label x:Name="ServerNameLbl" Content="SCCM Server" HorizontalAlignment="Left" Margin="4.667,103.334,0,0" VerticalAlignment="Top" Width="97.326" Height="24.793"/>
        <TextBox x:Name="ServerNameBox" HorizontalAlignment="Left" Height="21" Margin="120.5,104.833,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="120"/>
        <TextBox x:Name="DeployBox" HorizontalAlignment="Left" Height="21.667" Margin="118.167,285.167,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="120"/>
        <Label x:Name="DeployLbl" Content="Deployment ID&#x9;" HorizontalAlignment="Left" Margin="4.334,282.169,0,0" VerticalAlignment="Top" Width="89.326" Height="24.793"/>
        <RadioButton x:Name="Rerundeploy" Content="Re-run Deployment" HorizontalAlignment="Left" Margin="253.666,285.833,0,0" VerticalAlignment="Top" Width="124.706" Height="22.96"/>
        <RadioButton x:Name="Deployinfo" Content="Get-Deployment Information" HorizontalAlignment="Left" Margin="395.666,284.333,0,0" VerticalAlignment="Top" Width="175.372" Height="22.96"/>
        <Label x:Name="SingleMachine" Content="Single Machine" HorizontalAlignment="Left" Margin="8.167,220.834,0,0" VerticalAlignment="Top" Width="97.326" Height="24.793"/>
        <TextBox x:Name="Singlemachinebox" HorizontalAlignment="Left" Height="21" Margin="120.5,224.833,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="120"/>
        <Button x:Name="updateserver" Content="Update Input" HorizontalAlignment="Left" Margin="261,104.5,0,0" VerticalAlignment="Top" Width="102" Height="52.96" BorderBrush="White" Background="#FFEEEEEE"/>
        <Button x:Name="updateinout" Content="Update Input" HorizontalAlignment="Left" Margin="261,186.5,0,0" VerticalAlignment="Top" Width="102" Height="58.96" BorderBrush="White" Background="#FFEEEEEE"/>
        <Button x:Name="start" Content="Process" HorizontalAlignment="Left" Margin="12.984,366,0,0" VerticalAlignment="Top" Width="91" Height="32.96" FontSize="20" FontWeight="Bold" BorderBrush="White" Background="#FF0EE68E"/>
        <RadioButton x:Name="Ping" Content="Ping Machines" HorizontalAlignment="Left" Margin="615.666,190.833,0,0" VerticalAlignment="Top" Width="124.706" Height="22.96"/>
        <RadioButton x:Name="policy" Content="Run SCCM Policies" HorizontalAlignment="Left" Margin="615.499,218.833,0,0" VerticalAlignment="Top" Width="124.706" Height="22.96"/>
        <RadioButton x:Name="getcolresource" Content="Get collection resources" HorizontalAlignment="Left" Margin="547.333,318.833,0,0" VerticalAlignment="Top" Width="142.039" Height="22.96"/>
        <RadioButton x:Name="Ping_Copy1" Content="Get machine IP and MAC address" HorizontalAlignment="Left" Margin="407.166,189.333,0,0" VerticalAlignment="Top" Width="196.706" Height="22.96"/>
        <RadioButton x:Name="kill" Content="Kill Process on Remote Machine" HorizontalAlignment="Left" Margin="407.333,220.833,0,0" VerticalAlignment="Top" Width="196.706" Height="25.96"/>
        <Button x:Name="Report" Content="Reports" HorizontalAlignment="Left" Margin="122.491,366.33,0,0" VerticalAlignment="Top" Width="105" Height="33.96" FontSize="20" FontWeight="Bold" BorderBrush="White" Background="#FF12D4FF"/>
        <TextBox x:Name="Line" HorizontalAlignment="Left" Height="2.875" Margin="0.167,51.496,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="967.333" Background="#FF0074FF"/>
        <Button x:Name="Help" Content="TOOL HELP" HorizontalAlignment="Left" Margin="251.667,366.5,0,0" VerticalAlignment="Top" Width="121" Height="32.96" BorderBrush="White" Background="#FFFF9700" FontWeight="Bold" FontSize="14"/>
        <Button x:Name="vivekrr" Content="www.vivekrr.com" HorizontalAlignment="Left" Margin="836.75,31,0,0" VerticalAlignment="Top" Width="122.5" BorderBrush="White" Background="White" Foreground="#FF002EFF" FontWeight="Bold"/>
        <RichTextBox x:Name="output" HorizontalAlignment="Left" Height="170" Margin="15,408,0,0" VerticalAlignment="Top" Width="943">
            <FlowDocument/>
        </RichTextBox>
    </Grid>
</Window>
