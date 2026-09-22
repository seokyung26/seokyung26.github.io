---
layout: project
title: "Robotic gripping for tomato harvesting"
nav: research
permalink: /research/robotic-harvesting/
description: "Connecting gripping speed, contact mechanics and hyperspectral imaging to understand delayed tomato damage."
---

# Damage-aware robotic gripping for tomato harvesting

How does the rate of force application during gripping affect tomato tissue response? This research connects robotic manipulation, force sensing and hyperspectral imaging to examine compression damage that becomes apparent after handling. The work provides experimental evidence for considering loading rate alongside peak force when designing robotic gripping strategies.

![Robotic arm with an adaptive gripper, force sensor and Raspberry Pi controllers](/assets/images/robotic-gripping-system.png)
*Experimental platform for controlled tomato compression tests, combining a six-degree-of-freedom robotic arm, an adaptive gripper and capacitive force sensing.*

## Research challenge

A tomato can show limited visible damage immediately after gripping while its tissue response changes during storage. Force measurements alone therefore provide an incomplete picture of handling damage. This study examined how gripping conditions relate to mechanical behaviour and delayed spectral changes in standard-sized and cherry tomatoes.

The experiments used detached fruit under controlled laboratory conditions. Their purpose was to inform gripper control through measurements of fruit response.

## System and workflow

The platform combined a myCobot 320 for Pi robotic arm with an adaptive two-finger gripper. Capacitive force sensors measured contact loads through custom, 3D-printed PLA fixtures. Python software controlled the target gripper opening and supported measurement processing, with I²C sensor communication and MQTT logging.

Four gripper settings produced mean physical loading rates of **6.9, 10.5, 13.1 and 15.3 N/s**. Force–deformation curves were analysed with a four-parameter sigmoid model and an extended Yigit–Christoforou contact model to characterise mechanical response.

Hyperspectral images were collected **1 hour and 5 days after compression**. The Python processing pipeline combined RGB reconstruction, reference normalisation, Segment Anything Model segmentation and paired regions of interest. Comparing the contacted region with adjacent reference tissue on the same fruit helped account for differences between individual tomatoes. The same regions were used at both observation times.

![Hyperspectral imaging setup and processing steps, including fruit segmentation and paired regions of interest](/assets/images/hyperspectral-workflow.png)
*Hyperspectral processing workflow and representative intensity maps used to assess changes between 1 hour and 5 days after compression.*

## My contribution

I co-led conceptualisation and contributed to the methodology, compression experiments, force-sensor acquisition and formal analysis. I was responsible for **software development, validation, data curation and visualisation**, and co-wrote the original manuscript. These responsibilities are documented in the manuscript’s author contribution statement.

## Selected results

- Sigmoid and extended contact-model fits achieved **R² > 0.98** across the tested conditions. These values describe model fit to the experimental force–deformation data.
- Standard-sized tomatoes showed greater delayed spectral changes in the higher-loading-rate group. The clearest grouped difference occurred in the **800–850 nm** band (**p = 0.0052**).
- An apparent transition occurred around **10.5–13.1 N/s** in standard-sized tomatoes. This is a condition-specific observation based on four loading-rate levels, rather than a universal cutoff.
- Cherry tomatoes showed comparatively high spectral damage indicators across the tested conditions, without a significant difference between the low- and high-loading-rate groups.

![Delayed spectral indicators at four loading rates, with separate comparisons for standard-sized and cherry tomatoes](/assets/images/loading-rate-results.png)
*Top: standard-sized tomatoes. Bottom: cherry tomatoes. Loading rate is the rate of force increase, measured in N/s.*

The study used one cultivar per size class and a single gripper configuration. Damage assessment relied on spectral indicators. Broader validation across cultivars, maturity stages and field conditions is needed before generalising the findings.

## Research output

**Speed-Dependent Control of Robotic Gripper for Tomato Harvesting to Minimise Compression-Induced Damage**  
Seokyung Park, Jisu Song, Hyeonjun Hwang, Gunhui Park and Jaesung Park.  
*Biosystems Engineering* — **Under review, second revision**.

## Code availability

Implementation code is not publicly available.
