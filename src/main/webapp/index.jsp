<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop · friendly e‑commerce</title>
  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <style>
    /* ---------- DESIGN TOKENS (friendly, soft, accessible) ---------- */
    :root {
      --bg: #f9f7f4;
      --bg-card: #ffffff;
      --primary: #1e2b2f;
      --primary-soft: #2f4046;
      --accent: #e07a5f;
      --accent-soft: #fbe9e3;
      --accent-dark: #b85c42;
      --muted: #5e6f76;
      --muted-light: #8b9aa3;
      --surface: #f0efed;
      --success: #2e7d6e;
      --warning: #d99e3b;
      --radius: 24px;
      --radius-sm: 16px;
      --shadow-sm: 0 6px 18px rgba(0, 0, 0, 0.03), 0 2px 6px rgba(0, 0, 0, 0.02);
      --shadow: 0 12px 30px rgba(0, 0, 0, 0.05), 0 4px 10px rgba(0, 0, 0, 0.02);
      --shadow-hover: 0 24px 44px rgba(0, 0, 0, 0.08);
      --transition: 0.2s ease;
      --container: 1260px;
      --line: 1px solid rgba(30, 43, 47, 0.06);
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    a { color: inherit; text-decoration: none; }
    img { display: block; max-width: 100%; }
    button { cursor: pointer; font-family: inherit; border: none; background: none; color: inherit; }
    input { font-family: inherit; }

    .container {
      width: 100%;
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 28px;
    }

    /* ---------- UTILITIES ---------- */
    .sr-only {
      position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px;
      overflow: hidden; clip: rect(0,0,0,0); border: 0;
    }
    .muted { color: var(--muted); }

    /* ---------- BUTTONS (soft, large, friendly) ---------- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 16px;
      transition: var(--transition);
      border: 2px solid transparent;
      letter-spacing: -0.01em;
      white-space: nowrap;
    }
    .btn-primary {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      box-shadow: 0 8px 18px rgba(224, 122, 95, 0.25);
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-3px);
      box-shadow: 0 16px 28px rgba(224, 122, 95, 0.35);
    }
    .btn-secondary {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
      box-shadow: 0 8px 18px rgba(30, 43, 47, 0.12);
    }
    .btn-secondary:hover {
      background: var(--primary-soft);
      border-color: var(--primary-soft);
      transform: translateY(-3px);
    }
    .btn-outline {
      background: transparent;
      color: var(--primary);
      border-color: rgba(30, 43, 47, 0.12);
      font-weight: 500;
    }
    .btn-outline:hover {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
      transform: translateY(-2px);
    }
    .btn-ghost {
      background: rgba(255, 255, 255, 0.15);
      color: #fff;
      border-color: rgba(255, 255, 255, 0.3);
    }
    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.28);
      border-color: rgba(255, 255, 255, 0.5);
    }

    /* ---------- HEADER (sticky, airy, friendly) ---------- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      border-bottom: var(--line);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 12px 0;
      min-height: 76px;
      flex-wrap: wrap;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 800;
      font-size: 24px;
      letter-spacing: -0.02em;
      color: var(--primary);
    }
    .brand i { font-size: 28px; color: var(--accent); }
    .brand .accent { color: var(--accent); }

    /* main navigation */
    .main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
      align-items: center;
    }
    .main-nav li a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 10px 18px;
      border-radius: 60px;
      font-weight: 500;
      font-size: 15px;
      color: var(--muted);
      transition: var(--transition);
    }
    .main-nav li a:hover,
    .main-nav li a.active {
      background: var(--accent-soft);
      color: var(--accent-dark);
    }
    .main-nav li a i { font-size: 15px; }

    /* search */
    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 60px;
      padding: 0 18px 0 22px;
      transition: var(--transition);
      border: 2px solid transparent;
      min-width: 240px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: #fff;
      box-shadow: 0 0 0 5px rgba(224, 122, 95, 0.1);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 12px 0;
      font-size: 15px;
      color: var(--primary);
    }
    .search-wrap input::placeholder { color: var(--muted-light); }
    .search-wrap button {
      padding: 8px 0 8px 12px;
      color: var(--muted);
      font-size: 16px;
      transition: var(--transition);
    }
    .search-wrap button:hover { color: var(--accent); }

    /* header actions */
    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn {
      width: 48px;
      height: 48px;
      display: grid;
      place-items: center;
      border-radius: 50%;
      font-size: 20px;
      color: var(--muted);
      transition: var(--transition);
      position: relative;
    }
    .icon-btn:hover {
      background: var(--accent-soft);
      color: var(--accent-dark);
    }
    .cart-wrap { position: relative; }
    .cart-count {
      position: absolute;
      top: 2px;
      right: 2px;
      background: var(--accent);
      color: #fff;
      font-size: 11px;
      font-weight: 700;
      width: 22px;
      height: 22px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      border: 2px solid #fff;
    }

    .mobile-toggle {
      display: none;
      width: 48px;
      height: 48px;
      border-radius: 50%;
      font-size: 22px;
      background: var(--surface);
      color: var(--primary);
      transition: var(--transition);
    }
    .mobile-toggle:hover { background: var(--accent-soft); }

    #mobileMenu {
      display: none;
      background: #fff;
      border-top: var(--line);
      padding: 16px 0 24px;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 14px;
      padding: 14px 18px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      color: var(--primary);
      transition: var(--transition);
    }
    #mobileMenu ul li a:hover { background: var(--surface); }
    #mobileMenu ul li a i { width: 24px; color: var(--muted); }

    /* ---------- HERO (welcoming, friendly) ---------- */
    .hero {
      position: relative;
      display: flex;
      align-items: center;
      min-height: 520px;
      padding: 60px 0;
      border-radius: var(--radius);
      overflow: hidden;
      margin: 28px 28px 0;
      background: linear-gradient(135deg, #1e2b2f 0%, #2f4046 100%);
      box-shadow: var(--shadow);
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
      opacity: 0.3;
      z-index: 0;
    }
    .hero .container { position: relative; z-index: 1; }
    .hero .badge {
      display: inline-block;
      background: rgba(224, 122, 95, 0.25);
      color: #ffd9cc;
      padding: 6px 22px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 14px;
      letter-spacing: 0.3px;
      margin-bottom: 24px;
      backdrop-filter: blur(4px);
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: 58px;
      font-weight: 700;
      color: #fff;
      line-height: 1.1;
      max-width: 700px;
      margin-bottom: 18px;
      text-shadow: 0 4px 14px rgba(0,0,0,0.2);
    }
    .hero p {
      color: rgba(255, 255, 255, 0.9);
      font-size: 19px;
      max-width: 560px;
      margin-bottom: 32px;
      line-height: 1.6;
    }
    .hero .actions {
      display: flex;
      gap: 16px;
      flex-wrap: wrap;
    }

    /* ---------- SECTION (airy, friendly) ---------- */
    .section { padding: 64px 0; }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 24px;
      margin-bottom: 40px;
      flex-wrap: wrap;
    }
    .section-header h2 {
      font-size: 34px;
      font-weight: 700;
      letter-spacing: -0.02em;
      line-height: 1.2;
    }
    .section-header p {
      color: var(--muted);
      font-size: 17px;
      margin-top: 6px;
    }
    .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 8px;
      font-size: 16px;
      transition: var(--transition);
      white-space: nowrap;
      padding: 8px 12px;
      border-radius: 60px;
    }
    .view-all:hover {
      gap: 14px;
      background: var(--accent-soft);
      color: var(--accent-dark);
    }

    /* ---------- CATEGORIES (large, soft cards) ---------- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 18px;
    }
    .cat-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 30px 16px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      cursor: pointer;
      border: 2px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }
    .cat-card .icon-wrap {
      width: 68px;
      height: 68px;
      border-radius: 50%;
      background: var(--accent-soft);
      display: grid;
      place-items: center;
      margin: 0 auto 16px;
      font-size: 28px;
      color: var(--accent-dark);
      transition: var(--transition);
    }
    .cat-card:hover .icon-wrap {
      background: var(--accent);
      color: #fff;
      transform: scale(1.05);
    }
    .cat-card h4 {
      font-size: 16px;
      font-weight: 600;
    }
    .cat-card .count {
      font-size: 14px;
      color: var(--muted);
      margin-top: 6px;
    }

    /* ---------- PRODUCTS (friendly cards) ---------- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
    }
    .product-card {
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 2px solid transparent;
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }
    .product-card .img-wrap {
      position: relative;
      overflow: hidden;
      background: var(--surface);
      aspect-ratio: 1 / 1;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.4s ease;
    }
    .product-card:hover .img-wrap img { transform: scale(1.06); }
    .product-card .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--accent);
      color: #fff;
      padding: 6px 16px;
      border-radius: 60px;
      font-size: 12px;
      font-weight: 700;
      letter-spacing: 0.3px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
    .product-card .badge.sale {
      background: var(--warning);
      color: var(--primary);
    }
    .product-card .wish-btn {
      position: absolute;
      top: 14px;
      right: 14px;
      width: 42px;
      height: 42px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.95);
      display: grid;
      place-items: center;
      font-size: 18px;
      color: var(--muted);
      transition: var(--transition);
      backdrop-filter: blur(4px);
      box-shadow: 0 2px 10px rgba(0,0,0,0.05);
    }
    .product-card .wish-btn:hover {
      background: #fff;
      color: var(--accent);
      transform: scale(1.1);
    }
    .product-card .body {
      padding: 20px 22px 16px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 8px;
    }
    .product-card .body .category-tag {
      font-size: 13px;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.5px;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 17px;
      font-weight: 600;
      line-height: 1.35;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 6px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 20px;
      color: var(--primary);
    }
    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 15px;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 14px;
      color: #e6a13b;
    }
    .product-card .body .rating span {
      color: var(--muted);
      font-weight: 400;
    }
    .product-card .footer {
      padding: 0 22px 22px;
    }
    .product-card .footer .add-btn {
      width: 100%;
      padding: 12px;
      border-radius: 60px;
      background: var(--primary);
      color: #fff;
      font-weight: 600;
      font-size: 15px;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      letter-spacing: -0.01em;
    }
    .product-card .footer .add-btn:hover {
      background: var(--accent);
      transform: scale(1.02);
      box-shadow: 0 8px 18px rgba(224,122,95,0.3);
    }
    .product-card .footer .add-btn.added {
      background: var(--success);
    }

    /* ---------- DEAL (friendly, clear) ---------- */
    .deal-wrap {
      display: flex;
      background: var(--bg-card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
    }
    .deal-wrap .deal-img {
      flex: 0 0 48%;
      background: var(--surface);
      min-height: 360px;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      flex: 1;
      padding: 48px 52px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      display: inline-block;
      background: var(--warning);
      color: var(--primary);
      padding: 6px 20px;
      border-radius: 60px;
      font-size: 13px;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      align-self: flex-start;
      margin-bottom: 18px;
    }
    .deal-wrap .deal-content h3 {
      font-size: 34px;
      font-weight: 700;
      margin-bottom: 8px;
      letter-spacing: -0.02em;
    }
    .deal-wrap .deal-content .desc {
      color: var(--muted);
      font-size: 17px;
      margin-bottom: 22px;
    }
    .deal-wrap .deal-content .price-big {
      font-size: 38px;
      font-weight: 800;
      color: var(--primary);
      letter-spacing: -0.02em;
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 22px;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 14px;
    }
    .deal-wrap .deal-content .stock {
      font-size: 16px;
      color: var(--muted);
      margin: 6px 0 20px;
    }
    .deal-wrap .deal-content .stock strong { color: var(--accent); }

    .timer-grid {
      display: flex;
      gap: 14px;
      margin: 18px 0 24px;
      flex-wrap: wrap;
    }
    .timer-box {
      background: var(--primary);
      color: #fff;
      padding: 14px 20px;
      border-radius: var(--radius-sm);
      min-width: 80px;
      text-align: center;
      box-shadow: 0 8px 18px rgba(0,0,0,0.08);
    }
    .timer-box .num {
      font-size: 30px;
      font-weight: 700;
      line-height: 1.2;
      letter-spacing: -0.02em;
    }
    .timer-box .label {
      font-size: 12px;
      opacity: 0.8;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      margin-top: 2px;
    }

    /* ---------- TESTIMONIALS (soft, scrollable) ---------- */
    .testimonials-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 12px 6px 24px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
      scrollbar-width: thin;
      scrollbar-color: var(--accent-soft) transparent;
    }
    .testimonials-scroll::-webkit-scrollbar { height: 5px; }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--accent-soft);
      border-radius: 60px;
    }
    .testimonial-card {
      flex: 0 0 360px;
      background: var(--bg-card);
      border-radius: var(--radius);
      padding: 30px 32px;
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
      transition: var(--transition);
      border: 2px solid transparent;
    }
    .testimonial-card:hover {
      box-shadow: var(--shadow);
      border-color: var(--accent-soft);
    }
    .testimonial-card .stars {
      color: #e6a13b;
      font-size: 18px;
      letter-spacing: 3px;
      margin-bottom: 14px;
    }
    .testimonial-card blockquote {
      font-size: 16px;
      line-height: 1.6;
      color: var(--primary);
      margin-bottom: 20px;
      font-style: italic;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 14px;
    }
    .testimonial-card .author .avatar {
      width: 52px;
      height: 52px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--surface);
      border: 2px solid var(--accent-soft);
    }
    .testimonial-card .author .name {
      font-weight: 700;
      font-size: 15px;
    }
    .testimonial-card .author .role {
      font-size: 14px;
      color: var(--muted);
    }

    /* ---------- NEWSLETTER (friendly, inviting) ---------- */
    .newsletter-wrap {
      background: linear-gradient(135deg, var(--primary) 0%, var(--primary-soft) 100%);
      border-radius: var(--radius);
      padding: 56px 64px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      flex-wrap: wrap;
      box-shadow: var(--shadow);
    }
    .newsletter-wrap .text h3 {
      font-size: 30px;
      font-weight: 700;
      margin-bottom: 8px;
      letter-spacing: -0.02em;
    }
    .newsletter-wrap .text p {
      opacity: 0.85;
      font-size: 17px;
    }
    .newsletter-wrap form {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 520px;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 220px;
      padding: 16px 24px;
      border-radius: 60px;
      border: 0;
      font-size: 16px;
      background: rgba(255, 255, 255, 0.15);
      color: #fff;
      transition: var(--transition);
      outline: 2px solid transparent;
    }
    .newsletter-wrap form input::placeholder {
      color: rgba(255, 255, 255, 0.6);
    }
    .newsletter-wrap form input:focus {
      outline-color: var(--accent);
      background: rgba(255, 255, 255, 0.22);
    }
    .newsletter-wrap form .btn {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      padding: 16px 36px;
      box-shadow: 0 8px 18px rgba(224,122,95,0.3);
    }
    .newsletter-wrap form .btn:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
    }
    #newsletterMsg {
      margin-top: 14px;
      font-size: 15px;
      width: 100%;
      display: none;
    }

    /* ---------- FOOTER ---------- */
    footer {
      margin-top: 32px;
      padding: 56px 0 32px;
      border-top: var(--line);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 48px;
      margin-bottom: 40px;
    }
    .footer-grid .brand-col .brand {
      font-size: 22px;
      margin-bottom: 12px;
    }
    .footer-grid .brand-col p {
      color: var(--muted);
      font-size: 15px;
      max-width: 320px;
      line-height: 1.7;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 12px;
      margin-top: 20px;
    }
    .footer-grid .brand-col .socials a {
      width: 46px;
      height: 46px;
      border-radius: 50%;
      background: var(--surface);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
      font-size: 18px;
    }
    .footer-grid .brand-col .socials a:hover {
      background: var(--accent);
      color: #fff;
      transform: translateY(-4px);
    }
    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 16px;
      margin-bottom: 18px;
      color: var(--primary);
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 10px;
    }
    .footer-grid .col ul li a {
      color: var(--muted);
      font-size: 15px;
      transition: var(--transition);
      padding: 4px 0;
      display: inline-block;
    }
    .footer-grid .col ul li a:hover {
      color: var(--accent);
      transform: translateX(4px);
    }
    .footer-bottom {
      text-align: center;
      padding-top: 28px;
      border-top: var(--line);
      color: var(--muted-light);
      font-size: 15px;
    }

    /* ---------- RESPONSIVE (friendly on all devices) ---------- */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3, 1fr); }
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 36px; }
      .hero h1 { font-size: 48px; }
    }

    @media (max-width: 992px) {
      .hero { min-height: 420px; margin: 20px 20px 0; padding: 48px 0; }
      .hero h1 { font-size: 40px; }
      .hero p { font-size: 17px; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 260px; }
      .deal-wrap .deal-content { padding: 36px 32px; }
      .newsletter-wrap { padding: 40px 32px; flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; justify-content: center; }
      .search-wrap { min-width: 160px; }
      .section-header h2 { font-size: 30px; }
    }

    @media (max-width: 768px) {
      .main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: repeat(2, 1fr); gap: 16px; }
      .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
      .hero { min-height: 340px; margin: 14px 14px 0; padding: 36px 0; }
      .hero h1 { font-size: 32px; }
      .hero p { font-size: 15px; }
      .section { padding: 44px 0; }
      .section-header h2 { font-size: 26px; }
      .deal-wrap .deal-content h3 { font-size: 26px; }
      .deal-wrap .deal-content .price-big { font-size: 30px; }
      .timer-box { min-width: 64px; padding: 10px 14px; }
      .timer-box .num { font-size: 24px; }
      .footer-grid { grid-template-columns: 1fr; gap: 28px; }
      .brand { font-size: 20px; }
      .brand i { font-size: 22px; }
      .search-wrap { min-width: 130px; padding: 0 12px 0 16px; }
      .search-wrap input { font-size: 14px; padding: 10px 0; }
      .icon-btn { width: 42px; height: 42px; font-size: 17px; }
      .cart-count { width: 20px; height: 20px; font-size: 10px; }
      .testimonial-card { flex: 0 0 290px; padding: 24px; }
      .newsletter-wrap .text h3 { font-size: 24px; }
      .container { padding: 0 20px; }
    }

    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
      .categories-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
      .hero { margin: 10px 10px 0; min-height: 280px; padding: 28px 0; border-radius: 20px; }
      .hero h1 { font-size: 26px; }
      .hero .badge { font-size: 12px; padding: 4px 16px; }
      .hero .actions .btn { padding: 12px 22px; font-size: 14px; }
      .deal-wrap .deal-content { padding: 24px 20px; }
      .deal-wrap .deal-img { flex: 0 0 200px; }
      .newsletter-wrap { padding: 28px 20px; }
      .newsletter-wrap .text h3 { font-size: 20px; }
      .product-card .body { padding: 14px 14px 10px; }
      .product-card .body h5 { font-size: 14px; }
      .product-card .body .price { font-size: 16px; }
      .product-card .footer { padding: 0 14px 14px; }
      .product-card .footer .add-btn { font-size: 13px; padding: 10px; }
      .timer-box { min-width: 52px; padding: 8px 10px; }
      .timer-box .num { font-size: 18px; }
      .timer-box .label { font-size: 10px; }
      .cat-card { padding: 18px 12px; }
      .cat-card .icon-wrap { width: 52px; height: 52px; font-size: 22px; }
      .cat-card h4 { font-size: 14px; }
      .container { padding: 0 16px; }
      .testimonial-card { flex: 0 0 260px; padding: 20px; }
      .testimonial-card blockquote { font-size: 14px; }
    }
  </style>
</
