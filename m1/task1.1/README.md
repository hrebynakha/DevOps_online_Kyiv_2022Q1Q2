# Result of work with Git
In first task i training to work with git . At the  beginning we need to register an account on  [GitHub](https://github.com) . I have already account and skip it step.
Than i work with a **branches** .
### Creating new branch
For creating and than chage branche to new created i used a simple code
`git checkout -b <branhname>`
Also i added new file to created branches , for example simple image:
[Powershell Image](https://upload.wikimedia.org/wikipedia/commons/a/af/PowerShell_Core_6.0_icon.png)
Then i used command to add and commit this file:
```
git add *
git commit -m ""Create folder images;Add some image"
```

### Merge branches
For example merge  into main branch

`git checkout main`
`git merge <to_branch_with>`

If we have conflict file than we recive error:
```
git merge styles
 Auto-merging m1/task1.1/<conflict_file_name>.html
 CONFLICT (content): Merge conflict in m1/task1.1/<conflict_file_name>.html
 Automatic merge failed; fix conflicts and then commit the result.
```
For resolve this conflict i did the following:
- In file i found the next text :
   - **<<<<<<<< HEAD**
   - ========
   - **>>>>>>> styles**
- Text below of "========" i insert to the file and delete **<<<<<<<< HEAD** and  **>>>>>>> styles**
- Than i add this file to commit folowing command `git add index.html`
- And commit `git commit -m "Resolve merge conflict in index.html file"`

### Git Push
After doing all steps in the task i push local repo to [GitHub](https://github.com) 
`git push origin --all`
### Git Log 
I save the git log file and push to main branch
For saving log text file i foloow the next command on **PowerShell**
`git reflog | Out-File '.\task1.1_GIT.txt' -Force`

> The **Force** key using in this command to create file also if have some error in the commandelt.

### README md file
At the end i creted this file  README.md
