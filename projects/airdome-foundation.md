---
layout: project
title: "Analysis of uplift resistance characteristics of expandable piles in sandy soil with varying wing inclination and dimensions"
nav: research
permalink: /research/airdome-foundation/
description: "Numerical analysis of expandable X-Pile foundations: effects of wing dimensions and inclination on uplift resistance in sandy soil."
---

<section class="hero project-hero"><div class="hero-body"><div class="container is-max-desktop"><div class="columns is-centered"><div class="column has-text-centered"><p class="project-number">PROJECT 03</p><h1 class="title is-1 publication-title xpile-paper-title">Analysis of uplift resistance characteristics of expandable piles in sandy soil with varying wing inclination and dimensions</h1><div class="is-size-5 publication-authors"><a href="/">Seokyung Park</a>, Jaesung Park, Junbong Jang,<br>Daniel Park, Sein Kwon, Minjoo Kim, Gaeun Choi</div><p class="project-status">First-author manuscript · Final preparation before submission</p></div></div></div></div></section>


Air-supported domes transfer membrane and cable tension into their foundations. This study investigates how the dimensions and inclination of expandable pile wings affect uplift resistance in sandy soil, with a focus on the mechanisms of pile–soil load transfer.

<span id="methods" class="section-anchor"></span>

## Numerical model and study design

<div class="research-split geometry-overview"><figure class="research-figure "><a href="/assets/images/xpile-geometry.png" target="_blank" rel="noopener" aria-label="Open full-size figure: X-Pile geometry and studied dimensions"><img src="/assets/images/xpile-geometry.png" alt="X-Pile geometry and studied dimensions" loading="lazy"></a><figcaption><strong>Figure 1.</strong> Geometric definitions and analysis configurations. <a href="/assets/images/xpile-geometry.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure><div class="geometry-table"><div class="table-scroll" tabindex="0" role="region" aria-label="Table 1: X-Pile analysis cases"><table><caption>Table 1 · Geometric parameters and numerical analysis cases</caption><thead><tr><th scope="col">Case</th><th scope="col">θ (°)</th><th scope="col">L (mm)</th><th scope="col">W (mm)</th><th scope="col">Dₑ (mm)</th><th scope="col">H/Dₑ</th><th scope="col">Dₑ/D</th><th scope="col">uₘₐₓ (mm)</th></tr></thead><tbody><tr><th scope="row">Base</th><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>—</td><td>5 / 7</td></tr><tr><th scope="row">L-170</th><td>90</td><td>170</td><td>113</td><td>340.0</td><td>2.21</td><td>2.98</td><td>7</td></tr><tr><th scope="row">L-370</th><td>90</td><td>370</td><td>313</td><td>740.0</td><td>1.01</td><td>6.49</td><td>7</td></tr><tr><th scope="row">L-625</th><td>90</td><td>625</td><td>568</td><td>1250.0</td><td>0.60</td><td>10.96</td><td>7</td></tr><tr><th scope="row">A-90</th><td>90</td><td>370</td><td>313</td><td>740.0</td><td>1.01</td><td>6.49</td><td>5</td></tr><tr><th scope="row">A-85</th><td>85</td><td>370</td><td>313</td><td>737.6</td><td>1.02</td><td>6.47</td><td>5</td></tr><tr><th scope="row">A-80</th><td>80</td><td>370</td><td>313</td><td>730.5</td><td>1.03</td><td>6.41</td><td>5</td></tr><tr><th scope="row">A-75</th><td>75</td><td>370</td><td>313</td><td>718.7</td><td>1.04</td><td>6.30</td><td>5</td></tr><tr><th scope="row">A-70</th><td>70</td><td>370</td><td>313</td><td>702.2</td><td>1.07</td><td>6.16</td><td>5</td></tr></tbody></table></div><p class="figure-note">Common parameters: D = 114 mm; H = 750 mm; H/D = 6.58; four wings; B = 48 mm; h = 31 mm; shaft wall, toe plate and wing thickness = 4.5 mm. W = L − D/2. Dₑ denotes effective wing diameter; uₘₐₓ is maximum applied uplift displacement.</p></div></div>

The X-Pile consists of a steel pipe shaft with four expandable wings near its tip. Three-dimensional quarter-symmetric models in Abaqus/Standard represent pile–soil interaction under calcareous-sand conditions representative of Abu Dhabi. The model uses Mohr–Coulomb soil, a rigid pile idealization, hard normal contact and Coulomb friction.

The analysis uses a fixed embedment depth of **750 mm** and a shaft diameter of **114 mm**. Two parameter series examine:

