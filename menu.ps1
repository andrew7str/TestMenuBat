Add-Type -AssemblyName System.Windows.Forms
$Form = New-Object System.Windows.Forms.Form
$Form.Text = "Menu Navigasi"
$Form.Size = New-Object System.Drawing.Size(300,300)
$Form.StartPosition = "CenterScreen"

$Buttons = @(
    "Activate Windows And Office",
    "Activate Windows",
    "Activate Office",
    "Activation Status Check",
    "Uninstall KMS",
    "Uninstall OEM",
    "Settings",
    "Info",
    "Exit"
)

$yPos = 20
foreach ($text in $Buttons) {
    $button = New-Object System.Windows.Forms.Button
    $button.Text = $text
    $button.Size = New-Object System.Drawing.Size(250,30)
    $button.Location = New-Object System.Drawing.Point(20, $yPos)
    $button.Add_Click({
        [System.Windows.Forms.MessageBox]::Show("You clicked: " + $this.Text)
        if ($this.Text -eq "Exit") { $Form.Close() }
    })
    $Form.Controls.Add($button)
    $yPos += 35
}

$Form.ShowDialog()
