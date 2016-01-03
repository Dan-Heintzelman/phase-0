##Paste a link to your [USERNAME].github.io repository.

http://heintzdm.github.io/

##Explain how to create a repository on GitHub and clone the repository to your local computer to a non-technical person.


**Create a repository on GitHub:**

1.  On your computer, open your preferred web browser (Google Chrome, Mozilla Firefox, Safari, etc.)
2.  In the address bar (the line where you usually see http://www.awebsite.com), please clear out any text that is currently there.
3.  Type in www.github.com , and press enter on your keyboard.
4.  This should take you to GitHub’s main page.
5.  If you haven’t created an account already, on the top right of the page (this could change since the release of this document), please click on “sign up” to create a new github account.
6.  Once your account is created, you should be on your main GitHub page.
7.  Look for a + symbol towards the top right. When you click on it, you should get an option to “Create New Repository”
8.  Go ahead and give your repository a name, select the privacy setting (public is usually ok), and then select your license type. I suggest select an MIT license if you are just creating this for practice.
9.  Now click on “create repository”, and voila, you’ve created your first repository. Now, lets show you how to copy that repository to your computer.
10.  Before we move on to the next guide, I want you to find the link to your repository. Click on on the “repositories” tab from your profile page to see a list of all of your repositories.
11.  Click on your repository (the thing you gave a name on step 8) and then find the HTTPS url (web address). Copy this entire address and then paste it somewhere you can retrieve it ( like textedit ).

**Clone repository to your computer:**

1.  If you haven’t already done so, please install GIT on your computer following my other guide here.
2.  For the sake of this tutorial, we will assume you are using a unix terminal on a mac computer.
3.  On a mac, please click on the spotlight search magnifying glass at the top right of your screen.
4.  Search for the application called terminal, double click or hit enter on the application to open it up.
5.  I will be giving you a set up commands to type in the terminal. Do not worry about the characters that are automatically listed on every new line in a terminal ( heintzelman$, or ~>, etc). I will list each command with a > before it, you do not need to type  the >. After every line please hit enter.

```
>mkdir temp
>cd temp
>git clone PASTE THE URL YOU SAVED FROM YOUR REPOSITORIES HERE
```

6.  Now in your terminal you have cloned your repository to its own folder in temp/ , congratulations!

##Describe what open source means.

In order to understand open source, you need only to understand the meaning of both words, open, and source. I'll assume you know what open means. In the context of programming, source is the original code that is written in human readible language.  Once the programmer writes the code, it is often compiled into binary for consumption by computers. At this point, it is not able to be read by humans and therefore there is no way to modify it. Whomever holds the source code has the power to modify the software.

Open source software is software where the source code is open to be shared, modified, and changed. Like the DBC learning module taught us, you typically won't see companies like Adobe releasing their source code, because they do not want you to modify it, therefore it is closed off to the public. As learning programmers, we will be sharing our code all over the web on github for consumption by anyone and everyone, and will benefit from our code being open source.

##What do you think about Open Source? Does it make you nervous or protective? Does it feel like utopia?

If you read the previous paragraph, I think you will understand that my sentiment towards open source is very positive. To me, open source is synonomous with great words such as sharing, free, community, and collaboration. I also think that its important for people to get credit for their work, so its always good to know your open source licensing constraints.

##Assess the importance of using licenses.

Once again, these questions are reading my mind as I write the previous paragraph. Licenses are important for something even as simple as this reflection. Someone could take this reflection and post it on their blog and take credit for my work. Sure, I'd be happy to share this, but I'd still like to have credit for my thoughts. Many programs use snippets of code from multiple different sources. I would be flattered if someone used my code and would be happy to let them, as long as they gave me credit. Know what you want before you decide on a license. For instance, GPL licensed software can only be combined with other software that is also GPL licensed whereas LGPL software can be combined with other software not under GPL.

##What concepts were solidified in the challenge? Did you have any "aha" moments? What did you struggle with?

My real "aha" moment was when after I cloned my website repository and started branching it before even being told to do so in the tutorial. It just felt natural! I feel that the whole Github > git > branch > push > pull > merge > pull/merge has REALLY been solidified.

My biggest struggle during this challenge has been trying to type so fast that I forget to type "git" before my git commands!

##Did you find any resources on your own that helped you better understand a topic? If so, please list it.

I wish I could say that I did, but I did not.  I was originally taught version control with subversion a few years ago and also did some git here and there. Having a friend that explained the concept to me helped, so please use your nerdy friends!