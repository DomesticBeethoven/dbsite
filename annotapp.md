---
layout: page
title: Prototype
weight: 5
permalink: /annotapp/
---
__The Beethoven in the House Annotator App__ is a web-based application that provides support for storing, sharing, and publishing musical commentary along with the exact fragments of the digital resources they reference.

* __*To try the prototype yourself, go to   [https://tool.domestic-beethoven.eu](https://tool.domestic-beethoven.eu){:target="_blank"}*__

 * Read more about the __[design and use of the app](./annotapp)__.


* Make and save your own annotations on remote materials by signing up for a personal Solid pod, a free Linked Data storage system. Available from __[SolidCommunity](https://solidcommunity.net/){:target="_blank"}__.

This tool is a proof of concept for writing editorial annotations as Linked Open Data, combining the Oxford e-Research Centre's [Music Encoding and Linked Data (MELD)](https://meld.web.ox.ac.uk/){:target="_blank"} platform with tools developed by the [Edirom Virtual Research Network (ViFE)](https://www.edirom.de/){:target="_blank"} at Paderborn University.

By displaying arrangements side-by-side, the app facilitates the identification of parallel passages in different versions of the same work. [The data model developed by the project](assets/docs/BitHModelDocumentation_v0.2.1.pdf){:target="_blank"} allows such parallel passages to be linked and annotated as two manifestations of the <i>same musical material</i>.

Once works are selected and loaded into the display pane, a musicologist can point and click on individual notes and measures, or click and drag to select larger regions, whether the resource is a facsimile image or a rendered score encoding.

Prepossessing by Edirom's Cartographer App provides automatic recognition of measure positions to aid in selecting musical content from digitized images.
<br/><br/>
* <p style="font-style:italic; font-weight:bold">Tutorials coming soon!</p>

<br/>
#### __Technical Details__


This prototype app is written with Vue.js 3 / Vuex, whereas MELD is based on React / Redux. The bridging between these two technology stacks happens in the Vuex store, which is described in more detail in the [graphModule.js](https://github.com/DomesticBeethoven/bith-annotator/blob/vue3/src/store/modules/graphModule.js){:target="_blank"} file on the [GitHub project site](https://github.com/DomesticBeethoven/bith-annotator){:target="_blank"}.


The App is deployed using a multistage Dockerfile, using NodeJS to build the tool, and then an nginx-based Container to serve it.

The tool will load data as specified in /public/rdf/BitHCollection.jsonld. From there, MELD will load additional data following the graph traversal rules specified in /src/config/traversal.config.js. Some of the data is loaded from the project API, deployed from https://api.domestic-beethoven.eu. This API will serve MEI files for rendering, but also auto-generated LOD representations of the metadata contained in those MEI files, and, in some cases, auto-generated IIIF Manifests. That API has been developed in collaboration with the Beethovens Werkstatt project, and is available from https://github.com/DomesticBeethoven/api.

Development of this prototype relies in NodeJS v14 and NPM 6.

For more information, see the [README.md file on GitHub](https://github.com/DomesticBeethoven/bith-annotator/tree/vue3).
