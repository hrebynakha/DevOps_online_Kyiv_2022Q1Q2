# Useful ubuntu command
## Part 1
- Get information about system 

`uname -a`

`lsb_release -a`

![info](images/Screenshot_1.png)

- Get root (sudo) rights

`sudo -s`

![sudo](images/Screenshot_2.png)

- Using `passwd` command

> This cahged the file located in **/etc/shdow** directory

`cat /etc/shadow`

![passwd](images/Screenshot_3.png)
![passwd](images/Screenshot_4.jpg)
![passwd](images/Screenshot_5.jpg)

- Login to server using **ssh** and **Powershell** command

> Command in **Windows Terminal** 

![ssh](images/Screenshot_6.png)

> Loggined via **ssh**

![ssh](images/Screenshot_7.png)

> Get the sudo (root) rights

![ssh](images/Screenshot_8.png)

- Command for chaging user personal information

> Using the **man** for get the manual about command

`man chfn`

`chfn d0s -w "2003"`

- manual about **finger** command

![finger](images/Screenshot_10.png)

`finger d0s`

![finger](images/Screenshot_11.png)

- chaging information about user

`chfn --extrausers`

![chfn ](images/Screenshot_13.png)

- and after set information

`finger d0s`

![finger](images/Screenshot_12.png)


- Using  **less** and **more** command  View the contents of files

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
> Getting tha help about this command
`man ls`
![ls](images/Screenshot_24.png)

```
ls -a
ls -l
ls -al
```
![ls](images/Screenshot_25.png)

- using  I (Input) / O (Output) command **</>**
`tree /home > testfile.txt`
![ls](images/Screenshot_26.png)

- using **copy** command

` cp ./testfile.txt /home/d0s/`

![ls](images/Screenshot_27.png)

- usig **mkdir** command we have created the folder named *folder*
- using **ln** command we created soft and hard link
![ln](images/Screenshot_28.png)

- using **mv** commamnd to rename the files
![mv](images/Screenshot_29.png)

- using **remove** command
`rm -rf folder/`
`rm testfile.txt`

> The different of **hard** and **soft** link is that if we delete the file of lineked by soft link , that this file is not availble. But if we using the hard link the hard link still avaible for us.

![ls](images/Screenshot_30.png)

> Copy file with another name command

`cp .bash_history ./test/labwork2`

 - Find all files that contain the squid and traceroute
sequence.
`locate squid`

`locate traceroute`
![locate](images/Screenshot_31.png)

- using the find command, find all files in the /etc directory containing the host
character sequence.
`sudo find /etc -name "*host*" -type f -print`
![find](images/Screenshot_32.png)
>Also we can using the **grep** command to find duplicate a similar command using in output 

![find & grep](images/Screenshot_33.png)

- using **df** to determine the type of file in the system

` df -Th`

![find & grep](images/Screenshot_34.png) 

> The **tmpfs** and **squashfs** is a *Temproary* file sysytem to only  reading information.
 Follow link to read more information  - [Wiki](https://uk.wikipedia.org/wiki/Tmpfs)  