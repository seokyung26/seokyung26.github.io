---
layout: project
title: "Speed-Dependent Control of Robotic Gripper for Tomato Harvesting to Minimise Compression-Induced Damage"
nav: research
permalink: /research/robotic-harvesting/
description: "Connecting gripping speed, contact mechanics and hyperspectral imaging to understand delayed tomato damage."
---

<section class="hero project-hero"><div class="hero-body"><div class="container is-max-desktop"><div class="columns is-centered"><div class="column has-text-centered"><p class="project-number">PROJECT 01</p><h1 class="title is-1 publication-title paper-long-title">Speed-Dependent Control of Robotic Gripper for Tomato Harvesting to Minimise Compression-Induced Damage</h1><p><em>Status: Biosystems Engineering</em> — <strong>Under review.</strong></p><div class="is-size-5 publication-authors"><a href="/">Seokyung Park</a>, Jisu Song, Hyeonjun Hwang,<br>Gunhui Park, Jaesung Park</div><div class="publication-links"><span class="link-block"><a class="button is-normal is-rounded is-dark" href="#methods">Materials &amp; Methods</a></span><span class="link-block"><a class="button is-normal is-rounded is-dark" href="#results">Results</a></span></div></div></div></div></div></section>


How does the rate of force application during gripping affect tomato tissue response? This research connects robotic manipulation, force sensing and hyperspectral imaging to examine compression damage that becomes apparent after handling. The work provides experimental evidence for considering loading rate alongside peak force when designing robotic gripping strategies.



<span id="methods" class="section-anchor"></span>

## Materials & Methods

The experiments used detached standard-sized and cherry tomatoes under controlled laboratory conditions to relate gripping mechanics to delayed tissue response.

<figure class="research-figure tomato-wide-figure"><a href="/assets/figures/tomato-overview.html" target="_blank" rel="noopener" aria-label="Open full-size research overview on a white background"><img src="/assets/images/tomato-research-overview-v2.png" alt="Research overview linking robotic compression at four loading rates with hyperspectral damage assessment and mechanical modelling" width="6602" height="3457" loading="lazy"></a><figcaption><strong>Research overview.</strong> Robotic compression, hyperspectral damage assessment and mechanical modelling. The loading-rate transition shown is specific to the tested conditions, not a universal safe threshold. <a href="/assets/figures/tomato-overview.html" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>

### Robotic platform and force acquisition & compression test

<figure class="research-figure tomato-wide-figure"><a href="/assets/figures/tomato-compression.html" target="_blank" rel="noopener" aria-label="Open full-size experimental setup and compression test on a white background"><img src="/assets/images/tomato-platform-compression.png" alt="myCobot robotic arm, adaptive gripper and force-sensing fixtures alongside tomato compression and force-time traces at four loading rates" width="3515" height="1478" loading="lazy"></a><figcaption>Experimental platform with real-time force sensing and representative compression traces for S3, S5, S7 and S9. <a href="/assets/figures/tomato-compression.html" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>

#### Robotic platform and force calibration

The platform combined a six-degree-of-freedom **myCobot 320 for Pi** arm with a **myCobot Pro Gripper**, controlled in Python. Custom 3D-printed PLA fixtures seated a 15 mm capacitive force sensor flush with each contact surface. A **4.5 N SingleTact sensor** captured low-force mechanical responses; a **45 N sensor** was used to measure loading rates and assess damage under higher gripping loads. Sensor data were acquired through I²C, and gripper-opening data were logged through MQTT.

Both sensors were calibrated with standard weights. Digital output was converted to force using the manuscript's calibration equation:

<div class="method-equation"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block" aria-label="Force equals digital output minus baseline output, divided by digital range, multiplied by full-scale rated load"><mi>F</mi><mo>=</mo><mfrac><mrow><mi mathvariant="normal">DO</mi><mo>−</mo><mi mathvariant="normal">BO</mi></mrow><mi mathvariant="normal">DR</mi></mfrac><mo>×</mo><mi mathvariant="normal">FSR</mi></math></div>

Here, **DO** is the measured digital output, **BO** is the baseline output, **DR** is the effective digital range, and **FSR** is the full-scale rated load in newtons. Calibration gave **R² = 0.988**.

#### Controlled compression

Detached standard-sized tomatoes (60–63 mm equatorial diameter) and cherry tomatoes (29–35 mm) were gripped symmetrically across their equators. The gripper closed from its fully open position to a size-group-specific target opening. Opening ratio **R** (%) was converted to distance **X** (mm):

