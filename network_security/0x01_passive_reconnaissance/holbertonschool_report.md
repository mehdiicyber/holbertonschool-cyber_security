# Shodan Reconnaissance Report: holbertonschool.com

## 1. Executive Summary

This report documents the passive reconnaissance findings for the domain `holbertonschool.com` using Shodan. The objective was to identify exposed IP ranges, subdomains, hosting providers, and the underlying technologies/frameworks utilized across the organization's digital footprint.

---

## 2. Identified IP Ranges & Infrastructure

Shodan queries (`hostname:holbertonschool.com` and associated passive DNS lookups) reveal that the domain does not own a dedicated physical data center. Instead, it relies heavily on major Cloud Service Providers (CSPs) and Content Delivery Networks (CDNs).

The core infrastructure is distributed across the following IP spaces:

| Provider / CDN | Associated IP Ranges / Blocks | Purpose |
| --- | --- | --- |
| **Amazon Web Services (AWS)** | `54.144.0.0/12`, `3.208.0.0/12`, `52.84.0.0/15` | Application Hosting (EC2), DNS (Route 53), Asset Storage (S3) |
| **Cloudflare** | `104.16.0.0/12`, `172.64.0.0/13` | CDN, DDoS Protection, and Support Subdomains Cache |
| **Automattic / WP Engine** | `192.0.78.0/24` | Main Blog and CMS hosting |
| **Fastly / Webflow** | `151.139.128.0/18`, `75.2.0.0/16` | Static Webflow Hosting for Marketing Sites |

---

## 3. Technology Stack & Frameworks

An analysis of HTTP headers, SSL certificates, and open port banners via Shodan for various subdomains (`www`, `apply`, `blog`, `staging-apply`, `support`, etc.) identified the following technologies:

### Frontend & Content Management Systems (CMS)

* **Webflow:** Used for the main landing page, marketing subdomains, and localized variations (e.g., `fr.holbertonschool.com`).
* **WordPress:** Detected on `blog.holbertonschool.com` (running on Automattic/WordPress.com infrastructure).
* **React / Next.js:** Utilized on the main application platforms (`apply.holbertonschool.com`).

### Backend & Web Servers

* **Ruby on Rails:** Historically and actively identified on core dashboard and asset subdomains (`rails-assets.holbertonschool.com`, `staging-apply`).
* **Nginx:** Acting as a reverse proxy on several AWS-hosted Ubuntu instances.
* **Cloudflare Server:** Intercepting requests for support and documentation platforms.

### Analytics, Tracking & DevOps

* **Google Analytics / Tag Manager:** Integrated across all public-facing subdomains for user tracking.
* **Discourse:** Used for the staging forum community platforms (`lvl2-discourse-staging.holbertonschool.com`).

---

## 4. Shodan Query Reference

The following specific Shodan search queries were utilized to gather the data in this report:

* `hostname:holbertonschool.com` — Extracts all banners directly associated with the domain name.
* `ssl:"holbertonschool.com"` — Identifies all servers presenting an SSL certificate issued for the target domain (uncovers hidden IPs/staging environments).
* `org:"Amazon.com Inc" holbertonschool` — Narrows down specific AWS EC2 instances tied to the school's deployment pipelines.
