##1.1 Think About Time

After researching the articles and videos provided on time management, I’ve learned quite a few different techniques and ideas.  To achieve productivity and manage time efficiently I believe one can combine both techniques and frameworks. I will go over one technique, and one framework and then incorporate the two into my current situation.

**Technique - Meditation:**

It is fairly simple to understand what it is, but to understand how it works and how it can benefit you can be quite confusing. It is important to understand that there are many different types of meditation. Focussed meditation and open monitoring are two different styles I learned about. Both are proven to have many different benefits psychologically and physiologically. However, the most critical area that I believe meditation can help me and others is by learning how to mitigate anxiety, and thus be able to focus better.

I will go over how meditation can help one common condition, anxiety. By practicing meditation, we can desensitize the connection between our fear center and our ME Center ( the area that is most representative of our conscious self). In doing so, we drive sensitivity or enhance the connection between our logical brain and our ME Center. For example, when you find yourself in a situation where you are highly stimulated (say in a hurry, suddenly forced to make a rash decision, etc), you will better be able to relax and respond to a tense situation with logic and learn to remain calm.

**Framework - Pomodoro Technique / Start Small**

The Pomodoro method, even though described as a “technique”, in my opinion is more of a framework that utilizes a sort of “Timeboxing” combined with guiding rules. In a way, humans probably are all time boxing on their own without even knowing it. When I go to lunch, I give myself exactly 1 hour to complete eating and I make sure to finish it in that period of time. When a Doctor sees a patient, they generally have a fixed amount of time to diagnose the problem.

The Pomodoro technique allows you to take your projects and break them up into 25 minute segments. I think this is an excellent way to portion out periods of time in your day and dedicate them to work. I know that I tend to burn out after a certain period of time. If I know this to be true, I can make sure I separate time between each 25 minute segment for breaks and/or meditation. This also goes in line with the “Make it big by starting small philopsophy”. Small chunks lead to a larger, constantly evolving goal.

**My Current Situation:**

Finally, I will say that I do not use either of the above methods in my day to day activities. I always see every work day as one large task that I have to power through. When I’m done for the day with work, I move to exercise and/or fun. I am able to make this work, but I think that my level of sanity is much lower than it could be. The funny thing is, I’ve already started to implement short 2-3 minute meditation sessions in my work here at Dev Bootcamp. It’s been helping to really center myself and not be so anxious. For Phase 0, I intend to SLOWLY integrate time boxing and meditation.  One thing that I also learned is that incorporating new habits into one’s daily lifestyle requires practice, and I will surely not be able to implement a long term change without this. To be specific, I intend to start thinking of challenges as 25 minute segments, and then thinking how many segments I need to complete the challenge. I will scale up to trying to lay out my full week in advance if I think it works for me! Meditation is a no brainer, I intend to scale up how often I meditate every week by a few minutes.

##1.2 The Command Line

**What is a shell? What is “bash?"**

A shell is how we, as humans, access the operating system.  A shell can be either in the form of a command line interact (CLI), or a graphical user interface (GUI). Bash, is a type of shell that created for the UNIX operating system. However, it has been ported to work in many different environments. Bash is powerful because it can accept commands one at a time, or it can read commands from a file. Simple programs can be written to be run by themselves in bash. This is often known as “bash scripting” or “scripting”.

**What was the most challenging for you in going through this material?**

I felt the most confusing part of the material in this lesson was understanding how to pipe and redirect data in the command line interface using ( < , > , | ). Like a run on sentence can be hard to process, flowing multiple commands into one long line can get confusing.

**Were you able to successfully use all of the commands?**

I was able to use all of the commands supplied in the walkthrough, although I did not mess too much with chmod or chown. I know that resetting file permissions will likely be something that I will need to do and will likely try to practice this more.

**In your opinion, what are the most important commands and arguments to know?**

Before starting bootcamp, I was able to navigate the UNIX environment using CD, LS and ../ just fine. If you cannot navigate the environment then all else is pretty useless. A full command + argument which I find to be extremely useful is:
cd ~
Simply, this changes directory to the users home folder, which is represented by the tilde(~).
Once you can navigate, then I think copying files is quite important. cp originalfile.txt  ~/Desktop/ would easily take the original file and make a copy of it on the desktop (in unix/osx). If you want to quickly VIEW and/or modify a document I like to use the VIM or VI program. Simply (vim originalfile.txt) and you will open up the file.

**Can you remember what each of the following does of the top of your head? Write what each does.**


**-pwd-** Print working directory prints out the full path of the directory you are currently in.

**-ls -** This lists all of the files and folders that are in your current working directory.

**-mv -** This allows you to MOVE items from one place to another, you can also rename a file in the process of moving it. Etc. > move dan.txt robert.txt
This would take the file dan.txt and move it to the same directory and give it a new name of robert.txt

**-cd -** Quite simply, this allows you to Change Directories.

**-../** - This pushes you up one level in the directory stack.

**-touch** - This creates a new blank file.

**-mkdir** - This is how you create a new directory. Literally, “Make Directory.”

**-less** -  A program which allows you to read files in the terminal window and provides backwards and forwards movement, unlike CAT, which prints everything out.

**-rmdir** - Literally, “Remove Directory” allow you to delete folders.

**-rm** - This is the remove command. You can quickly use it to delete all files and folders within a directory by supplying the -r and -f flags as such. (rm -rf )

**-help** - This is the windows version of “man”. You can type help + argument where argument is the program or command you would like documentation on.

##1.4 Forking and Cloning