---
layout: project
title: "Load-cell sensing for air-supported domes"
nav: research
permalink: /research/airdome-sensing/
description: "Hands-on load-cell installation, cable-tension measurement and Raspberry Pi data acquisition for air-supported domes."
---

<section class="hero project-hero"><div class="hero-body"><div class="container is-max-desktop"><div class="columns is-centered"><div class="column has-text-centered"><p class="project-number">PROJECT 04</p><h1 class="title is-1 publication-title">Load-Cell Sensing<br>for Air-Supported Domes</h1><div class="is-size-5 publication-authors"><a href="/">Seokyung Park</a></div></div></div></div></div></section>


The air-dome monitoring plan considers load cells, IMUs and inclinometers. My main practical work focused on **load-cell installation, cable-tension measurement and field data acquisition**. This page describes the equipment and measurement workflow I worked with at the Damyang site.

<span id="system" class="section-anchor"></span>

## System overview & field measurement

<div class="research-split sensing-overview"><figure class="research-figure "><a href="/assets/images/airdome-system-figure.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Complete air-dome monitoring diagram including sensor locations, wiring, power supply and acquisition nodes"><img src="/assets/images/airdome-system-figure.png" alt="Complete air-dome monitoring diagram including sensor locations, wiring, power supply and acquisition nodes" loading="lazy"></a><figcaption><strong>Monitoring system concept.</strong> Original sensor-placement, wiring and power-supply figure prepared for the air-dome project. <a href="/assets/images/airdome-system-figure.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure><figure class="research-figure "><a href="/assets/images/field-load-cell.jpg" target="_blank" rel="noopener" aria-label="Open full-size figure: Actual load-cell installation at an air-dome cable anchor"><img src="/assets/images/field-load-cell.jpg" alt="Actual load-cell installation at an air-dome cable anchor" loading="lazy"></a><figcaption><strong>In the field.</strong> Load cells installed at the Damyang outer-dome anchor, 15 June 2026. <a href="/assets/images/field-load-cell.jpg" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure></div>

The diagram places load cells within the proposed multi-sensor system. The field photograph shows the load-cell installation used in the measurement session. The wider sensor network remains an integration plan; the experience highlighted here is the load-cell acquisition chain.

<span id="field" class="section-anchor"></span>

### Field measurement workflow

Load cells were installed at an outer-dome wire anchor at Damyang on **15 June 2026**. Readings passed from the load-cell indicator through a **USB–RS485 interface to a Raspberry Pi**, where the measurements were saved as CSV files.

### Practical work

- Examining cable-anchor geometry and sensor attachment arrangements.
- Working with load-cell mounting and measurement-range selection.
- Connecting the indicator, USB–RS485 interface and Raspberry Pi.
- Collecting and reviewing timestamped tension records from the outdoor session.

**Tools and methods:** load cells · cable-tension measurement · Raspberry Pi · USB–RS485 · CSV logging · field instrumentation

**Code availability:** Implementation code is not publicly available.


<section class="project-funding muted-funding" aria-labelledby="funding-heading">
<h2 id="funding-heading">Funding</h2>
<p>This work was supported by the Korea Institute of Planning and Evaluation for Technology in Food, Agriculture and Forestry (IPET) through the Agri-Food Export Enhancement Technology Development Program, funded by the Ministry of Agriculture, Food and Rural Affairs (MAFRA) (RS-2025-02313370).</p>
<p class="funding-project-title"><strong>Project title:</strong> <em>Development of Commercial-scale Vertical Farming System with Low Energy Consumption Based on Passive Air-dome Technology for Hot Climate in Middle East</em></p>
</section>
