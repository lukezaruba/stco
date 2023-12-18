# Spatiotemporal Cluster Evolution Classifier (STCEC)

- GOAL: Convert a list of footprint indexes (the indexes that a given area was included as a cluster) into a classification to describe the spatiotemporal characteristics of the area.

## Cluster Types

- **PERSISTENT** >= $n$% inclusion, Most recent step included
- **HISTORICAL** >= $n$% inclusion, Most recent step not included
- **NEW** < $n$% inclusion, Most recent step included, Only included once
- **SPORADIC** < $n$% inclusion, Most recent step not included, Only included once
- **INTENSIFYING** < $n$% inclusion, Most recent & second most recent steps included, Included > 1
- **DIMINISHING** < $n$% inclusion, Most recent & second most recent steps not included, Included > 1, Must be some consecutive streak
- **OCCASIONAL** < $n$% inclusion, Most recent & second most recent steps not included, Included > 1, No consecutive streak

Can change the percentage as desired (defined here as $n$).

## Examples

With 10 time steps: 1, 2, ..., 10

1. `[2,3,4,5,6,7,8,9,10]` - Persistent
2. `[1,2,3,4,5,6,7,8,9]` - Historical
3. `[10]` - New
4. `[4]` - Sporadic
5. `[1,3,4,9,10]` - Intensifying
6. `[1,3,4,6]` - Diminishing
7. `[1,3,7,9]` - Occasional
