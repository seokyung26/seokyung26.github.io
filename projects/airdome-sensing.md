---
layout: project
title: "Structural sensing for air-supported domes"
nav: research
permalink: /research/airdome-sensing/
description: "Taking measurements from cable anchors to field data: load cells, sensor evaluation and Raspberry Pi acquisition."
---

<section class="hero project-hero"><div class="hero-body"><div class="container is-max-desktop"><div class="columns is-centered"><div class="column has-text-centered"><p class="project-number">PROJECT 04</p><h1 class="title is-1 publication-title">Structural Sensing<br>for Air-Supported Domes</h1><div class="is-size-5 publication-authors"><a href="/">Seokyung Park</a></div><p class="project-affiliation">Precision Agriculture and Smart Sensing System Lab.<br>Pusan National University</p><p class="project-status">Field acquisition tested · System integration ongoing</p><div class="publication-links"><span class="link-block"><a class="button is-normal is-rounded is-dark" href="#system">System overview</a></span><span class="link-block"><a class="button is-normal is-rounded is-dark" href="#field">Field measurements</a></span><span class="link-block"><a class="button is-normal is-rounded is-dark" href="https://pass.pusan.ac.kr/">Lab website</a></span></div></div></div></div></div></section>


**Status:** Load-cell field measurements and bench sensor comparison completed; environmental packaging and broader system integration are ongoing.

Air-supported domes rely on internal pressure and tensioned membranes. Cable forces and foundation movement provide useful observations for evaluating their structural response. This project develops a practical sensing workflow around those observations, beginning with site inspection, sensor selection, and a field data acquisition setup.

<span id="system" class="section-anchor"></span>

## Sensor placement and system architecture

<div class="research-split sensing-overview"><figure class="research-figure "><a href="/assets/images/airdome-sensor-placement.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Sensor locations on the air dome, extracted from the original PowerPoint diagram"><img src="/assets/images/airdome-sensor-placement.png" alt="Sensor locations on the air dome, extracted from the original PowerPoint diagram" loading="lazy"></a><figcaption><strong>Sensor-placement concept.</strong> IMU, load-cell and inclinometer locations. Diagram extracted from the original presentation, slide 12. <a href="/assets/images/airdome-sensor-placement.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure><figure class="research-figure "><a href="/assets/images/field-load-cell.jpg" target="_blank" rel="noopener" aria-label="Open full-size figure: Actual load-cell installation at an air-dome cable anchor"><img src="/assets/images/field-load-cell.jpg" alt="Actual load-cell installation at an air-dome cable anchor" loading="lazy"></a><figcaption><strong>In the field.</strong> Load cells installed at the Damyang outer-dome anchor, 15 June 2026. <a href="/assets/images/field-load-cell.jpg" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure></div>

The diagram summarizes the intended multi-sensor arrangement. Acquisition nodes use Raspberry Pi computers, with voltage conversion and sensor interfaces specified in the system integration plan. It represents the integration design; the completed work described below comprises field load-cell acquisition and bench sensor evaluation. Inclination sensing and broader system integration remain planned extensions.

<span id="field" class="section-anchor"></span>

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
