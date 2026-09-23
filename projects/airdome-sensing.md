---
layout: project
title: "Structural sensing for air-supported domes"
nav: research
permalink: /research/airdome-sensing/
description: "Taking measurements from cable anchors to field data: load cells, sensor evaluation and Raspberry Pi acquisition."
---

# Structural Sensing for Air-Supported Domes

**Project 04 · From cable-anchor measurements to a multi-sensor monitoring workflow**

**Status:** Load-cell field measurements and bench sensor comparison completed; environmental packaging and broader system integration are ongoing.

Air-supported domes rely on internal pressure and tensioned membranes. Cable forces and foundation movement provide useful observations for evaluating their structural response. This project develops a practical sensing workflow around those observations, beginning with site inspection, sensor selection, and a field data acquisition setup.

## Sensor placement and system architecture

![Air-dome sensor locations and proposed power and acquisition connections](/assets/images/airdome-sensor-layout.png)
*Sensor-placement and wiring concept for the air-dome monitoring system. The diagram shows IMU sensors, load cells, an inclinometer, Raspberry Pi acquisition nodes and power-supply connections.*

The diagram summarizes the intended multi-sensor arrangement and power distribution. It represents the integration design; the completed work described below comprises field load-cell acquisition and bench sensor evaluation. Inclination sensing and broader system integration remain planned extensions.

## Field photographs and load-cell measurements

Site observations at Damyang informed potential sensor locations and attachment arrangements. Load cells were installed at an outer-dome wire anchor for a field measurement session on 15 June 2026. The setup connected the load-cell output to an indicator, then transferred readings through a USB–RS485 interface to a Raspberry Pi for CSV logging.

![Load cells installed at an outer-dome wire anchor](/assets/images/field-load-cell.jpg)
*Load-cell installation during the Damyang field test, 15 June 2026. Source: project sensing presentation, slide 27.*

The documented measurement session ran from 11:34 to 18:37 and produced logged tension signals. The trial provided practical experience with mounting, sensor range selection, communication, and outdoor data collection. It also highlighted the importance of consistent mechanical attachment when comparing sensor readings.

![Field data acquisition equipment](/assets/images/field-data-acquisition.jpg)
*Data acquisition hardware used for the field load-cell measurements. Source: project sensing presentation, slide 28.*

## Sensor comparison and integration design

The broader sensing plan considers cable tension, acceleration, and inclination. Bench work compared a DAS MSENS-AC three-axis accelerometer with an ACEINNA MTLT335D IMU under stationary conditions. Readings were compared at 10 Hz over approximately 297 seconds.

In this test, acceleration standard deviations were 0.10–0.16 mg for the MTLT335D and 0.48–0.49 mg for the MSENS-AC across the three axes. These figures describe stationary measurement noise under the tested conditions. They do not establish absolute accuracy, which requires an independent reference.

![Stationary acceleration-noise comparison](/assets/images/stationary-noise-comparison.png)
*Standard deviation of stationary acceleration measurements by axis. Source: project sensing presentation, slide 36.*

Sensor placement, wiring, power supply, and enclosure requirements form the next layer of the system design. Inclination sensing is included in the integration plan. Outdoor packaging must also account for cable routing, service access, and the thermal conditions expected at the intended sites.

## Current scope and next steps

The demonstrated work covers a local field acquisition chain and bench sensor evaluation. Planned extensions include longer monitoring periods, environmental reliability checks, remote data transfer, and comparison of measurements with foundation simulations. MQTT communication and integrated structural risk assessment remain future system capabilities.

This overview presents hardware connections, acquisition procedures and findings from the completed experimental stages.

**Tools and methods:** load-cell instrumentation · Raspberry Pi · USB–RS485 · CSV logging · acceleration measurement · sensor comparison · field instrumentation

**Code availability:** Implementation code is not publicly available.
