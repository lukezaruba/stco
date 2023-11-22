# stco

A Python package for assessing the temporal stability of spatial clustering methods via spatial overlay analysis.

Typically, to look at hotspots of point patterns we might aggregate the points to polygons and use a method like LISA or Getis-Ord Gi\* to find cold and hot spots. With clustering methods like A-DBSCAN, or any other clustering method that removes noise, we can produce cluster footprints to show hotspots. There are many ways to examine the spatial stability of clusters (which A-DBSCAN does quite well), but what about looking at temporal stability of clusters and how they change over time? Methods like ST-DBSCAN incorporate the temporal dimension directly into the algorithm, which slighly differs from what we are trying to accomplish here, since we want to look at change over time rather then clustering over both space and time. This leads to the question of, is there a way to study the temporal stability of clusters and specifically look at emerging hotspots, in a way similar to that of Esri's Space Time Cube, without having to aggregate the data? The answer is yes, through `stco`.

`stco` seeks to provide a very simple way to analyze spatial clusters over time with the help of overlay analysis, one of the fundamental operations of GIScience. Rather than runnning clustering directly on the spatiotemporal data, we run spatial clustering on periods of time (by subsetting the data and taking "snapshots") of the spatiotemporal data to produce clusters for each time step. After this, a simple or weighted overlay can be used to examine how clusters change over time. In addition, through the STCEC method, cluster overlays can be classified according to certain characteristics of the temporal pattern of cluster recognition in a given area.

## Credits

Luke Zaruba

Bryan Runck