<div class="method-equation"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block" aria-label="Opening distance equals minimum opening plus opening percentage divided by 100 times the opening range"><mi>X</mi><mo>=</mo><msub><mi>X</mi><mtext>min</mtext></msub><mo>+</mo><mfrac><mi>R</mi><mn>100</mn></mfrac><mo>×</mo><mo>(</mo><msub><mi>X</mi><mtext>max</mtext></msub><mo>−</mo><msub><mi>X</mi><mtext>min</mtext></msub><mo>)</mo></math></div>

The opening range was **0–90 mm**. Compression tests used **10 repetitions per speed condition and size group**. For mechanical analysis, force and opening measurements recorded at 0.1 s intervals were synchronised by interpolation to 0.01 s intervals. Contact onset was defined at **F > 0.2 N**; deformation was calculated as **δ = X₀ − X**, where X₀ is the opening at contact onset.

#### Physical loading rate

Loading rate describes how quickly force accumulates in the fruit, rather than the closing velocity of the gripper. For its measurement, the 45 N sensor recorded force at approximately **70 Hz**, from first contact through the force plateau and a **10 s hold**. An 11-sample centred rolling median suppressed spikes before central finite-difference differentiation:

<div class="method-equation"><math xmlns="http://www.w3.org/1998/Math/MathML" display="block" aria-label="Loading rate at sample i is approximated by the change in smoothed force across neighbouring samples divided by their time interval"><msub><mrow><mo>(</mo><mfrac><mrow><mi mathvariant="normal">d</mi><mi>F</mi></mrow><mrow><mi mathvariant="normal">d</mi><mi>t</mi></mrow></mfrac><mo>)</mo></mrow><mi>i</mi></msub><mo>≈</mo><mfrac><mrow><msub><mover><mi>F</mi><mo>~</mo></mover><mrow><mi>i</mi><mo>+</mo><mn>1</mn></mrow></msub><mo>−</mo><msub><mover><mi>F</mi><mo>~</mo></mover><mrow><mi>i</mi><mo>−</mo><mn>1</mn></mrow></msub></mrow><mrow><msub><mi>t</mi><mrow><mi>i</mi><mo>+</mo><mn>1</mn></mrow></msub><mo>−</mo><msub><mi>t</mi><mrow><mi>i</mi><mo>−</mo><mn>1</mn></mrow></msub></mrow></mfrac></math></div>

F̃ denotes the smoothed force. The reported loading rate was the **mean positive derivative** from first contact to 90% of the baseline-to-plateau force rise, after trimming the upper 1% of values. Three replicates were measured per setting; values deviating by more than 25% from the replicate median were excluded. This loading-rate measurement was separate from the 10-repetition compression tests.

<div class="method-table-wrap"><table class="method-table"><caption>Gripper settings and measured loading conditions</caption><thead><tr><th scope="col">Setting</th><th scope="col">Closing velocity<br>(mm/s)</th><th scope="col">Mean loading rate<br>(N/s)</th></tr></thead><tbody><tr><th scope="row">S3</th><td>10.5</td><td>6.9</td></tr><tr><th scope="row">S5</th><td>17.8</td><td>10.5</td></tr><tr><th scope="row">S7</th><td>25.1</td><td>13.1</td></tr><tr><th scope="row">S9</th><td>32.1</td><td>15.3</td></tr></tbody></table></div>

The resulting force–deformation curves were fitted with a four-parameter sigmoid model and an extended Yigit–Christoforou contact model. These mechanical measurements were then compared with delayed hyperspectral changes, rather than treated as direct measurements of tissue damage.

### Hyperspectral measurements

Hyperspectral images were collected **1 hour and 5 days after compression**. The Python processing pipeline combined RGB reconstruction, reference normalisation, Segment Anything Model segmentation and paired regions of interest. Comparing the contacted region with adjacent reference tissue on the same fruit helped account for differences between individual tomatoes. The same regions were used at both observation times.



<figure class="research-figure "><a href="/assets/images/tomato-figure-5.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Hyperspectral acquisition, segmentation and paired tissue regions at 1 hour and 5 days"><img src="/assets/images/tomato-figure-5.png" alt="Hyperspectral acquisition, segmentation and paired tissue regions at 1 hour and 5 days" loading="lazy"></a><figcaption><strong>Figure 5.</strong> Hyperspectral workflow and representative intensity maps at 1 hour, 5 days and their difference. Solid outlines identify contact regions; dashed outlines identify adjacent reference tissue. <a href="/assets/images/tomato-figure-5.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>

