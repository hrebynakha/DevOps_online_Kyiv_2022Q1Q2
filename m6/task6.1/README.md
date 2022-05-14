# A. Create a script that uses the following keys:

Script located with name **demo.sh**

## 1 
When starting without parameters, it will display a list of possible keys and their description.
For this we using the *display* function and hash table created in at the beginning of the script

![none](images/Screenshot_1.png)

## 2

The **--all** key displays the IP addresses and symbolic names of all hosts in the current subnet
Using *__all* funciton and bash command **cat** and **ip a**  

![--all](images/Screenshot_2.png)

## 3 

The **--target** key displays a list of open system TCP ports
Using *__all* funciton and bash command **cat** and **grep**  

![--target ](images/Screenshot_3.png)


# B. Using Apache log example create a script to answer the following questions:

Script located with name **apl.sh**


## 1. From which ip were the most requests?

`bash alp.sh --most IP`

## 2. What is the most requested page?

`bash alp.sh --most Page`

## 3. How many requests were there from each ip?

`bash alp.sh --count IP`

## 4. What non-existent pages were clients referred to?

`bash alp.sh --get 404`

## 5. What time did site get the most requests?

`bash alp.sh --most time`

## 6. What search bots have accessed the site? (UA + IP)

`bash alp.sh --get bot`

Test result of some commads:

![--target ](images/Screenshot_4.png)