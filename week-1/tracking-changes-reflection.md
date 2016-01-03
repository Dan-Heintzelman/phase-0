###How does tracking and adding changes make developers' lives easier?

Developers need to be organized. In fact, everyone needs organization, however keeping track of things in my house is much easier than keeping track of thousands of lines of code. Imagine if I had 20 children living in a mansion and I had to track all of their things, how would I do it?! This is akin to development. 20 Developers working on one project and thousands of lines of code.  If I am the project manager, I can easily see which lines of code were added by which developer, and when. Once I'm confident they've added good code, I can go ahead and merge it to the master, one piece at a time. GitHub makes it especially easy to see where the changes have been made and by whom.

##What is a commit?

A commit is like a checkpoint. The DBC learning module describes it well. It is like a video game where you decided that you've made great progress so you decide to save the game right before you fight the main boss. This way, if you die facing the boss, you don't lose all of your progress. A commit is a really neat thing! I can make a commit and the only change might be one character within one document. On the polar oppositite, I might might add 10 new files with 100 lines of code and that could be one commit.  The idea is to commit early and commit often so that you can have many checkpoints to jump back to.

##What are the best practices for commit messages?

There a few crucial things about a commit. Make sure when you are commiting changes to commit them on a feaure branch rather than the master. The master should always be in clean working shape. Once we verify the changes work well on the feature branch, then we can push the changes and merge. Also, please, please leave comments on all of your commits, and make sure to leave them in the present tense. Finally, as I said before, commit early and often. When you are in the early "wonky" phases of developing a program, you might realize you need to jump back quite often.

##What does the HEAD^ argument mean?

The HEAD is the most recent change(commit), hence being at the "head" of the commit log/list. If you decide you want to reset the last commit, you can remove it with a "git reset --soft HEAD^"

##What are the 3 stages of a git change and how do you move a file from one stage to the other?

**Stage 1**

First there needs to be a change (new folder/document/sentence/etc). If the file is untracked you need to add it with the command git add "filename". This will stage the file.

**Stage 2**

Once you have the file tracked, any changes you make will be recognized. If you add a sentence in your file and save them and then run "git status", you will see a file has been modified. Now that you have made a change, go ahead an git commit -m "message here"

**Stage 3**

Now that you have made a number of changes and commited all of the changes you'd like, you can go ahead and merge the change to the master. If you are using github, you want to push your changes from your feature branchusing git push origin feature-branch-name here.

In summary, add, commit, push. But if done locally, you might be running a diff check and then merging to master instead.

##Write a handy cheatsheet of the commands you need to commit your changes?
```
1. Add the file to be tracked:
git add ...

2. Commit it:
git commit -m ""
or
git commit -v

3. Check Status:
git status

4. Show a list of your commits:
git log
```

##What is a pull request and how do you create and merge one?

1. A pull request is initiated when you push changes from, say a feature branch, to your remote destination (github).
For example:
git push origin this-feature-branch

2. Now you can navigate to your github page where the push was sent to and you should see a "compare & pull request" button. Click on this to see the pushed data.

3. On the next screen you can title the change and give it a description. That's it, now you can take this change(that was pushed) and create a pull request.

4. Now that you've created the pull request, everyone else who is working on the project can look and see what changes you've made and within the pull request they can very easily look at the changes by clicking on the "Files Changed" button.

5. Once they are comfortable that the request is good, they can click on "merge pull request" to merge the submitted commits with the master.

##Why are pull requests preferred when working with teams?

As stated above, the pull requests are necessary as buffer between a new features and the master branch. If I start merging my own pull requests to the main branch without checking in with the rest of my team, I could inadvertently interfere with code from another feature branch from another teammate.


## Final Reflection

One thing I'd like to note. In the Release 5 instructions, it did not tell us to branch off the master before creating this document. I did, however do this before creating this document because this is the workflow that was taught.
