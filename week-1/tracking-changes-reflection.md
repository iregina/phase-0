How does tracking and adding changes make developers' lives easier?
Tracking and adding changes make it possible for developers to avoid making castrophic mistakes. They can go back to an earlier version if they caught a bug. 

What is a commit?
A commit is snapshot of a version of your file. As you working on a project, you can make multiple commits. 

What are the best practices for commit messages?
Make sure to write in the imperative and have a header following by a more detail description. Sometimes, the more information the better is for future developers to understand exactly what you did.

What does the HEAD^ argument mean?
It means this the last commit made. 

What are the 3 stages of a git change and how do you move a file from one stage to the other?

You move the files from one stage to another by typing in the following commands in the command line: 

git add - adds your modified files to the queue to be commited
git commit - actually commits the files that you added 
git push - pushing the commit to remote repository 

You can specific specific files if you only want to commit a specific file and not the others. 


Write a handy cheatsheet of the commands you need to commit your changes?
git add
git commit -m "TEXT HERE"
git push origin [BRANCH]
[GO TO GITHUB TO PULL REQUEST BRANCH]
git checkout master
git fetch origin master
git merge origin/master
git pull

What is a pull request and how do you create and merge one?
A pull request is to pull the latest version of a file from the remote repository. You can create one by going into github.com and clicking on pull request and then when someone or you approves of the pull request, you can click a button that lets you "merge" these changes! 

Why are pull requests preferred when working with teams?
Pull requests gives other team members the chance to check each other's changes before agreeing to merge it with the master. It's a way to double check each other's work in a way that's clean and efficient. 