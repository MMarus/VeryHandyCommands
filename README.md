# VeryHandyCommands
All commands that could be once very handy.

# Git & GitHub

## Sync a fork
```
git fetch upstream
git merge upstream/master
git push

#Easier method
git pull upstream master
git push | git push origin

#sync branch with detached head - already has some commits 
git pull --rebase upstream master
#if there are no conflicts
git push -f
```
https://help.github.com/articles/syncing-a-fork/  
https://github.com/hal/console/blob/develop/CONTRIBUTING.md

## Squash git commits
```bash
$ git rebase -i HEAD~$NumberOfCommitsToSquash
$ git push --force
```
https://stackoverflow.com/questions/14534397/squash-all-my-commits-into-one-for-github-pull-request/16642628#16642628    
https://stackoverflow.com/questions/5189560/squash-my-last-x-commits-together-using-git  

## Undu git rebase
```
git reflog #find the head commit you want to go back to e.q. 5
git reset --hard HEAD@{5}
```
https://stackoverflow.com/questions/134882/undoing-a-git-rebase

# Misc

## HAL - debugging - when nothing shows up:  
Make sure you've added http://localhost:8888 as allowed origin and reload the server. Use one of of the following CLI commands to add allowed origins:

### Standalone:

```/core-service=management/management-interface=http-interface:list-add(name=allowed-origins,value=http://localhost:8888```

### Domain:

```/host=master/core-service=management/management-interface=http-interface:list-add(name=allowed-origins,value=http://localhost:8888```

How to load glove vectors through the gensim word2vec  
https://stackoverflow.com/questions/37793118/load-pretrained-glove-vectors-in-python


Merge / convert multiple PDF files into one PDF  
https://stackoverflow.com/questions/2507766/merge-convert-multiple-pdf-files-into-one-pdf
```
$ pdfunite in-1.pdf in-2.pdf in-n.pdf out.pdf
```
C#  
http://stackoverflow.com/questions/5101986/iterate-over-pixels-of-an-image-with-emgu-cv  
Nice explanation and how to iterate very fast.

#### Drools tools how to create a list
https://stackoverflow.com/questions/20537506/drools-how-to-iterate-list-and-add-to-another-list

#### Java append strings
https://stackoverflow.com/questions/12899953/in-java-how-to-append-a-string-more-efficiently

Convert list of strings to string  
https://stackoverflow.com/questions/599161/best-way-to-convert-an-arraylist-to-a-string

Docker initialize mysql  
https://stackoverflow.com/questions/29145370/docker-initialize-mysql-database-with-schema

## Fedora open spotify prerequisities:
https://linuxacademy.zendesk.com/hc/en-us/articles/218203783-How-do-I-get-HTML5-playback-in-Firefox-on-Linux-

## Archlinux unable to find lvm root partitions
https://superuser.com/questions/769047/unable-to-find-root-device-on-a-fresh-archlinux-install

##  Idea distraction free mode remove the left margin
https://stackoverflow.com/questions/33151591/intellij-14-1-distraction-free-mode-has-a-huge-gap-on-the-left-side-of-the-scree/33159047

# Count the normo pages
```
# Merge all project files
$ cat *.tex | tee output.tex
$ echo "$(detex output.tex | wc -m) / 1800" | bc -l
```
