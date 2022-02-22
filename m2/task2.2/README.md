# Work with Microsoft Azure Cloud  

### Registration

After registration on Azure we have a simple management console
![Azure management console](images/Screenshot_1.png)

Creating an VM

![Azure creating VM](images/Screenshot_2.png)

Machine created configuration:

![Machine configuration](images/Screenshot_3.png)

Connect to VM via ssh from **PowerSheel**

![Azure management console](images/Screenshot_4.png)


After created VM let's try create simple Web Server 

`curl 127.0.0.1`

![127.0.0.1](images/Screenshot_5.png)

and on **Public IP Adress** http://13.92.240.241/ from Web Browser

![Nginx welcome page](images/Screenshot_6.png)

Next step we connect to Azure from Windows Terminal
![Windows Terminal Azure Connection](images/Screenshot_7.png)


Create a snapshot of VM

Find command 
` Get-AzCommand '*snapsh*'`
![Snapshot command](images/Screenshot_8.png)
For creating an VM snapshot we need to know id of vm

For examle , a simple command to get all VM in Azure account
`Get-AzVM`
But we do not have an id of VM
Use selecting of all obgects:
`Get-AzVM | Select-Object *`
The attribut of vm id named as **VmID**
![VM Id](images/Screenshot_9.png)

Creating a snapshot following command recived by previos step
```
$snapshotName = 'Snapshot1-vm-1'
$vmName = 'vm-1'
$location = 'eastus'
$resourceGroupName = 'GROUP1'
```

We have a **successfully** output
![Creating snapshot](images/Screenshot_10.png)


Creating and attching disk to VM from management console
![Creating disk cloud](images/Screenshot_11.png)

Result on VM:

![disk list](images/Screenshot_12.png)

![disk list](images/Screenshot_13.png)


![disk list](images/Screenshot_14.png)


Get list of exisiting VM:
![disk list](images/Screenshot_15.png)
Get information about disk :
`Get-AzDisk | Select-Object Name,DiskState,Location,DiskSizeGB,TimeCreated`

![disk list](images/Screenshot_16.png)

Reatacching disk to vm-2

![disk list](images/Screenshot_17.png)

Result is (mashine name keep old)

![disk list](images/Screenshot_18.png)
