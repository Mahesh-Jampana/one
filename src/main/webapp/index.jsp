<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop · Modern E-Commerce</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<style>
:root {
  --bg: #f9f7f4; --bg-card: #ffffff; --primary: #1e2b2f; --primary-soft: #2f4046;
  --accent: #e07a5f; --accent-soft: #fbe9e3; --accent-dark: #b85c42;
  --muted: #5e6f76; --muted-light: #8b9aa3; --surface: #f0efed;
  --success: #2e7d6e; --warning: #d99e3b;
  --radius: 24px; --radius-sm: 16px;
  --shadow-sm: 0 6px 18px rgba(0,0,0,0.03), 0 2px 6px rgba(0,0,0,0.02);
  --shadow: 0 12px 30px rgba(0,0,0,0.05);
  --shadow-hover: 0 24px 44px rgba(0,0,0,0.08);
  --transition: 0.2s ease;
  --container: 1260px;
  --line: 1px solid rgba(30,43,47,0.06);
}
* { box-sizing: border-box; margin: 0; padding: 0; }
html { scroll-behavior: smooth; scroll-padding-top: 90px; }
body { font-family: 'Inter', system-ui, sans-serif; background: var(--bg); color: var(--primary); line-height: 1.5; -webkit-font-smoothing: antialiased; }
a { color: inherit; text-decoration: none; }
img { display: block; max-width: 100%; }
button { cursor: pointer; font-family: inherit; border: none; background: none; color: inherit; }
input { font-family: inherit; }
*:focus-visible { outline: 3px solid var(--accent); outline-offset: 3px; border-radius: 4px; }
.container { width: 100%; max-width: var(--container); margin: 0 auto; padding: 0 28px; }

