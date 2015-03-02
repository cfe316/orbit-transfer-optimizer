# orbit-transfer-optimizer
 Mathematica package for computing the lowest delta-V transfer between two orbits around the same body.

# Installation
 Put the OrbitTransferOptimizer folder and MinimizeUnimodalFunction.m in Mathmatica's $UserBaseDirectory/Applications.
 
# Simple Use
 In Mathematica, run
 
    Needs["OrbitTransferOptimizer`"]
    
    OrbitTransferOptimizerGUI[]
The GUI is the same as at http://cfe316.github.io/orbit-transfer-optimizer. See that site for instructions.
 
# Theory:
Orbits are made of collections of points (and associated velocities) in space. To find the lowest-delta-V transfer between two orbits, we iterate over points on each of the orbits.

Assuming a massive body (such as planet) at the origin, and two given points in space, there usually* one DOF (Degree Of Freedom) to choose a conic-section orbit that passes through those points. When we associate velocities with each of those points, there is some orbit that passes through the points that requires the lowest amount of delta-V.
 
*There are 2 DOF for points exactly opposite one another, for example.

### Details.

#### Will this always find the lowest-delta-V transfer?
No. 
* Some optimal orbit transfers require 3 burns, such as a [bi-elliptic transfer](http://en.wikipedia.org/wiki/Bi-elliptic_transfer). Changing radius, eccenticity, and inclinations probably also requires multiple burns for the lowest total delta V.
* Finding the best transfer orbit when two points are directly across from each other requires searching two DOF. Rather than slowly search another DOF my program guesses (somewhat poorly) to save time.
* The brute-force search over points belonging to the initial and final orbits uses 24 x 24 steps. For closed orbits this corresponds to 15 degrees of true anomaly. To search more accurately, try adjusting the &nu;-start and &nu;-end sliders to encompass less than 180 degrees.
* There could be other flaws that result in a less-than-perfect two-burn transfer. Use a reasonable margin of error when Kerbal lives are at risk.

### Why use Longitude of Periapsis &piv; rather than Argument of Periapsis &omega; ?
Kerbal engineer gives Longitude of PE &piv;. To convert from &omega; remember that &piv; = &Omega; + &omega;.

#### Mathematica symbols exposed
To my knowledge, OrbitTransferOptimizerGUI and MinimizeUnimodalFunction are the only exposed symbols when the package is loaded as under 'Simple Use'.

#### Making something else with the code
It might be nice to make your own GUI. The OrbitTransferOptimizerGUI[] is mostly a wrapper for the BestTransferTwoOrbits[o1, o2] function, found in BestTransferTwoOrbits.m. BestTransferTwoOrbits (and the rest of the code) assumes that mu = 1, so you'll have to convert from km and m/s to the mu = 1 world of DU and VU units.
 