The same contact and reference regions were compared at **1 hour and 5 days after compression**. This paired design separates changes at the gripper contact from changes in nearby tissue on the same fruit. The difference-in-differences indicator, ΔD, captures delayed spectral change: **more negative values indicate greater reflectance loss at the contact region relative to the reference**. The images illustrate the measurement workflow; group comparisons are shown in Figure 8.

<span id="results" class="section-anchor"></span>

## Results

### Loading-rate response differs between tomato size classes

<p class="result-figure-label">Figure 7 · Spectral responses by tomato size class and loading rate</p>

<div class="spectra-grid">
<figure class="research-figure "><a href="/assets/images/tomato-figure-7a.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Figure 7a: standard tomato spectra at all loading rates"><img src="/assets/images/tomato-figure-7a.png" alt="Figure 7a: standard tomato spectra at all loading rates" loading="lazy"></a><figcaption><strong>7a · Standard-sized tomatoes.</strong> All loading rates; enlarged 700–850 nm region. <a href="/assets/images/tomato-figure-7a.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>
<figure class="research-figure "><a href="/assets/images/tomato-figure-7b.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Figure 7b: standard tomato spectra by loading rate"><img src="/assets/images/tomato-figure-7b.png" alt="Figure 7b: standard tomato spectra by loading rate" loading="lazy"></a><figcaption><strong>7b · Standard-sized tomatoes.</strong> Individual loading rates with standard-deviation bands. <a href="/assets/images/tomato-figure-7b.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>
<figure class="research-figure "><a href="/assets/images/tomato-figure-7c.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Figure 7c: cherry tomato spectra at all loading rates"><img src="/assets/images/tomato-figure-7c.png" alt="Figure 7c: cherry tomato spectra at all loading rates" loading="lazy"></a><figcaption><strong>7c · Cherry tomatoes.</strong> All loading rates; enlarged 700–850 nm region. <a href="/assets/images/tomato-figure-7c.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>
<figure class="research-figure "><a href="/assets/images/tomato-figure-7d.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Figure 7d: cherry tomato spectra by loading rate"><img src="/assets/images/tomato-figure-7d.png" alt="Figure 7d: cherry tomato spectra by loading rate" loading="lazy"></a><figcaption><strong>7d · Cherry tomatoes.</strong> Individual loading rates with standard-deviation bands. <a href="/assets/images/tomato-figure-7d.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>
</div>

Solid and dashed curves compare reference and contacted tissue over **400–1000 nm**. Standard-sized tomatoes show greater spectral separation as loading rate increases, particularly in the near-infrared region. Cherry tomatoes show a large separation across the tested rates, with less differentiation between loading conditions. The two size classes therefore did not respond to the same loading-rate changes in the same way.

### Higher loading rates increase delayed spectral loss in standard-sized tomatoes

<figure class="research-figure "><a href="/assets/images/tomato-figure-8.png" target="_blank" rel="noopener" aria-label="Open full-size figure: Delayed spectral change and low- versus high-loading-rate comparisons for standard and cherry tomatoes"><img src="/assets/images/tomato-figure-8.png" alt="Delayed spectral change and low- versus high-loading-rate comparisons for standard and cherry tomatoes" loading="lazy"></a><figcaption><strong>Figure 8.</strong> Standard-sized tomatoes (top) and cherry tomatoes (bottom). Low-rate group: 6.9 and 10.5 N/s; high-rate group: 13.1 and 15.3 N/s. <a href="/assets/images/tomato-figure-8.png" target="_blank" rel="noopener">View full size ↗</a></figcaption></figure>

For standard-sized tomatoes, the higher-loading-rate group showed a more negative delayed spectral indicator in the **800–850 nm band (t = 3.31, p = 0.0052)**. Cherry tomatoes showed no significant low–high group difference (**p ≈ 0.782**). The apparent transition between **10.5 and 13.1 N/s** supports evaluating loading-rate limits alongside peak force for this gripper and fruit condition; four tested rates do not establish a universal safe threshold.

The accompanying sigmoid and extended contact-model fits achieved **R² > 0.98** for the measured force–deformation curves. These values describe mechanical model fit, rather than the accuracy of damage prediction.

The study used one cultivar per size class and a single gripper configuration. Damage assessment relied on spectral indicators. Broader validation across cultivars, maturity stages and field conditions is needed before generalising the findings.

## Research output

**Speed-Dependent Control of Robotic Gripper for Tomato Harvesting to Minimise Compression-Induced Damage**  
Seokyung Park, Jisu Song, Hyeonjun Hwang, Gunhui Park and Jaesung Park.  
*Biosystems Engineering* — **Under review**.
