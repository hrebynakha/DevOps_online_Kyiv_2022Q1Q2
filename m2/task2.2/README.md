# Work with Microsoft Azure Cloud  

### Registration

After registration on Azure we have a simple management console
[![Azure management console](/image/Screenshot_1.png)

Creating an VM

[![Azure creating VM](/image/Screenshot_2.png)

Machine created configuration:

[![Machine configuration](/image/Screenshot_3.png)

Connect to VM via ssh from **PowerSheel**

[![Azure management console](/image/Screenshot_4.png)


After created VM let's try create simple Web Server 

`curl 127.0.0.1`

[![127.0.0.1](/image/Screenshot_5.png)

and on **Public IP Adress** http://13.92.240.241/ from Web Browser

[![Nginx welcome page](/image/Screenshot_6.png)

Next step we connect to Azure from Windows Terminal
[![Windows Terminal Azure Connection](/image/Screenshot_7.png)


Create a snapshot of VM

Find command 
` Get-AzCommand '*snapsh*'`
[![Snapshot command](/image/Screenshot_8.png)
For creating an VM snapshot we need to know id of vm

For examle , a simple command to get all VM in Azure account
`Get-AzVM`
But we do not have an id of VM
Use selecting of all obgects:
`Get-AzVM | Select-Object *`
The attribut of vm id named as **VmID**
[![VM Id](/image/Screenshot_9.png)

Creating a snapshot following command recived by previos step
```
$snapshotName = 'Snapshot1-vm-1'
$vmName = 'vm-1'
$location = 'eastus'
$resourceGroupName = 'GROUP1'
```

We have a **successfully** output
[![Creating snapshot](/image/Screenshot_10.png)


Creating and attching disk to VM from management console
[![Creating disk cloud](/image/Screenshot_11.png)

Result on VM:

[![disk list](/image/Screenshot_12.png)