.btn { display: inline-flex; align-items: center; justify-content: center; gap: 10px; padding: 14px 32px; border-radius: 60px; font-weight: 600; font-size: 16px; transition: var(--transition); border: 2px solid transparent; white-space: nowrap; cursor: pointer; }
.btn-primary { background: var(--accent); color: #fff; border-color: var(--accent); box-shadow: 0 8px 18px rgba(224,122,95,0.25); }
.btn-primary:hover { background: var(--accent-dark); border-color: var(--accent-dark); transform: translateY(-3px); box-shadow: 0 16px 28px rgba(224,122,95,0.35); }
.btn-ghost { background: rgba(255,255,255,0.15); color: #fff; border-color: rgba(255,255,255,0.3); }
.btn-ghost:hover { background: rgba(255,255,255,0.28); border-color: rgba(255,255,255,0.5); }

header { position: sticky; top: 0; z-index: 100; background: rgba(255,255,255,0.85); backdrop-filter: blur(20px); border-bottom: var(--line); }
.header-inner { display: flex; align-items: center; justify-content: space-between; gap: 16px; padding: 12px 0; min-height: 76px; }
.brand { display: flex; align-items: center; gap: 10px; font-weight: 800; font-size: 24px; color: var(--primary); }
.brand i { font-size: 28px; color: var(--accent); }
.brand .accent { color: var(--accent); }
.main-nav ul { display: flex; gap: 6px; list-style: none; align-items: center; }
.main-nav li a { display: flex; align-items: center; gap: 8px; padding: 10px 18px; border-radius: 60px; font-weight: 500; font-size: 15px; color: var(--muted); transition: var(--transition); }
.main-nav li a:hover, .main-nav li a.active { background: var(--accent-soft); color: var(--accent-dark); }
.search-wrap { display: flex; align-items: center; background: var(--surface); border-radius: 60px; padding: 0 18px 0 22px; border: 2px solid transparent; min-width: 240px; }
.search-wrap:focus-within { border-color: var(--accent); background: #fff; box-shadow: 0 0 0 5px rgba(224,122,95,0.1); }
.search-wrap input { border: 0; background: transparent; outline: none; width: 100%; padding: 12px 0; font-size: 15px; }
.search-wrap button { padding: 8px 0 8px 12px; color: var(--muted); font-size: 16px; cursor: pointer; }
.search-wrap button:hover { color: var(--accent); }
.header-actions { display: flex; align-items: center; gap: 6px; }
.icon-btn { width: 48px; height: 48px; display: grid; place-items: center; border-radius: 50%; font-size: 20px; color: var(--muted); transition: var(--transition); position: relative; cursor: pointer; }
.icon-btn:hover { background: var(--accent-soft); color: var(--accent-dark); }
.cart-wrap { position: relative; }
.cart-count { position: absolute; top: 2px; right: 2px; background: var(--accent); color: #fff; font-size: 11px; font-weight: 700; width: 22px; height: 22px; border-radius: 50%; display: grid; place-items: center; border: 2px solid #fff; }
.mobile-toggle { display: none; width: 48px; height: 48px; border-radius: 50%; font-size: 22px; background: var(--surface); color: var(--primary); cursor: pointer; }
#mobileMenu { display: none; background: #fff; border-top: var(--line); padding: 16px 0 24px; }
#mobileMenu ul { list-style: none; display: flex; flex-direction: column; gap: 6px; }
#mobileMenu ul li a { display: flex; align-items: center; gap: 14px; padding: 14px 18px; border-radius: var(--radius-sm); font-weight: 500; color: var(--primary); }
#mobileMenu ul li a:hover { background: var(--surface); }
#mobileMenu ul li a i { width: 24px; color: var(--muted); }

.hero { position: relative; display: flex; align-items: center; min-height: 520px; padding: 60px 0; border-radius: var(--radius); overflow: hidden; margin: 28px 28px 0; background: linear-gradient(135deg, #1e2b2f 0%, #2f4046 100%); box-shadow: var(--shadow); }
.hero::before { content: ''; position: absolute; inset: 0; background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat; opacity: 0.3; z-index: 0; }
.hero .container { position: relative; z-index: 1; }
.hero .badge { display: inline-block; background: rgba(224,122,95,0.25); color: #ffd9cc; padding: 6px 22px; border-radius: 60px; font-weight: 600; font-size: 14px; margin-bottom: 24px; }
.hero h1 { font-family: 'Playfair Display', serif; font-size: 58px; font-weight: 700; color: #fff; line-height: 1.1; max-width: 700px; margin-bottom: 18px; text-shadow: 0 4px 14px rgba(0,0,0,0.2); }
.hero p { color: rgba(255,255,255,0.9); font-size: 19px; max-width: 560px; margin-bottom: 32px; line-height: 1.6; }
.hero .actions { display: flex; gap: 16px; flex-wrap: wrap; }

.section { padding: 64px 0; }
.section-header { display: flex; align-items: flex-end; justify-content: space-between; gap: 24px; margin-bottom: 40px; flex-wrap: wrap; }
.section-header h2 { font-size: 34px; font-weight: 700; letter-spacing: -0.02em; line-height: 1.2; }
.section-header p { color: var(--muted); font-size: 17px; margin-top: 6px; }
.view-all { font-weight: 600; color: var(--accent); display: flex; align-items: center; gap: 8px; font-size: 16px; padding: 8px 12px; border-radius: 60px; }
.view-all:hover { gap: 14px; background: var(--accent-soft); color: var(--accent-dark); }

.categories-grid { display: grid; grid-template-columns: repeat(6, 1fr); gap: 18px; }
.cat-card { background: var(--bg-card); border-radius: var(--radius); padding: 30px 16px; text-align: center; box-shadow: var(--shadow-sm); transition: var(--transition); cursor: pointer; border: 2px solid transparent; }
.cat-card:hover { transform: translateY(-8px); box-shadow: var(--shadow-hover); border-color: var(--accent-soft); }
.cat-card .icon-wrap { width: 68px; height: 68px; border-radius: 50%; background: var(--accent-soft); display: grid; place-items: center; margin: 0 auto 16px; font-size: 28px; color: var(--accent-dark); transition: var(--transition); }
.cat-card:hover .icon-wrap { background: var(--accent); color: #fff; }
.cat-card h4 { font-size: 16px; font-weight: 600; }
.cat-card .count { font-size: 14px; color: var(--muted); margin-top: 6px; }

.products-grid { display: grid; grid-template-columns: repeat(4, 1fr); gap: 24px; }
.product-card { background: var(--bg-card); border-radius: var(--radius); overflow: hidden; box-shadow: var(--shadow-sm); transition: var(--transition); display: flex; flex-direction: column; border: 2px solid transparent; }
.product-card:hover { transform: translateY(-8px); box-shadow: var(--shadow-hover); border-color: var(--accent-soft); }
.product-card .img-wrap { position: relative; overflow: hidden; background: var(--surface); aspect-ratio: 1/1; }
.product-card .img-wrap img { width: 100%; height: 100%; object-fit: cover; transition: transform 0.4s ease; }
.product-card:hover .img-wrap img { transform: scale(1.06); }
.product-card .badge { position: absolute; top: 14px; left: 14px; background: var(--accent); color: #fff; padding: 6px 16px; border-radius: 60px; font-size: 12px; font-weight: 700; }
.product-card .badge.sale { background: var(--warning); color: var(--primary); }
.product-card .wish-btn { position: absolute; top: 14px; right: 14px; width: 42px; height: 42px; border-radius: 50%; background: rgba(255,255,255,0.95); display: grid; place-items: center; font-size: 18px; color: var(--muted); cursor: pointer; }
.product-card .wish-btn:hover { background: #fff; color: var(--accent); }
.product-card .body { padding: 20px 22px 16px; flex: 1; display: flex; flex-direction: column; gap: 8px; }
.product-card .body .category-tag { font-size: 13px; color: var(--muted-light); text-transform: uppercase; letter-spacing: 0.5px; font-weight: 600; }
.product-card .body h5 { font-size: 17px; font-weight: 600; line-height: 1.35; }
.product-card .body .price-row { display: flex; align-items: center; gap: 12px; margin-top: 6px; }
.product-card .body .price { font-weight: 700; font-size: 20px; }
.product-card .body .old-price { color: var(--muted-light); text-decoration: line-through; font-size: 15px; }
.product-card .body .rating { display: flex; align-items: center; gap: 6px; font-size: 14px; color: #e6a13b; }
.product-card .body .rating span { color: var(--muted); }
.product-card .footer { padding: 0 22px 22px; }
.product-card .footer .add-btn { width: 100%; padding: 14px 16px; min-height: 48px; border-radius: var(--radius-sm); background: var(--primary); color: #fff; font-weight: 600; font-size: 15px; display: flex; align-items: center; justify-content: center; gap: 10px; cursor: pointer; }
.product-card .footer .add-btn:hover { background: var(--accent); }
.product-card .footer .add-btn.added { background: var(--success); }

.deal-wrap { display: flex; background: var(--bg-card); border-radius: var(--radius); overflow: hidden; box-shadow: var(--shadow); }
.deal-wrap .deal-img { flex: 0 0 48%; background: var(--surface); min-height: 360px; }
.deal-wrap .deal-img img { width: 100%; height: 100%; object-fit: cover; }
.deal-wrap .deal-content { flex: 1; padding: 48px 52px; display: flex; flex-direction: column; justify-content: center; }
.deal-wrap .deal-content .tag { display: inline-block; background: var(--warning); color: var(--primary); padding: 6px 20px; border-radius: 60px; font-size: 13px; font-weight: 700; align-self: flex-start; margin-bottom: 18px; }
.deal-wrap .deal-content h3 { font-size: 34px; font-weight: 700; margin-bottom: 8px; }
.deal-wrap .deal-content .desc { color: var(--muted); font-size: 17px; margin-bottom: 22px; }
.deal-wrap .deal-content .price-big { font-size: 38px; font-weight: 800; }
.deal-wrap .deal-content .price-big .old { font-size: 22px; color: var(--muted-light); text-decoration: line-through; margin-left: 14px; }
.deal-wrap .deal-content .stock { font-size: 16px; color: var(--muted); margin: 6px 0 20px; }
.deal-wrap .deal-content .stock strong { color: var(--accent); }
.timer-grid { display: flex; gap: 14px; margin: 18px 0 24px; flex-wrap: wrap; }
.timer-box { background: var(--primary); color: #fff; padding: 14px 20px; border-radius: var(--radius-sm); min-width: 80px; text-align: center; }
.timer-box .num { font-size: 30px; font-weight: 700; line-height: 1.2; }
.timer-box .label { font-size: 12px; opacity: 0.8; text-transform: uppercase; margin-top: 2px; }

.testimonials-scroll { display: flex; gap: 24px; overflow-x: auto; padding: 12px 6px 24px; scroll-snap-type: x mandatory; }
.testimonial-card { flex: 0 0 360px; background: var(--bg-card); border-radius: var(--radius); padding: 30px 32px; box-shadow: var(--shadow-sm); scroll-snap-align: start; }
.testimonial-card .stars { color: #e6a13b; font-size: 18px; letter-spacing: 3px; margin-bottom: 14px; }
.testimonial-card blockquote { font-size: 16px; line-height: 1.6; margin-bottom: 20px; font-style: italic; }
.testimonial-card .author { display: flex; align-items: center; gap: 14px; }
.testimonial-card .author .avatar { width: 52px; height: 52px; border-radius: 50%; object-fit: cover; }
.testimonial-card .author .name { font-weight: 700; font-size: 15px; }
.testimonial-card .author .role { font-size: 14px; color: var(--muted); }

.newsletter-wrap { background: linear-gradient(135deg, var(--primary) 0%, var(--primary-soft) 100%); border-radius: var(--radius); padding: 56px 64px; color: #fff; display: flex; align-items: center; justify-content: space-between; gap: 40px; flex-wrap: wrap; }
.newsletter-wrap .text h3 { font-size: 30px; font-weight: 700; margin-bottom: 8px; }
.newsletter-wrap .text p { opacity: 0.85; font-size: 17px; }
.newsletter-wrap form { display: flex; gap: 12px; flex-wrap: wrap; flex: 1; max-width: 520px; }
.newsletter-wrap form input { flex: 1; min-width: 220px; padding: 16px 24px; border-radius: 60px; border: 0; font-size: 16px; background: rgba(255,255,255,0.15); color: #fff; }
.newsletter-wrap form input::placeholder { color: rgba(255,255,255,0.6); }
.newsletter-wrap form .btn { background: var(--accent); color: #fff; padding: 16px 36px; }
#newsletterMsg { margin-top: 14px; font-size: 15px; width: 100%; display: none; }

footer { margin-top: 32px; padding: 56px 0 32px; border-top: var(--line); }
.footer-grid { display: grid; grid-template-columns: 2fr 1fr 1fr 1fr; gap: 48px; margin-bottom: 40px; }
.footer-grid .brand-col p { color: var(--muted); font-size: 15px; max-width: 320px; margin-top: 12px; }
.footer-grid .brand-col .socials { display: flex; gap: 12px; margin-top: 20px; }
.footer-grid .brand-col .socials a { width: 46px; height: 46px; border-radius: 50%; background: var(--surface); display: grid; place-items: center; color: var(--muted); font-size: 18px; }
.footer-grid .brand-col .socials a:hover { background: var(--accent); color: #fff; }
.footer-grid .col h5 { font-weight: 700; font-size: 16px; margin-bottom: 18px; }
.footer-grid .col ul { list-style: none; display: flex; flex-direction: column; gap: 10px; }
.footer-grid .col ul li a { color: var(--muted); font-size: 15px; }
.footer-grid .col ul li a:hover { color: var(--accent); }
.footer-bottom { text-align: center; padding-top: 28px; border-top: var(--line); color: var(--muted-light); font-size: 15px; }

@media (max-width: 1200px) {
  .products-grid { grid-template-columns: repeat(3, 1fr); }
  .categories-grid { grid-template-columns: repeat(3, 1fr); }
  .footer-grid { grid-template-columns: 1fr 1fr; gap: 36px; }
  .hero h1 { font-size: 48px; }
}
@media (max-width: 992px) {
  .hero { min-height: 420px; margin: 20px 20px 0; padding: 48px 0; }
  .hero h1 { font-size: 40px; }
  .deal-wrap { flex-direction: column; }
  .deal-wrap .deal-img { flex: 0 0 260px; }
  .newsletter-wrap { padding: 40px 32px; flex-direction: column; text-align: center; }
}
@media (max-width: 768px) {
  .main-nav { display: none; }
  .mobile-toggle { display: grid; place-items: center; }
  .products-grid { grid-template-columns: repeat(2, 1fr); gap: 16px; }
  .categories-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
  .hero { min-height: 340px; margin: 14px 14px 0; padding: 36px 0; }
  .hero h1 { font-size: 32px; }
  .footer-grid { grid-template-columns: 1fr; gap: 28px; }
  .container { padding: 0 20px; }
}
@media (max-width: 480px) {
  .products-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
  .categories-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
  .hero { margin: 10px 10px 0; min-height: 280px; padding: 28px 0; }
  .hero h1 { font-size: 26px; }
  .container { padding: 0 16px; }
}
</style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
    </div>
    <nav class="main-nav" aria-label="Main navigation">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:10px;">
      <div class="search-wrap" role="search">
        <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search" />
        <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn" title="Cart" aria-label="Cart"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <section class="hero" aria-label="Hero banner">
    <div class="container">
      <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
      <h1>Discover Premium<br>Essentials</h1>
      <p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
        <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
      </div>
    </div>
  </section>

  <section class="section" id="categories">
    <div class="container">
      <div class="section-header">
        <div>
          <h2>Browse Categories</h2>
          <p>Find exactly what you're looking for</p>
        </div>
        <a href="#" class="view-all">All Categories <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </div>
  </section>

  <section class="section" id="products">
    <div class="container">
      <div class="section-header">
        <div>
          <h2>Trending Now</h2>
          <p>What's hot — popular picks from our community</p>
        </div>
        <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </div>
  </section>

  <section class="section" id="deals">
    <div class="container">
      <div class="section-header">
        <div>
          <h2>⚡ Flash Deal</h2>
          <p>Grab it before it's gone — limited stock</p>
        </div>
      </div>
      <div class="deal-wrap">
        <div class="deal-img">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" loading="lazy">
        </div>
        <div class="deal-content">
          <span class="tag"><i class="fas fa-bolt"></i> Limited Offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
          <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
          <p class="stock">Only <strong>12</strong> items left — hurry!</p>
          <div class="timer-grid">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Mins</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Secs</div></div>
          </div>
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
        </div>
      </div>
    </div>
  </section>

  <section class="section" id="testimonials">
    <div class="container">
      <div class="section-header">
        <div>
          <h2>What Our Customers Say</h2>
          <p>Real reviews from real people</p>
        </div>
      </div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <section class="section">
    <div class="container">
      <div class="newsletter-wrap">
        <div class="text">
          <h3>Stay in the Loop</h3>
          <p>Get exclusive offers, early access & new arrivals</p>
        </div>
        <form id="newsletterForm">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
          <button class="btn" type="submit"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <div class="brand"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></div>
        <p>Modern e-commerce demo built with care. Quality products, seamless experience.</p>
        <div class="socials">
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li><li><a href="#">Blog</a></li></ul></div>
      <div class="col"><h5>Support</h5><ul><li><a href="#">Help Center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul></div>
      <div class="col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li><li><a href="#">Cookies</a></li></ul></div>
    </div>
    <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<script>
const CATEGORIES = [
  { id:'phones', name:'Smartphones', icon:'fa-mobile-alt', count:24 },
  { id:'laptops', name:'Laptops', icon:'fa-laptop', count:18 },
  { id:'clothing', name:'Clothing', icon:'fa-tshirt', count:42 },
  { id:'gadgets', name:'Gadgets', icon:'fa-headphones', count:31 },
  { id:'footwear', name:'Footwear', icon:'fa-shoe-prints', count:27 },
  { id:'accessories', name:'Accessories', icon:'fa-watch', count:39 }
];

const PRODUCTS = [
  { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'Smartphones' },
  { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, badge:'', img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'Laptops' },
  { id:3, title:'Apple Watch Series 8', price:349, oldPrice:399, rating:5, reviews:214, badge:'Sale', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category:'Accessories' },
  { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, badge:'', img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category:'Footwear' },
  { id:5
