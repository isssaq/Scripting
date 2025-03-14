$shell = New-Object -com shell.application
$rec_bin = $shell.Namespace(10)
$file_contant = $rec_bin.Items()

if ( $file_contant.Count -eq 0)
{
    Write-Host "$($rec_bin.Title) is empty. "   
}
else
{
    Write-Host "Content of items: "
    foreach ( $item in $rec_bin.Items() )
    {
        "Name: $($item.Name)"
        "ModifyDate: $($item.ModifyDate)"
        "Type: $($item.Type)"
        Write-Host ""
    }
    
    while ($true)
    {
        $user_valid = Read-Host "Do you want to empty recycle bin? Y/n"
        if ($user_valid -eq 'y')
        {
            Write-Host "Your data will be deleted"
            Clear-RecycleBin -DriveLetter C:\ -Confirm:$false
            break
        }
        elseif ($user_valid -eq 'n')
        {
            Write-Host "Cleaning recycle bin is canceled"
            break  
        }
        Write-Host "You should input Y/n"
    }
}


