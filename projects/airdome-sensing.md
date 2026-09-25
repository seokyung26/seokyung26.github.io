---
layout: project
title: "Load-cell sensing for air-supported domes"
nav: research
permalink: /research/airdome-sensing/
description: "Sensing-system design, sensor selection and field load-cell measurements for air-supported agricultural domes."
---

<section class="hero project-hero"><div class="hero-body"><div class="container is-max-desktop"><div class="columns is-centered"><div class="column has-text-centered"><p class="project-number">PROJECT 04</p><h1 class="title is-1 publication-title">Load-Cell Sensing<br>for Air-Supported Domes</h1><div class="is-size-5 publication-authors"><a href="/">Seokyung Park</a></div></div></div></div></div></section>


This work combines **sensing-system design and fabrication, sensor selection, and field data acquisition** for air-supported agricultural domes. Structural and ground characteristics informed the instrumentation layout, while structural-response and environmental measurements were considered together to support safety assessment. The system is intended for deployment in **Damyang, Republic of Korea**, and **Abu Dhabi, United Arab Emirates**, with initial load-cell measurements carried out at Damyang.

## Sensing-system design and development

### Site-informed instrumentation layout

Foundation structural members and ground conditions were investigated to determine **sensor locations and the number of measurement points**. These findings informed the instrumentation plan for monitoring the response of the foundation and supporting members to external loads.

### Structural and environmental sensing

Sensor options were investigated for monitoring **displacement, angular velocity and load-induced stress** in structural members. The review included accelerometer–gyroscope units, strain gauges and related instrumentation, alongside load cells for cable-tension measurements.

Environmental sensors and weather-observation systems were also evaluated for tracking **wind speed, temperature and humidity**, so that external conditions could be considered when interpreting structural response and assessing safety.

### Equipment selection and system integration

Equipment was selected by considering **measurement range, resolution, control-system compatibility and cost** together. This supported the configuration of a practical measurement and data-acquisition system suited to the target structural responses and field conditions.

### Long-term, multi-site data acquisition

A sensing system was **designed and fabricated** to support stable, long-term data collection across multiple greenhouses. Remote-control and data-transmission functions were incorporated into the design to support integrated data management on a central server.

## Deployment sites and installation plans

The domestic deployment is planned for the existing air-supported dome at **Damyang Air House**. The overseas deployment is planned for a future air-dome installation in an **agricultural district of Abu Dhabi**. The photographs below show the existing Korean dome and the agricultural setting for the planned UAE installation, respectively.

<div class="deployment-site-grid">
<figure class="deployment-site-figure"><a href="/assets/images/airdome-damyang-site.png" target="_blank" rel="noopener"><img src="/assets/images/airdome-damyang-site.png" alt="Existing white air-supported agricultural dome at Damyang Air House, Republic of Korea" loading="lazy" width="643" height="352"></a><figcaption><strong>Damyang Air House, Republic of Korea.</strong> Exterior of the existing air-supported dome selected for the planned sensing-system deployment. Initial load-cell installation and cable-tension measurements at this site provide the practical basis for further sensor integration.</figcaption></figure>
<figure class="deployment-site-figure deployment-site-abudhabi"><a class="abudhabi-photo-pair" href="/assets/images/airdome-abudhabi-planned-site.png" target="_blank" rel="noopener"><img src="/assets/images/airdome-abudhabi-planned-site.png" alt="Existing greenhouse facilities in an agricultural district of Abu Dhabi associated with a planned air-dome installation" loading="lazy" width="443" height="361"><img src="/assets/images/airdome-abudhabi-planned-site-2.png" alt="Second supplied photograph of greenhouse facilities at the planned Abu Dhabi air-dome site" loading="lazy" width="443" height="361"></a><figcaption><strong>Planned air-dome site, Abu Dhabi, United Arab Emirates.</strong> Existing greenhouse facilities in the agricultural district where an air-supported dome is planned. The photograph documents the local agricultural setting; installation of the air dome and its sensing system is planned.</figcaption></figure>
</div>

System design and fabrication have been carried out. The photographs describe the **planned field deployment locations**, while the measurements below document the **initial load-cell implementation at Damyang**.

<span id="system" class="section-anchor"></span>

## System overview & field measurement

<div class="research-split sensing-overview"><figure class="research-figure "><a href="/assets/images/airdome-system-figure.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Complete air-dome monitoring diagram including sensor locations, wiring, power supply and acquisition nodes"><img src="/assets/images/airdome-system-figure.png" alt="Complete air-dome monitoring diagram including sensor locations, wiring, power supply and acquisition nodes" loading="lazy"></a><figcaption><strong>Monitoring system concept.</strong> Original sensor-placement, wiring and power-supply figure prepared for the air-dome project. <a href="/assets/images/airdome-system-figure.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure><figure class="research-figure "><a href="/assets/images/field-load-cell.jpg" target="_blank" rel="noopener" aria-label="Open full-size figure: Actual load-cell installation at an air-dome cable anchor"><img src="/assets/images/field-load-cell.jpg" alt="Actual load-cell installation at an air-dome cable anchor" loading="lazy"></a><figcaption><strong>In the field.</strong> Load cells installed at the Damyang outer-dome anchor, 15 June 2026. <a href="/assets/images/field-load-cell.jpg" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure></div>

The diagram summarises the sensing-system layout, including sensor positions, wiring, power supply and acquisition nodes. The field photograph documents the Damyang load-cell implementation: a measurement chain connecting the cable anchor to the data logger. This field work forms one part of the broader system design and fabrication described above.

<span id="field" class="section-anchor"></span>

### Field measurement workflow

Load cells were installed at an outer-dome wire anchor at Damyang on **15 June 2026**. Readings passed from the load-cell indicator through a **USB–RS485 interface to a Raspberry Pi**, where the measurements were saved as CSV files.

### Practical work

- Examining cable-anchor geometry and sensor attachment arrangements.
- Working with load-cell mounting and measurement-range selection.
- Connecting the indicator, USB–RS485 interface and Raspberry Pi.
- Collecting and reviewing timestamped tension records from the outdoor session.

**Tools and methods:** load cells · cable-tension measurement · Raspberry Pi · USB–RS485 · CSV logging · field instrumentation



<section class="project-funding muted-funding" aria-labelledby="funding-heading">
<h2 id="funding-heading">Funding</h2>
<p>This work was supported by the Korea Institute of Planning and Evaluation for Technology in Food, Agriculture and Forestry (IPET) through the Agri-Food Export Enhancement Technology Development Program, funded by the Ministry of Agriculture, Food and Rural Affairs (MAFRA) (RS-2025-02313370).</p>
<p class="funding-project-title"><strong>Project title:</strong> <em>Development of Commercial-scale Vertical Farming System with Low Energy Consumption Based on Passive Air-dome Technology for Hot Climate in Middle East</em></p>
</section>
