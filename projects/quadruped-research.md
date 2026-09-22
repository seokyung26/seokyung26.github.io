---
layout: project
title: "Quadruped robots for agricultural sensing"
nav: research
permalink: /research/quadruped-research/
description: "Bringing mobile sensing into greenhouses and field surveys, with plant phenotyping as the next research direction."
---

# Quadruped Robotics for Agricultural Sensing

My quadruped research connects agricultural field conditions with mobile sensing, robot perception and spatial analysis. The work spans greenhouse microclimate monitoring, repeat surveys of reservoir upstream terrain, and proprioceptive terrain assessment. Plant phenotyping is the next planned direction.

**Implementation code is not publicly available.**

## Greenhouse microclimate mapping

**Status:** Experimental study completed; manuscript in final preparation before submission.

Greenhouse control systems often rely on a few fixed environmental sensors. This project asks how well those readings represent the conditions experienced by crops across space and height. I contributed to the methodology, experimental investigation and manuscript preparation as a co-first author.

![Quadruped robot with dual-height sensors and custom acquisition modules](/assets/images/greenhouse-sensing-platform.png)

*The field platform and custom sensor modules. Sensors sampled the fruit zone at 1.15 m and upper canopy at 1.65 m. Source: manuscript, Figure 2.*

The team integrated temperature, relative humidity and CO2 sensors with a Unitree Go2 EDU. LiDAR-based pipe-rail detection and PID steering supported traversal within eight 54 m greenhouse lanes. ROS 2 recorded environmental observations and point clouds on a common clock.

Four sessions conducted on separate days in June 2026 produced 24 environmental maps: three variables, two heights and four sessions. Cross-calibration aligned the sensor modules; fixed-sensor time series supported correction for temporal variation during sequential lane measurements. Each map contained 160 measured grid cells.

![Temperature, humidity and CO2 measurements overlaid on greenhouse point clouds](/assets/images/greenhouse-microclimate-overlay.jpg)

*Midday measurements at two heights overlaid on LiDAR geometry. Map coordinates were estimated from elapsed traversal time and lane length. Source: manuscript, Figure 6.*

All 24 maps showed positive spatial autocorrelation, with Moran's I of **0.40–0.85**. Humidity references from fixed sensors were **2.4–7.3 percentage points** below mobile spatial means. These results support periodic assessment of fixed-sensor representativeness. They do not establish absolute sensor accuracy or effects on crop yield.

**Manuscript:** HyeonJun Hwang†, Seokyung Park† and Jaesung Park. “Greenhouse microclimate mapping using a quadruped robot to assess fixed sensor representativeness.” In preparation. † Equal contribution.

## Reservoir upstream inspection

**Status:** Ongoing project; repeated field surveys and initial image processing completed. Project period: April–October 2026.

This work extends mobile sensing to uneven reservoir upstream terrain, where repeat observations can support analysis of soil surface conditions. The sensing workflow combines an RTK-GNSS receiver and RGB camera, records their timestamps, interpolates coordinates for image frames, and extracts representative images along survey routes.

![Recorded reservoir survey route coloured by elevation](/assets/images/reservoir-survey-route.png)

*An elevation-coloured survey trajectory with observation locations. Source: reservoir interim report, slide 8.*

The July survey records contain **1,116 images across eight sessions and 365.0 m of travel**, aggregated from four survey dates at two reservoirs. For routes repeated six days apart at Dwitgol Reservoir, 76% of observations were within 2 m of the comparison route; the median nearest-route distance was 0.93 m. These values describe route correspondence, rather than positioning accuracy.

Initial processing separates vegetation, gravel and exposed soil to support comparisons between surveys. Soil moisture estimation and erosion/deposition assessment remain subsequent research steps; a validated predictive model is not yet reported.

## Fellowship-supported platform and terrain research

**Status:** Research performed during the September 2025–August 2026 Master's Student Research Encouragement Grant period; controlled terrain results documented in 2026 conference materials.

The fellowship project, “Development of Locomotion Algorithms and Autonomous Control Systems for Quadruped Robots Specialized for Korean Agricultural Terrain,” supported integration of LiDAR, inertial and environmental sensing, ROS 2 logging, greenhouse mapping and rail-following experiments. Early prototypes used Hesai LiDAR and LiDAR–inertial mapping; the later microclimate study above used a different acquisition configuration.

![Quadruped robot beside the high-friction experimental surface](/assets/images/terrain-sensing-experiment.jpg)

*Experimental setup for evaluating locomotion on a high-friction surface. Source: 2026 spring conference slides, page 11, Figure 6.*

A related controlled experiment examined body orientation, ground reaction forces and joint responses across rigid, high-friction and compliant surfaces at five slope settings from 0° to 25°. A 1D-ResNet slope estimator reported **1.06° mean absolute error and R² = 0.92** in five-fold validation on this experimental dataset. Testing on varied field soils and deploying real-time inference are future steps.

## Planned plant phenotyping

**Status:** Planned research; results are not yet available.

The next direction is quadruped-based plant phenotyping: extending mobile observation from the surrounding environment to crop traits. The intended research connection is to relate plant observations to their environmental context. The experimental design, sensing configuration and target traits will be documented as the project develops.
