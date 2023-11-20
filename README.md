# stco

A Python package for assessing the temporal stability of spatiotemporal clustering methods via spatial overlay analysis.

Typically, to look at hotspots of point patterns we might aggregate the points to polygons and use a method like LISA or Getis-Ord Gi\* to find cold and hot spots. With clustering methods like A-DBSCAN, or any other clustering method that removes noise, we can produce cluster footprints to show hotspots. There are many ways to examine the spatial stability of clusters (which A-DBSCAN does quite well), but what about looking at temporal stability of clusters and how they change over time? Methods like ST-DBSCAN incorporate the temporal dimension directly into the algorithm, but is there a more simple approach to study the temporal stability of clusters and specifically look at emerging hotspots, in a way similar to that of Esri's Space Time Cube? The answer is yes, through STCO.

STCO seeks to provide a very simple way to analyze spatiotemporal clusters with the help of overlay analysis, one of the fundamental operations of GIScience. Rather than runnning clustering directly on the spatiotemporal data, we run spatial clustering on time slices (temporal subsets) of the spatiotemporal data to produce clusters for each time step. After this, a simple or weighted overlay can be used to examine how clusters change over time. In addition, through the STCEC method, cluster overlays can be classified according to certain characteristics of the temporal pattern of cluster recognition in a given area.

## Definitions

**STCO**: Spatiotemporal Cluster Overlay
<br>
**S-STCO**: Simple Spatiotemporal Cluster Overlay
<br>
**W-STCO**: Weighted Spatiotemporal Cluster Overlay
<br>
**STCEC**: Spatiotemporal Cluster Evolution Classifier

## Credits

Luke Zaruba
Bryan Runck
