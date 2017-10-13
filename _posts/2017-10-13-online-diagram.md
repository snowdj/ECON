---
published: true
layout: post
title: How to show diagram in web html file
category: web
tags:
  - mermaid
---

## A New Post

<script src="https://cdn.rawgit.com/knsv/mermaid/0.5.1/dist/mermaid.min.js"></script>
<script>mermaid.initialize({startOnLoad:true});</script>
    
    
<div class="mermaid">
sequenceDiagram
  
    Alice->>John: Hello John, how are you?
    John-->>Alice: Great!
</div>


<div class="mermaid">
graph LR;
  
  
      id0[Environmental <br> Economics]-->id1[Chap7: Benefit]
      id0[Environmental <br> Economics]-->id2[Chap8: Cost]
      id0[Environmental <br> Economics]-->id3[chap9: Criteria : <br>Evaluating Environmental Policies]
      id0[Environmental <br> Economics]-->id4[Chap10: Decentralized Policies:]
      id0[Environmental <br> Economics]-->id5[Chap11: Command-and-Control: <br> Standards]
      id0[Environmental <br> Economics]-->id6[Chap12: Incentive-Based: <br> Emission Charges and Subsidies]
      id0[Environmental <br> Economics]-->id7[Chap13: Incentive-Based: <br> Market Trading Systems] 
</div>


http://codepen.io/WoJWoJ/pen/eJjrRzton for formatting help.
