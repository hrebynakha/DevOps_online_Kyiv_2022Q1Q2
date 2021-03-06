# Useful ubuntu command
## Part 1
- Get information about system 

`uname -a`

`lsb_release -a`

![info](images/Screenshot_1.png)

- Get root (sudo) rights

`sudo -s`

![sudo](images/Screenshot_2.png)

> If we loggined as root(sudo) than the charter **$** cahge to **#**

- Using `passwd` command

![passwd](images/Screenshot_3.png)

> This cahged the file located in **/etc/shdow** directory

`cat /etc/shadow`

Before change the password

![passwd](images/Screenshot_4.jpg)

After password changed

![passwd](images/Screenshot_5.jpg)

## SSH-Connecting

- Login to server using **ssh** and **Powershell** command

> Command `ssh username@serverip` in **Windows Terminal**  

![ssh](images/Screenshot_6.png)


Loggined via **ssh**
![ssh](images/Screenshot_7.png)

Get the sudo (root) rights
![ssh](images/Screenshot_8.png)

- Command for chaging user personal information

> Using the **man** for get the manual about command

`man chfn`

Manual about **finger** command
![finger](images/Screenshot_10.png)

For expample chage the user telephone number to 2003 `chfn d0s -w "2003"`

Read the information about user `finger d0s`

![finger](images/Screenshot_11.png)

To chaging information about user usinag the next command:
`chfn --extrausers`

![chfn ](images/Screenshot_13.png) 

Make sure that  the information has been set: `finger d0s`

![finger](images/Screenshot_12.png)


- Using  **less** and **more** command  to view the contents of files

`less /bin/gettext.sh`

![less](images/Screenshot_14.png)

`more /etc/bash.bashrc`

![more](images/Screenshot_15.png)


- Determine the last logon time for all users.

`finger -s`

![finger](images/Screenshot_16.png)

- List the contents of the home directory using the ls command, define its files
and directories

`ls -R /home`

![finger](images/Screenshot_17.png)

## Part 2
- The **tree** command. Display all files that contain a character *c*, or files that contain a specific sequence of characters. List subdirectories of the root directory up to and including
the second nesting level

`tree  -d /home`

![tree](images/Screenshot_18.png)

`tree  -a /home`

![tree](images/Screenshot_19.png)

`tree /home`

![tree](images/Screenshot_20.png)

`tree -P 's*' /home`

`tree -P 't*' /home`

![tree](images/Screenshot_21.png)

- **file** command can be used to determine the type of file 
`file /etc/*`
> Out innformation (file name and file type)

![file](images/Screenshot_22.png)

- navigate in the file system using relative and absolute paths

```
root@vm-4:/etc# cd opt/
root@vm-4:/etc/opt# ls
root@vm-4:/etc/opt# cd /home/d0s/
root@vm-4:/home/d0s# ls
folder  test.txt
root@vm-4:/home/d0s#
```
![file](images/Screenshot_23.png)


- using **ls** command 
> Getting the help about this command `man ls`

![ls](images/Screenshot_24.png)

```
ls -a
ls -l
ls -al
```
![ls](images/Screenshot_25.png)

- using  I (Input) / O (Output) command **</>** , working with file and folder(create,delete,move etc.)

The output of command we can write into file using the **>** charter  `tree /home > testfile.txt`

![ls](images/Screenshot_26.png)

Using `cp` command to copy file ` cp ./testfile.txt /home/d0s/`

![ls](images/Screenshot_27.png)

Using `mkdir` command we have created the folder named *folder* .
With `ln` command we created soft and hard link .

![ln](images/Screenshot_28.png)

> In terminal links has other color than all of files and folders

Using `mv` commamnd to rename the files

![mv](images/Screenshot_29.png)

Using **remove** command to delete the files or folders

`rm -rf folder/`
`rm testfile.txt`

> The different of **hard** and **soft** link is that if we delete the file of lineked by soft link , that this file is not availble. But if we using the hard link the hard link still avaible for us.

![ls](images/Screenshot_30.png)

To copy file with another name use the command `cp .bash_history ./test/labwork2`

- Find all files with that contain some words

To find the files with that contain the **squid** and **traceroute**
sequence use the command  `locate squid` and  `locate traceroute`

![locate](images/Screenshot_31.png)

Using the find command, find all files in the /etc directory containing the host
character sequence `sudo find /etc -name "*host*" -type f -print` .

![find](images/Screenshot_32.png)
> Also we can using the **grep** command to find duplicate a similar command using in output 

![find & grep](images/Screenshot_33.png)

- File system

Using **df** to determine the type of file in the system

` df -Th`

![find & grep](images/Screenshot_34.png) 

> The **tmpfs** and **squashfs** is a *Temproary* file sysytem to only  reading information.
 Follow link to read more information  - [Wiki](https://uk.wikipedia.org/wiki/Tmpfs)  


 To find the las modify files using the command  `find /etc -mindepth 1 -maxdepth 1 -ctime -3`
 Where the ctime is a cretion time (- 3 days ago)

![find items last accessed](images/Screenshot_35.png) 