---
layout: project
title: "Damage-aware robotic gripping for tomato harvesting"
nav: research
permalink: /research/robotic-harvesting/
description: "Connecting gripping speed, contact mechanics and hyperspectral imaging to understand delayed tomato damage."
---

<section class="hero project-hero"><div class="hero-body"><div class="container is-max-desktop"><div class="columns is-centered"><div class="column has-text-centered"><p class="project-number">PROJECT 01</p><h1 class="title is-1 publication-title">Damage-aware robotic gripping<br>for tomato harvesting</h1><div class="is-size-5 publication-authors"><a href="/">Seokyung Park</a>, Jisu Song, Hyeonjun Hwang,<br>Gunhui Park, Jaesung Park</div><p class="project-affiliation">Pusan National University</p><p class="project-status">Biosystems Engineering · Under review, second revision</p><div class="publication-links"><span class="link-block"><a class="button is-normal is-rounded is-dark" href="#methods">Materials &amp; Methods</a></span><span class="link-block"><a class="button is-normal is-rounded is-dark" href="#results">Results</a></span></div></div></div></div></div></section>


How does the rate of force application during gripping affect tomato tissue response? This research connects robotic manipulation, force sensing and hyperspectral imaging to examine compression damage that becomes apparent after handling. The work provides experimental evidence for considering loading rate alongside peak force when designing robotic gripping strategies.



<span id="methods" class="section-anchor"></span>

## Materials & Methods

The experiments used detached standard-sized and cherry tomatoes under controlled laboratory conditions to relate gripping mechanics to delayed tissue response.

<figure class="research-figure "><a href="/assets/images/tomato-research-overview.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Overview of robotic compression, mechanical modelling and hyperspectral damage assessment"><img src="/assets/images/tomato-research-overview.png" alt="Overview of robotic compression, mechanical modelling and hyperspectral damage assessment" loading="lazy"></a><figcaption><strong>Research overview · Figure 1.</strong> Connecting gripper loading rate, fruit mechanics and delayed spectral changes. Selected figures from an unpublished manuscript under review. <a href="/assets/images/tomato-research-overview.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>

### Robotic platform and force acquisition

The platform combined a myCobot 320 for Pi robotic arm with an adaptive two-finger gripper. Capacitive force sensors measured contact loads through custom, 3D-printed PLA fixtures. Python software controlled the target gripper opening and supported measurement processing, with I²C sensor communication and MQTT logging.

![Experimental robotic arm, adaptive gripper and force-sensing hardware](/assets/images/robotic-gripping-system.png)
*Experimental robotic platform for controlled tomato compression and contact-force measurement.*

Four gripper settings produced mean physical loading rates of **6.9, 10.5, 13.1 and 15.3 N/s**. Force–deformation curves were analysed with a four-parameter sigmoid model and an extended Yigit–Christoforou contact model to characterise mechanical response.

### Hyperspectral measurements

Hyperspectral images were collected **1 hour and 5 days after compression**. The Python processing pipeline combined RGB reconstruction, reference normalisation, Segment Anything Model segmentation and paired regions of interest. Comparing the contacted region with adjacent reference tissue on the same fruit helped account for differences between individual tomatoes. The same regions were used at both observation times.



<span id="results" class="section-anchor"></span>

## Results

### Figure 5 · Tracking delayed tissue response

<figure class="research-figure "><a href="/assets/images/tomato-figure-5.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Hyperspectral acquisition, segmentation and paired tissue regions at 1 hour and 5 days"><img src="/assets/images/tomato-figure-5.png" alt="Hyperspectral acquisition, segmentation and paired tissue regions at 1 hour and 5 days" loading="lazy"></a><figcaption><strong>Figure 5.</strong> Hyperspectral workflow and representative intensity maps at 1 hour, 5 days and their difference. Solid outlines identify contact regions; dashed outlines identify adjacent reference tissue. <a href="/assets/images/tomato-figure-5.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>

The same contact and reference regions were compared at **1 hour and 5 days after compression**. This paired design separates changes at the gripper contact from changes in nearby tissue on the same fruit. The difference-in-differences indicator, ΔD, captures delayed spectral change: **more negative values indicate greater reflectance loss at the contact region relative to the reference**. The images illustrate the measurement workflow; group comparisons are shown in Figure 8.

