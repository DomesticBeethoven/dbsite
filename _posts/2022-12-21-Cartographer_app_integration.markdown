---
layout: post
title: "Cartographer"
full_title: 'Integration of the Edirom "Cartographer" OMR tool'
date: 2022-12-21
category: digitization
excerpt_separator: <!--more-->
---


For use in project encodings, Edirom adapted their Optical Music Recognition technology for use in an online app: __*[Cartographer](https://github.com/Edirom/cartographer-app){:target="_blank"}*__. The Cartographer app is able to identify the bar-lines in a digital image of a musical score. It then assigns coordinates and measure numbers to the regions between the lines and associates these with the matching measures in an MEI encoding. <!--more--> This is especially helpful for selective encodings, where only a few measures are encoded. By connecting the encoded measures with local zones on the facsimile, the music can be shown in its original context. The app also makes it easier for any musicologist to encode the music themselves: all the necessary outer structure of the MEI is already included in the output file–for example, elements such as `<staff>` and `<measure>`, along with all the required metadata. The file is then ready to be edited in an app like __[MEI-Friend](https://mei-friend.mdw.ac.at/){:target="_blank"}__, without any specialized knowledge of music encoding processes.

The Cartographer app has already been successfully utilized in preparations for the annual Beethoven-Haus Studienkolleg, where the students were given selective encodings of _Wellingtons Sieg_ to analyze and edit digitally. The __*[Beethoven in the House Annotator](https://domestic-beethoven.eu/annotation/2022/08/19/Annotation_Prototype.html){:target="_blank"}*__ app uses files produced by Cartographer to retrieve the source IIIF image and display it with measure numbers added. This makes the annotation and comparison way easier, since scholars can pull up the relevant portion of the score directly, rather than having to count out the measures themselves.

The selective encodings produced by these apps gave students the ability to display their digital annotations directly on facsimile images.
