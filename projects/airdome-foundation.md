---
layout: project
title: "Uplift resistance of air-dome foundations"
nav: research
permalink: /research/airdome-foundation/
description: "Investigating how pile geometry changes uplift resistance, with a separate DIC study of soil deformation."
---

[← Research portfolio](../../README.md)

# Air-Dome Foundation Uplift Research

**Numerical pile–soil interaction and laboratory image-based deformation analysis**

**Status:** X-Pile manuscript in final preparation before submission. Related laboratory DIC work was presented at the 2025 Korean Society of Agricultural Engineers fall conference.

Air-supported domes transfer membrane and cable tension into their foundations. For shallow foundations in sandy soils, understanding how geometry mobilizes uplift resistance is important to structural design. This research combines a numerical study of expandable winged piles with a related laboratory investigation of soil deformation during pile pullout.

## Numerical study: expandable foundation piles

The X-Pile concept uses a steel pipe shaft with four wings near its tip. Three-dimensional models in Abaqus/Standard represent the pile within a Mohr–Coulomb sand domain under calcareous-sand conditions representative of Abu Dhabi. A quarter-symmetric model reduces the computational domain while retaining the studied geometry and loading conditions.

![X-Pile geometry and studied dimensions](/assets/images/xpile-geometry.png)
*X-Pile geometry and parameter ranges used in the numerical study. Source: manuscript, Fig. 1.*

The analysis fixes embedment depth at 750 mm and compares wing lengths of 170, 370, and 625 mm at a 90° shaft–wing angle. A separate series examines angles from 90° to 70° at a 370 mm wing length. Outputs include resistance–displacement curves, shaft and wing resistance components, contact forces, and soil plastic zones.

At 7 mm uplift displacement, simulated resistance increased from 12.27 to 32.59 kN across the studied wing lengths. Wings contributed 89.8–98.4% of the total resistance. Larger wings increased total resistance while reducing normalized resistance efficiency. At a 370 mm wing length and 5 mm uplift displacement, changing the angle from 90° to 70° reduced simulated resistance by 35.9%.

![Soil plastic zones for different wing lengths](/assets/images/soil-plastic-zones.png)
*Simulated equivalent plastic strain at 7 mm uplift displacement, showing how the mobilized soil region changes with wing length. Source: manuscript, Fig. 5.*

These results describe the investigated numerical conditions. The model assumes fully deployed, rigidly connected wings and idealized soil behavior. Installation effects are excluded, mesh sensitivity remains relevant, and experimental validation is a next step.

## Related laboratory study: digital image correlation

A separate 2025 study used a soil box, a semicylindrical pile, a load cell, and camera imaging to examine local deformation during pullout. The workflow combined FFmpeg frame extraction, OpenCorr displacement estimation, and heat-map/vector-field visualization. The observed displacement fields helped characterize localized and asymmetric soil movement.

![Laboratory soil box and pile for DIC analysis](/assets/images/dic-pullout-test.jpeg)
*Laboratory pile-pullout setup used for the DIC study. Source: 2025 conference presentation, slide 8.*

This experiment supports a complementary view of pile–soil behavior; it does not constitute validation of the X-Pile numerical model.

**Tools and methods:** Abaqus/Standard · finite element analysis · pile–soil contact · digital image correlation · OpenCorr · OpenCV · FFmpeg

**Code availability:** Implementation code is not publicly available.
