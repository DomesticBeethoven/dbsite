---
layout: post
title:  "Unleashing the Model"
full_title: "Unleashing the Model: Developing a Prototype for Comparing Remote Resources"
date:   2022-08-19 09:33:48 +0200
category: annotation
excerpt_separator: <!--more-->
---

Armed with a new model for comparing different versions of the same musical work, we went to work on creating a prototype for a web application that would allow us to identify, label, and comment upon digitized works held in remote repositories.

<!--more-->

Our goals for this prototype were fairly simple, but each step involved multiple consultations among the researchers regarding musicological needs and technical feasibility within the scope of the project. Only by having the musicological and technical components of the project in sync could the model be properly tested, and the application evaluated for suitability.

![Beethoven in the House BitH-annotator app](/assets/img/prototypeScreenshot.png)
<!-- {:height="430px" width="300px"} -->

The app was created using [Vue.js](https://vuejs.org/){:target="_blank"}, a popular Node javascript library. For annotation storage, the [Solid framework](https://solidproject.org/users/get-a-pod){:target="_blank"} was chosen for its compatibility with Linked Data. For viewing resources stored as MEI, the app relies on the [Verovio](https://www.verovio.org/index.xhtml){:target="_blank"} score rendering library, and for high resolution digital image files of facsimiles, it includes the [OpenSeadragon](https://openseadragon.github.io/){:target="_blank"} web viewer.

A demonstration site has been set up here: __[https://tool.domestic-beethoven.eu](https://tool.domestic-beethoven.eu){:target="_blank"}__. (Note that a personal Solid Pod–available from a provider such as [Inrupt](https://signup.pod.inrupt.com/){:target="_blank"} or [SolidCommunity](https://solidcommunity.net/){:target="_blank"}–is required for use.)
