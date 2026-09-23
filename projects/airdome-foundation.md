---
layout: project
title: "Uplift resistance of air-dome foundations"
nav: research
permalink: /research/airdome-foundation/
description: "Numerical analysis of expandable X-Pile foundations: effects of wing dimensions and inclination on uplift resistance in sandy soil."
---

# X-Pile Foundations for Air-Supported Domes

**Project 03 · Numerical analysis of expandable piles in sandy soil**

**Status:** First-author manuscript in final preparation before submission.

Air-supported domes transfer membrane and cable tension into their foundations. This study investigates how the dimensions and inclination of expandable pile wings affect uplift resistance in sandy soil, with a focus on the mechanisms of pile–soil load transfer.

![X-Pile geometry and studied dimensions](/assets/images/xpile-geometry.png)
*X-Pile geometry and parameter ranges used in the numerical study. Manuscript, Fig. 1.*

## Research question

How do wing length and shaft–wing inclination change the resistance mobilized during uplift? The analysis separates wing and shaft contributions to examine both total resistance and the efficiency of the expanded geometry.

## Numerical model and study design

The X-Pile consists of a steel pipe shaft with four expandable wings near its tip. Three-dimensional quarter-symmetric models in Abaqus/Standard represent pile–soil interaction under calcareous-sand conditions representative of Abu Dhabi. The model uses Mohr–Coulomb soil, a rigid pile idealization, hard normal contact and Coulomb friction.

The analysis uses a fixed embedment depth of **750 mm** and a shaft diameter of **114 mm**. Two parameter series examine:

- **Wing length:** 170, 370 and 625 mm at a 90° shaft–wing angle.
- **Wing inclination:** 90°, 85°, 80°, 75° and 70° at a fixed 370 mm wing length.

Displacement-controlled uplift simulations provide resistance–displacement curves, wing and shaft resistance components, contact forces and soil plastic-zone distributions.

## Selected numerical findings

At **7 mm uplift**, the calculated resistance increased with wing length:

| Wing length | Simulated uplift resistance |
| --- | --- |
| 170 mm | 12.27 kN |
| 370 mm | 20.54 kN |
| 625 mm | 32.59 kN |

Wings contributed **89.8–98.4%** of the total resistance in the studied cases. Larger wings mobilized a larger soil region and increased total resistance, while reducing normalized resistance efficiency.

For the **370 mm** wing at **5 mm uplift**, reducing the inclination from 90° to 70° decreased simulated resistance from **19.14 to 12.27 kN**, a **35.9% reduction**. The accompanying contact-force analysis helps explain the change in load transfer.

![Soil plastic zones for different wing lengths](/assets/images/soil-plastic-zones.png)
*Simulated equivalent plastic strain at 7 mm uplift, illustrating the effect of wing length on the mobilized soil region. Manuscript, Fig. 5.*

## My contribution

I investigated pile–soil interaction using three-dimensional finite-element models, compared wing dimensions and inclination, and analysed resistance components and soil plastic zones for the first-author manuscript.

## Interpretation and limitations

These are numerical comparisons at the stated uplift displacements, rather than measured field capacities or ultimate capacities. The model assumes fully deployed, rigidly connected wings and idealized soil behaviour; installation effects are excluded. Mesh sensitivity remains relevant, and experimental validation is still required.

## Manuscript

**Analysis of uplift resistance characteristics of expandable piles in sandy soil with varying wing inclination and dimensions**
Seokyung Park, Jaesung Park, Junbong Jang, Daniel Park, Sein Kwon, Minjoo Kim and Gaeun Choi.

Korean manuscript; title translated into English. **Final preparation before submission.**

**Tools and methods:** Abaqus/CAE · Abaqus/Standard · finite-element analysis · pile–soil contact · parametric modelling

**Code availability:** Implementation code is not publicly available.
