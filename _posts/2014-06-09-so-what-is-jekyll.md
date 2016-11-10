---
layout:     post
title:      So, What is Jekyll?
date:       2014-06-09 12:32:18
summary:    Transform your plain text into static websites and blogs. Simple, static, and blog-aware.
categories: jekyll pixyll
---

Jekyll is a tool for transforming your plain text into static websites and
blogs. It is simple, static, and blog-aware. Jekyll uses the
[Liquid](http://docs.shopify.com/themes/liquid-basics) templating
language and has builtin [Markdown](http://daringfireball.net/projects/markdown/)
and [Textile](http://en.wikipedia.org/wiki/Textile_(markup_language)) support.

It also ties in nicely to [Github Pages](https://pages.github.com/).

Learn more about Jekyll on their [website](http://jekyllrb.com/).



How to use git to update master from defensive


Checkout via command line

If you cannot merge a pull request automatically here, you have the option of checking it out via command line to resolve conflicts and perform a manual merge.

Step 1: From your project repository, bring in the changes and test.

git fetch origin
git checkout -b dev origin/dev
git merge master

Step 2: Merge the changes and update on GitHub.

git checkout master
git merge --no-ff dev
git push origin master