### Figure 7 · Loading-rate response differs between tomato size classes

<div class="spectra-grid">
<figure class="research-figure "><a href="/assets/images/tomato-figure-7a.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Figure 7a: standard tomato spectra at all loading rates"><img src="/assets/images/tomato-figure-7a.png" alt="Figure 7a: standard tomato spectra at all loading rates" loading="lazy"></a><figcaption><strong>7a · Standard-sized tomatoes.</strong> All loading rates; enlarged 700–850 nm region. <a href="/assets/images/tomato-figure-7a.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>
<figure class="research-figure "><a href="/assets/images/tomato-figure-7b.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Figure 7b: standard tomato spectra by loading rate"><img src="/assets/images/tomato-figure-7b.png" alt="Figure 7b: standard tomato spectra by loading rate" loading="lazy"></a><figcaption><strong>7b · Standard-sized tomatoes.</strong> Individual loading rates with standard-deviation bands. <a href="/assets/images/tomato-figure-7b.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>
<figure class="research-figure "><a href="/assets/images/tomato-figure-7c.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Figure 7c: cherry tomato spectra at all loading rates"><img src="/assets/images/tomato-figure-7c.png" alt="Figure 7c: cherry tomato spectra at all loading rates" loading="lazy"></a><figcaption><strong>7c · Cherry tomatoes.</strong> All loading rates; enlarged 700–850 nm region. <a href="/assets/images/tomato-figure-7c.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>
<figure class="research-figure "><a href="/assets/images/tomato-figure-7d.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Figure 7d: cherry tomato spectra by loading rate"><img src="/assets/images/tomato-figure-7d.png" alt="Figure 7d: cherry tomato spectra by loading rate" loading="lazy"></a><figcaption><strong>7d · Cherry tomatoes.</strong> Individual loading rates with standard-deviation bands. <a href="/assets/images/tomato-figure-7d.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>
</div>

Solid and dashed curves compare reference and contacted tissue over **400–1000 nm**. Standard-sized tomatoes show greater spectral separation as loading rate increases, particularly in the near-infrared region. Cherry tomatoes show a large separation across the tested rates, with less differentiation between loading conditions. The two size classes therefore did not respond to the same loading-rate changes in the same way.

### Figure 8 · Quantifying the low- and high-rate comparison

<figure class="research-figure "><a href="/assets/images/tomato-figure-8.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Delayed spectral change and low- versus high-loading-rate comparisons for standard and cherry tomatoes"><img src="/assets/images/tomato-figure-8.png" alt="Delayed spectral change and low- versus high-loading-rate comparisons for standard and cherry tomatoes" loading="lazy"></a><figcaption><strong>Figure 8.</strong> Standard-sized tomatoes (top) and cherry tomatoes (bottom). Low-rate group: 6.9 and 10.5 N/s; high-rate group: 13.1 and 15.3 N/s. <a href="/assets/images/tomato-figure-8.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>

For standard-sized tomatoes, the higher-loading-rate group showed a more negative delayed spectral indicator in the **800–850 nm band (t = 3.31, p = 0.0052)**. Cherry tomatoes showed no significant low–high group difference (**p ≈ 0.782**). The apparent transition between **10.5 and 13.1 N/s** supports evaluating loading-rate limits alongside peak force for this gripper and fruit condition; four tested rates do not establish a universal safe threshold.

The accompanying sigmoid and extended contact-model fits achieved **R² > 0.98** for the measured force–deformation curves. These values describe mechanical model fit, rather than the accuracy of damage prediction.

The study used one cultivar per size class and a single gripper configuration. Damage assessment relied on spectral indicators. Broader validation across cultivars, maturity stages and field conditions is needed before generalising the findings.

## My contribution

I co-led conceptualisation and contributed to the methodology, compression experiments, force-sensor acquisition and formal analysis. I was responsible for **software development, validation, data curation and visualisation**, and co-wrote the original manuscript. These responsibilities are documented in the manuscript’s author contribution statement.

## Research output

**Speed-Dependent Control of Robotic Gripper for Tomato Harvesting to Minimise Compression-Induced Damage**  
Seokyung Park, Jisu Song, Hyeonjun Hwang, Gunhui Park and Jaesung Park.  
*Biosystems Engineering* — **Under review, second revision**.

## Code availability

Implementation code is not publicly available.
