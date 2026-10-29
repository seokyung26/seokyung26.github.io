---
layout: project
title: "Load-cell sensing for air-supported domes"
nav: research
permalink: /research/airdome-sensing/
description: "Sensing-system design, sensor selection and field load-cell measurements for air-supported agricultural domes."
---

<section class="hero project-hero"><div class="hero-body"><div class="container is-max-desktop"><div class="columns is-centered"><div class="column has-text-centered"><p class="project-number">PROJECT 04</p><h1 class="title is-1 publication-title">Load-Cell Sensing<br>for Air-Supported Domes</h1><div class="is-size-5 publication-authors"><a href="/">Seokyung Park</a></div></div></div></div></div></section>


This work combines **sensing-system design and fabrication, sensor selection, and field data acquisition** for air-supported agricultural domes. Structural and ground characteristics informed the instrumentation layout, while structural-response and environmental measurements were considered together to support safety assessment. The system is intended for deployment in **Damyang, Republic of Korea**, and **Abu Dhabi, United Arab Emirates**, with initial load-cell measurements carried out at Damyang and a three-channel monitoring system installed there in October 2026.

## Deployment sites and installation plans

The domestic deployment is planned for the existing air-supported dome at **Damyang Air House**. The overseas deployment is planned for a future air-dome installation in an **agricultural district of Abu Dhabi**. The photographs below show the existing Korean dome and the agricultural setting for the planned UAE installation, respectively.

<div class="deployment-site-grid">
<figure class="deployment-site-figure"><a href="/assets/images/airdome-damyang-site.png" target="_blank" rel="noopener"><img src="/assets/images/airdome-damyang-site.png" alt="Existing white air-supported agricultural dome at Damyang Air House, Republic of Korea" loading="lazy" width="643" height="352"></a><figcaption><strong>Damyang Air House, Republic of Korea.</strong> Exterior of the existing air-supported dome selected for the planned sensing-system deployment. Initial load-cell installation and cable-tension measurements at this site provide the practical basis for further sensor integration.</figcaption></figure>
<figure class="deployment-site-figure deployment-site-abudhabi"><a class="abudhabi-photo-pair" href="/assets/images/airdome-abudhabi-planned-site.png" target="_blank" rel="noopener"><img src="/assets/images/airdome-abudhabi-planned-site.png" alt="Existing greenhouse facilities in an agricultural district of Abu Dhabi associated with a planned air-dome installation" loading="lazy" width="443" height="361"><img src="/assets/images/airdome-abudhabi-greenhouse-interior.png" alt="Interior of an existing greenhouse in Abu Dhabi, showing crop rows, shade screens and irrigation lines" loading="lazy" width="600" height="418"></a><figcaption><strong>Planned air-dome site, Abu Dhabi, United Arab Emirates.</strong> Exterior (left) and interior (right) of existing greenhouse facilities in the agricultural district identified for a future air-dome installation. The interior view shows crop rows, shade screens and irrigation lines. These photographs document the local agricultural setting; the air dome and its sensing system are planned for installation.</figcaption></figure>
</div>

The sites shown are intended for full sensing-system deployment; the field measurements below document the initial load-cell implementation at Damyang.

<span id="system" class="section-anchor"></span>

## System overview & field measurement

The sensing system was **designed and fabricated** using foundation-member and ground investigations to define **sensor locations and measurement points**. Load cells, accelerometer–gyroscope units, strain gauges and environmental monitoring options were evaluated to capture structural response alongside **wind speed, temperature and humidity** for safety assessment. Equipment selection balanced **measurement range, resolution, control-system compatibility and cost**.

The system design supports **long-term, multi-greenhouse data collection**, with remote control and data transmission for central-server management. The layout below shows sensor placement, wiring, power supply and acquisition nodes; the field photograph documents the initial load-cell implementation at Damyang.

<div class="research-split sensing-overview"><figure class="research-figure "><a href="/assets/images/airdome-system-figure.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Complete air-dome monitoring diagram including sensor locations, wiring, power supply and acquisition nodes"><img src="/assets/images/airdome-system-figure.png" alt="Complete air-dome monitoring diagram including sensor locations, wiring, power supply and acquisition nodes" loading="lazy"></a><figcaption><strong>Monitoring system concept.</strong> Original sensor-placement, wiring and power-supply figure prepared for the air-dome project. <a href="/assets/images/airdome-system-figure.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure><figure class="research-figure "><a href="/assets/images/field-load-cell.jpg" target="_blank" rel="noopener" aria-label="Open full-size figure: Actual load-cell installation at an air-dome cable anchor"><img src="/assets/images/field-load-cell.jpg" alt="Actual load-cell installation at an air-dome cable anchor" loading="lazy"></a><figcaption><strong>In the field.</strong> Load cells installed at the Damyang outer-dome anchor, 15 June 2026. <a href="/assets/images/field-load-cell.jpg" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure></div>



<span id="field" class="section-anchor"></span>

### Field measurement workflow

Load cells were installed at an outer-dome wire anchor at Damyang on **15 June 2026**. Readings passed from the load-cell indicator through a **USB–RS485 interface to a Raspberry Pi**, where the measurements were saved as CSV files.

### Practical work

- Examining cable-anchor geometry and sensor attachment arrangements.
- Working with load-cell mounting and measurement-range selection.
- Connecting the indicator, USB–RS485 interface and Raspberry Pi.
- Collecting and reviewing timestamped tension records from the outdoor session.

**Tools and methods:** load cells · cable-tension measurement · Raspberry Pi · USB–RS485 · CSV logging · field instrumentation



<span id="monitoring" class="section-anchor"></span>

## Three-channel tension monitoring system (October 2026)