- **Wing length:** 170, 370 and 625 mm at a 90° shaft–wing angle.
- **Wing inclination:** 90°, 85°, 80°, 75° and 70° at a fixed 370 mm wing length.

Displacement-controlled uplift simulations provide resistance–displacement curves, wing and shaft resistance components, contact forces and soil plastic-zone distributions.

<span id="results" class="section-anchor"></span>

## Results

### 날개 길이별 인발 저항력 및 지반 소성영역 분석

<div class="uplift-results-grid expanded-plastic-zones"><figure class="research-figure"><a href="/assets/images/xpile-figure-4.png" target="_blank" rel="noopener"><img src="/assets/images/xpile-figure-4.png" alt="Simulated uplift resistance versus displacement for three X-Pile wing lengths and the unwinged Base pile" loading="lazy"></a><figcaption><strong>Figure 4.</strong> Uplift resistance–displacement curves for the Base pile and X-Piles with different wing lengths. <a href="/assets/images/xpile-figure-4.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure><figure class="research-figure"><a href="/assets/images/soil-plastic-zones.png" target="_blank" rel="noopener"><img src="/assets/images/soil-plastic-zones.png" alt="Soil plastic zones for the Base pile and three X-Pile wing lengths" loading="lazy"></a><figcaption><strong>Figure 5.</strong> Equivalent plastic strain and PEEQ = 0.01 boundaries at 7 mm uplift. <a href="/assets/images/soil-plastic-zones.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure></div>

At **7 mm uplift**, increasing wing length from **170 to 370 and 625 mm** increased the simulated resistance from **12.27 to 20.54 and 32.59 kN**, respectively. Wings provided **89.8–98.4%** of the total resistance. The longer wings increased total resistance, although resistance per equivalent projected wing area decreased with wing size.



The unwinged Base pile developed almost no soil plasticity. Winged piles mobilised an upward and outward plastic zone. For L-170 and L-370, the zones extended close to the ground surface; L-625 produced a broader zone around the wing that terminated approximately **190 mm below the surface**. Increasing wing size therefore changed both the resistance and the shape of the mobilised soil region.

### 날개 각도별 인발저항력 및 지반 소성영역 분석

<div class="uplift-results-grid expanded-plastic-zones"><figure class="research-figure"><a href="/assets/images/xpile-figure-8.png" target="_blank" rel="noopener"><img src="/assets/images/xpile-figure-8.png" alt="Simulated uplift resistance versus displacement for shaft–wing angles from 90 to 70 degrees" loading="lazy"></a><figcaption><strong>Figure 8.</strong> Uplift resistance–displacement curves for different wing inclination angles at a fixed wing length of 370 mm. <a href="/assets/images/xpile-figure-8.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure><figure class="research-figure"><a href="/assets/images/xpile-figure-9.png" target="_blank" rel="noopener"><img src="/assets/images/xpile-figure-9.png" alt="Soil plastic strain contours and plastic-zone boundaries for shaft–wing angles from 90 to 70 degrees" loading="lazy"></a><figcaption><strong>Figure 9.</strong> Plastic-zone development at 5 mm uplift: (a)–(e) PEEQ contours; (f) superimposed PEEQ = 0.01 boundaries; (g) plastic-zone reach and ground-heave radius. <a href="/assets/images/xpile-figure-9.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure></div>

At **5 mm uplift**, resistance decreased from **19.14 kN at 90° to 12.27 kN at 70°**, a **35.9% reduction**. The decline was nonlinear, with the largest relative drop occurring between 90° and 85°. The wing-surface normal resultant fell from **17.68 to 9.80 kN**; the greater tangential contribution did not compensate for the loss of normal bearing resistance.



The plastic zone followed the inclined wing surface, and the upward wedge generally contracted as the angle decreased. Vertical reach remained below the horizontal-wing case without a monotonic trend. The ground-heave radius decreased from **845 mm at 90° to 671 mm at 70°**, with a minimum of **655 mm at 75°**. These changes accompany the reduction in simulated uplift resistance.

**Tools and methods:** Abaqus/CAE · Abaqus/Standard · finite-element analysis · pile–soil contact · parametric modelling

**Code availability:** Implementation code is not publicly available.


## Funding

This work was supported by the Korea Institute of Planning and Evaluation for Technology in Food, Agriculture and Forestry (IPET) through the Agri-Food Export Enhancement Technology Development Program, funded by the Ministry of Agriculture, Food and Rural Affairs (MAFRA) (RS-2025-02313370).

**Project title:** *Development of Commercial-scale Vertical Farming System with Low Energy Consumption Based on Passive Air-dome Technology for Hot Climate in Middle East*
