---
layout: post
title: "Notes: Color & Light Theory"
categories: notes
modified_date: Jan 9, 2022
author:
- Jovan Sardinha
---

## Color

[video by Blender Guru](https://www.youtube.com/watch?v=Qj1FK8n7WgY)

* Saturation  & value
  * Don't overdo it
  * Used to guide the viewer
  * Use it to tell the story
  * Use it to change the mood

### Color Harmony
![1](/assets/post_assets/color-and-light-theory/incorrect_1.png)
![2](/assets/post_assets/color-and-light-theory/Incorrect_2.png)

<!-- Photo Grid -->
<div class="row">
  <div class="column">
    <img src="/assets/post_assets/color-and-light-theory/color_theory/1.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/2.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/3.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/4.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/5.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/6.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/7.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/8.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/9.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/10.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/11.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/12.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/13.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/14.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/15.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/16.png" style="width:100%"><figcaption></figcaption>
  </div>
  <div class="column">
    <img src="/assets/post_assets/color-and-light-theory/color_theory/17.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/18.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/19.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/20.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/21.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/22.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/23.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/24.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/25.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/26.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/27.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/28.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/29.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/30.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/31.png" style="width:100%"><figcaption></figcaption>
    <img src="/assets/post_assets/color-and-light-theory/color_theory/32.png" style="width:100%"><figcaption></figcaption>
  </div>
</div>


![1](/assets/post_assets/color-and-light-theory/summary.png)


## Light

[Lighting Course](https://www.youtube.com/watch?index=1list=PLjEaoINr3zgH9vCr47kSS5W8PEJBNIiwK&v=Ys4793edotw)

![1](/assets/post_assets/color-and-light-theory/5_elements_lighting.png)

*Direction*
![1](/assets/post_assets/color-and-light-theory/direction_1.png)

*Size*

![1](/assets/post_assets/color-and-light-theory/size_1.png)

*Color*

![1](/assets/post_assets/color-and-light-theory/color_1.png)

*Redability*

![1](/assets/post_assets/color-and-light-theory/readability_1.png)

*Emphasis*


![1](/assets/post_assets/color-and-light-theory/emphasis_1.png)




<script>
// Get the elements with class="column"
var elements = document.getElementsByClassName("column");

// Full-width images

// Four images side by side
function four() {
  for (i = 0; i < elements.length; i++) {
    elements[i].style.msFlex = "25%";  // IE10
    elements[i].style.flex = "25%";
  }
}

// Add active class to the current button (highlight it)
var header = document.getElementById("myHeader");
var btns = header.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>

<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
}

.header {
  text-align: center;
  padding: 32px;
}

.row {
  display: -ms-flexbox; /*IE 10*/
  display: flex;
  -ms-flex-wrap: wrap; /*IE 10*/
  flex-wrap: wrap;
  padding: 0 4px;
}

/*Create two equal columns that sits next to each other*/
.column {
  -ms-flex: 50%; /*IE 10*/
  flex: 50%;
  padding: 0 4px;
}

.column img {
  margin-top: 8px;
  vertical-align: middle;
}
</style>