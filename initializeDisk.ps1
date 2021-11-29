<#
    .Description
    This script initialize any raw disk found
    Note that the name of the disk is the same for all the disks found
#>
Get-Disk | `
Where partitionstyle -eq 'raw' | `
Initialize-Disk -PartitionStyle GPT -PassThru | `
New-Partition -AssignDriveLetter -UseMaximumSize | `
Format-Volume -FileSystem NTFS -NewFileSystemLabel 'second-disk2' -Confirm:$false