Building on the June trial, a **three-channel cable-tension monitoring system** was assembled and installed at the Damyang air-dome farm on **26 October 2026**. Each channel pairs an S-type 2 t load cell with shackles and a TLKWF indicator. The indicators share a 24 VDC supply and send readings over RS-485 through USB converters to a **Raspberry Pi 4 data logger**.

<figure class="research-figure "><a href="/assets/images/airdome-daq-diagram-202610.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Data acquisition system: three S-type load cells, TLKWF indicators, 24 VDC power supply, USB–RS485 converters and Raspberry Pi 4 data logger"><img src="/assets/images/airdome-daq-diagram-202610.png" alt="Data acquisition system: three S-type load cells, TLKWF indicators, 24 VDC power supply, USB–RS485 converters and Raspberry Pi 4 data logger" loading="lazy"></a><figcaption><strong>Data acquisition system.</strong> Three load-cell channels (LC-1 to LC-3) connect to TLKWF indicators (#2T-1 to #2T-3), which share a 24 VDC supply and communicate with the Raspberry Pi 4 through USB–RS485 converters. <a href="/assets/images/airdome-daq-diagram-202610.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>

<div class="research-split"><figure class="research-figure "><a href="/assets/images/airdome-daq-assembly-202610.jpg" target="_blank" rel="noopener" aria-label="Open full-size figure: Assembled indicators, converters, Raspberry Pi and three load cells labelled 2T-1, 2T-2 and 2T-3 before installation"><img src="/assets/images/airdome-daq-assembly-202610.jpg" alt="Assembled indicators, converters, Raspberry Pi and three load cells labelled 2T-1, 2T-2 and 2T-3 before installation" loading="lazy"></a><figcaption><strong>System assembly.</strong> Indicators, converters, Raspberry Pi and the three 2 t load cells (2T-1 to 2T-3) before field installation. <a href="/assets/images/airdome-daq-assembly-202610.jpg" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure><div class="method-table-wrap"><table class="method-table"><caption><strong>Load-cell channel specifications</strong></caption><thead><tr><th scope="col">Item</th><th scope="col">Value</th></tr></thead><tbody>
<tr><th scope="row">Rated capacity</th><td>2,000 kgf (19.6 kN), 2 t</td></tr>
<tr><th scope="row">Resolution</th><td>0.01 kgf (0.1 N)</td></tr>
<tr><th scope="row">Sampling</th><td>1 Hz instantaneous values (KST timestamps)</td></tr>
<tr><th scope="row">Storage</th><td>One CSV file per channel per day; logging starts automatically at power-on</td></tr>
<tr><th scope="row">No-load zero</th><td>+0.05 / 0.00 / +0.01 kgf; about ±0.4 kgf (4.2 N) variation over 8 h</td></tr>
</tbody></table></div></div>

### Field installation at Damyang

Two load cells (2T-1 and 2T-2) were installed on one side of the dome and one (2T-3) on the opposite side, with the single-board computer and power supply housed at the front entrance.

<figure class="research-figure "><a href="/assets/images/airdome-loadcell-installation-202610.jpg" target="_blank" rel="noopener" aria-label="Open full-size figure: Installed tension load cell, indicator with waterproof plug, SBC enclosure, installation positions of 2T-1 and 2T-2, plan view of sensor locations and close-ups of 2T-1 and 2T-3"><img src="/assets/images/airdome-loadcell-installation-202610.jpg" alt="Installed tension load cell, indicator with waterproof plug, SBC enclosure, installation positions of 2T-1 and 2T-2, plan view of sensor locations and close-ups of 2T-1 and 2T-3" loading="lazy"></a><figcaption><strong>Installation, 26 October 2026.</strong> (a) Tension load cell; (b) indicator and waterproof plug; (c) SBC enclosure; (d) positions of 2T-1 and 2T-2. The plan view (top right) marks the external load cells and the SBC and power supply; close-ups of 2T-1 and 2T-3 are shown below it. <a href="/assets/images/airdome-loadcell-installation-202610.jpg" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>

### Real-time tension monitoring

A browser-based dashboard running on the Raspberry Pi displays live cable tension for all three channels while logging continues in the background. Each channel card shows the current reading in kgf and t, the change from a baseline value, and sample and error counts. Below the cards, the dashboard plots the **last five minutes (1 s averages)** and the **daily trend (1 min averages)** for any recorded session and date. The dashboard is accessed remotely over a private network.

<figure class="research-figure "><a href="/assets/images/airdome-loadcell-monitor-en-202610.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Real-time load-cell tension dashboard with three channel cards, a five-minute trend plot and a daily trend plot"><img src="/assets/images/airdome-loadcell-monitor-en-202610.png" alt="Real-time load-cell tension dashboard with three channel cards, a five-minute trend plot and a daily trend plot" loading="lazy"></a><figcaption><strong>Real-time monitoring dashboard, 26 October 2026.</strong> Interface labels have been translated into English for this page. <a href="/assets/images/airdome-loadcell-monitor-en-202610.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>

<section class="project-funding muted-funding" aria-labelledby="funding-heading">
<h2 id="funding-heading">Funding</h2>
<p>This work was supported by the Korea Institute of Planning and Evaluation for Technology in Food, Agriculture and Forestry (IPET) through the Agri-Food Export Enhancement Technology Development Program, funded by the Ministry of Agriculture, Food and Rural Affairs (MAFRA) (RS-2025-02313370).</p>
<p class="funding-project-title"><strong>Project title:</strong> <em>Development of Commercial-scale Vertical Farming System with Low Energy Consumption Based on Passive Air-dome Technology for Hot Climate in Middle East</em></p>
</section>
