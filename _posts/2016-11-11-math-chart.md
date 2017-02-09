---
published: true
layout: post
---
we can show math and chart in markdown with java scripts help.

add those two in your head.html using liquid template. 


### Mermaid flowchart

{% highlight html %}

<script src="//cdn.rawgit.com/knsv/mermaid/master/dist/mermaid.min.js"></script>
<link rel="stylesheet" href="//cdn.rawgit.com/knsv/mermaid/master/dist/mermaid.css">
<script>mermaid.initialize({startOnLoad:true});</script>

<script type="text/javascript" src="//cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>


{% endhighlight %}


### mathjax support 


{% raw %}

   <!-- MathJax -->
   {% if site.enable_mathjax %}
   <script type="text/javascript" src="//cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
   </script>
   {% endif %}

{% endraw %}
