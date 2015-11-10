#How does tracking and adding changes make developers' lives easier?
Tracking changes makes developers lives easier by affording thme the opportunity to look back and see when and how they edited their code. This s very helpful when finding bugs or other software issues that need to be fixed. Tracking changes also makes it easier to work on group projects. By tracking changes a company can assign multiple parts of a program to multiple people.
#What is a commit?
A commit is a command that solidifies your changes in the project you are working on. It allows you to save changes on the the project. A commit is like a save in a video game. Except you can always look back on all the commits you have made and go back to them if you need too.
#What are the best practices for commit messages?
To properly use a commit message you should use imperative verb form. You should keep the subject around 50 chars although that is not a hard set rule according to tim pope. You should be very concise, but still give a detailed explanation, of any changes you made to the project. It is also important to warp text to around 72 chars if you can, as many times messages will just be plaeced all on one line. The difference between subject and body should be distinct. You should layout what changes you made in the subject but go in depth a bit for the body. Once again you commit message should not be overly long but still detailed.
#What does the HEAD^ argument mean?
the HEAD argument specifies the commit your in. The HEAD^ argument will bring you back to your last commit. 
#What are the 3 stages of a git change and how do you move a file from one stage to the other?
the three stages of change are
1. working - where you work on your file
2. staged - where you prepare your file for commit
3. commit - where you save your file
you can move a file from the working stage to the commit stage by using 'git add .' 
then use 'git commit -m "commit message"' to save the file and when you are all done you can merge the file back to the master with 'git merge'.
#Write a handy cheatsheet of the commands you need to commit your changes?
git add . = adds changes to a project
git commit -m "message" = saves project along with message. 
git status = lets you know the status of the adds and comits you are working on 
git log = shows all of your commits
git merge = merges you files
git push = puts you files on github
#What is a pull request and how do you create and merge one?
A pull request is used to tell other people about your changes and publsih them online. To make a pull request you need to use 'git push ...' to get your files on github. Then you need to 'compare and pull' your request on github. Then giev your request a title and description simmilar to the commit message. Then 'complete' your request and delete the no longer nessecary branch.
#Why are pull requests preferred when working with teams?
Pull requests are perfered when working with teams because they allow you to see the changes that everyone has made to the program, as well as allowing people to work on things at the same time without stepping on eachothers feet. Pull requests allow teammates to share info and help eachother with problems. They also help students work on the same project no matter how far away they are. Lastly Pull requests allow for changes to be made to the program to be viewed before actually updating the program.  