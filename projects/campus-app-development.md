---
layout: project
title: "Campus mobility, ride-sharing and dining app development"
nav: research
permalink: /research/campus-app-development/
description: "Cross-platform mobile app development for campus transport planning, taxi ride-sharing, real-time chat, fare settlement and dining information."
---

<section class="hero project-hero"><div class="hero-body"><div class="container is-max-desktop"><div class="columns is-centered"><div class="column has-text-centered"><p class="project-number">PROJECT 05</p><h1 class="title is-1 publication-title">Campus Mobility, Ride-Sharing<br>and Dining App Development</h1><div class="is-size-5 publication-authors"><a href="/">Seokyung Park</a></div><p class="project-affiliation">Cross-platform mobile application · Flutter and Supabase</p></div></div></div></div></section>

I designed and developed a **cross-platform mobile application for students at Pusan National University's Miryang Campus**. The app, released under the name *Sangjadae Friends*, brings together daily transport and campus-life tasks that were previously split across timetables, notices and separate messaging channels.

The work covered **mobile interface design, application architecture, backend integration and data collection**. The Flutter client uses Riverpod, GoRouter and Freezed, while Supabase provides PostgreSQL, authentication, real-time messaging, storage and Edge Functions. Python crawlers collect and structure campus dining information.

<div class="campus-app-gallery">
<figure><a href="/assets/images/campus-app/home.png" target="_blank" rel="noopener"><img src="/assets/images/campus-app/home.png" alt="Home screen of the campus mobility and community app" loading="lazy"></a><figcaption>Home screen and service entry points</figcaption></figure>
<figure><a href="/assets/images/campus-app/transfer-planner.png" target="_blank" rel="noopener"><img src="/assets/images/campus-app/transfer-planner.png" alt="Timeline matching train arrivals with campus bus departures" loading="lazy"></a><figcaption>Train-to-campus-bus transfer planning</figcaption></figure>
<figure><a href="/assets/images/campus-app/taxi-sharing.png" target="_blank" rel="noopener"><img src="/assets/images/campus-app/taxi-sharing.png" alt="Taxi ride-sharing recruitment screen" loading="lazy"></a><figcaption>Real-time taxi ride-sharing</figcaption></figure>
<figure><a href="/assets/images/campus-app/dining-menu.png" target="_blank" rel="noopener"><img src="/assets/images/campus-app/dining-menu.png" alt="Campus dining menu screen" loading="lazy"></a><figcaption>Campus dining information</figcaption></figure>
</div>

## What I built

<div class="campus-app-feature-grid">
<article><h3>Integrated transport planning</h3><p>Combined train schedules with campus bus times in a single timeline so students can compare transfer options and expected waiting time.</p></article>
<article><h3>Real-time taxi ride-sharing</h3><p>Implemented ride creation and participation flows, capacity controls, role-based actions, live chat and fare-settlement information for trips between Miryang Station and campus.</p></article>
<article><h3>Campus information</h3><p>Added bus timetables and structured dining menus for dormitory, student and staff restaurants, supported by automated data collection.</p></article>
<article><h3>Full-stack mobile architecture</h3><p>Built the Flutter application and connected authentication, PostgreSQL data, real-time updates, storage and server-side functions through Supabase.</p></article>
</div>

## Engineering scope

- **Frontend:** Flutter, Riverpod, GoRouter and Freezed for cross-platform UI, navigation and state management.
- **Backend:** Supabase PostgreSQL, Auth, Realtime, Storage and Edge Functions.
- **Data pipeline:** Python, Playwright and BeautifulSoup for collecting campus information.
- **Product concerns:** input validation, loading and retry states, access control, concurrency-safe ride capacity, sensitive-data masking and responsive layouts.

This project gave me practical experience taking a student-facing mobile service from feature requirements and screen design through **full-stack implementation and device-level testing**.

<div class="article-end"><a href="/">← Back to home</a><a href="#top">Back to top ↑</a></div>
