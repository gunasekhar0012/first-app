<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NexusShop — Modern Lifestyle & Tech</title>

    <!-- Google Fonts & Font Awesome -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root {
            --bg: #f8fafc;
            --surface: #ffffff;
            --surface-subtle: #f1f5f9;
            --primary: #0f172a;
            --primary-light: #1e293b;
            --accent: #4f46e5;
            --accent-hover: #4338ca;
            --accent-glow: rgba(79, 70, 229, 0.15);
            --text-main: #0f172a;
            --text-muted: #64748b;
            --border: #e2e8f0;
            --radius-sm: 8px;
            --radius-md: 14px;
            --radius-lg: 20px;
            --shadow-sm: 0 1px 3px rgba(0, 0, 0, 0.05);
            --shadow-card: 0 10px 25px -5px rgba(15, 23, 42, 0.04), 0 8px 10px -6px rgba(15, 23, 42, 0.04);
            --shadow-hover: 0 20px 30px -10px rgba(15, 23, 42, 0.1);
            --container: 1240px;
            --transition: all 0.25s cubic-bezier(0.16, 1, 0.3, 1);
        }

        * { box-sizing: border-box; margin: 0; padding: 0; }
        html { scroll-behavior: smooth; }

        body {
            font-family: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
            color: var(--text-main);
            background: var(--bg);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
        }

        a { color: inherit; text-decoration: none; }
        .container { width: 100%; max-width: var(--container); margin: 0 auto; padding: 0 24px; }

        /* Navigation */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(255, 255, 255, 0.82);
            backdrop-filter: blur(14px);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            height: 72px;
        }

        .brand {
            font-weight: 800;
            font-size: 22px;
            letter-spacing: -0.03em;
            color: var(--primary);
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .brand-dot {
            width: 8px;
            height: 8px;
            background: var(--accent);
            border-radius: 50%;
            display: inline-block;
        }

        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
        }

        nav.main-nav a {
            padding: 8px 14px;
            border-radius: var(--radius-sm);
            font-weight: 600;
            font-size: 14px;
            color: var(--text-muted);
            transition: var(--transition);
        }

        nav.main-nav a:hover {
            color: var(--accent);
            background: var(--surface-subtle);
        }

        .search {
            position: relative;
            display: flex;
            align-items: center;
            background: var(--surface-subtle);
            border: 1px solid transparent;
            border-radius: 999px;
            padding: 0 16px;
            width: 280px;
            transition: var(--transition);
        }

        .search:focus-within {
            background: #fff;
            border-color: var(--accent);
            box-shadow: 0 0 0 3px var(--accent-glow);
        }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 10px 0;
            font-size: 14px;
            font-family: inherit;
        }

        .search i { color: var(--text-muted); font-size: 14px; margin-right: 8px; }

        .header-actions { display: flex; align-items: center; gap: 8px; }

        .icon-btn {
            background: transparent;
            border: 0;
            color: var(--text-muted);
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            font-size: 16px;
            cursor: pointer;
            transition: var(--transition);
        }

        .icon-btn:hover { background: var(--surface-subtle); color: var(--primary); }

        .cart-btn {
            position: relative;
            background: var(--surface-subtle);
            border: 1px solid var(--border);
            color: var(--primary);
            padding: 8px 14px;
            border-radius: 999px;
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 700;
            font-size: 14px;
            cursor: pointer;
            transition: var(--transition);
        }

        .cart-btn:hover { border-color: var(--accent); color: var(--accent); }

        .cart-badge {
            background: var(--accent);
            color: #fff;
            font-size: 11px;
            border-radius: 999px;
            padding: 1px 7px;
            font-weight: 700;
        }

        .mobile-toggle { display: none; background: none; border: 0; font-size: 20px; cursor: pointer; }

        /* Hero */
        .hero {
            position: relative;
            padding: 80px 0 60px;
            overflow: hidden;
        }

        .hero-card {
            background: linear-gradient(135deg, #0f172a 0%, #1e1b4b 100%);
            border-radius: var(--radius-lg);
            padding: 70px 60px;
            color: white;
            display: grid;
            grid-template-columns: 1.2fr 0.8fr;
            align-items: center;
            gap: 40px;
            position: relative;
            box-shadow: 0 25px 50px -12px rgba(15, 23, 42, 0.25);
        }

        .hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            background: rgba(255, 255, 255, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.15);
            padding: 4px 12px;
            border-radius: 999px;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            margin-bottom: 20px;
            backdrop-filter: blur(8px);
        }

        .hero h1 {
            font-size: 48px;
            line-height: 1.15;
            font-weight: 800;
            letter-spacing: -0.03em;
            margin-bottom: 18px;
        }

        .hero h1 span {
            background: linear-gradient(90deg, #818cf8, #38bdf8);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            font-size: 16px;
            color: #94a3b8;
            margin-bottom: 32px;
            max-width: 480px;
        }

        .hero-buttons { display: flex; gap: 14px; }

        .hero-img-wrap {
            position: relative;
            display: flex;
            justify-content: center;
        }

        .hero-img {
            width: 100%;
            max-height: 380px;
            object-fit: cover;
            border-radius: var(--radius-md);
            box-shadow: 0 20px 30px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 12px 22px;
            border-radius: 999px;
            font-weight: 700;
            font-size: 14px;
            cursor: pointer;
            border: 0;
            transition: var(--transition);
        }

        .btn-primary { background: var(--accent); color: white; }
        .btn-primary:hover { background: var(--accent-hover); transform: translateY(-1px); }

        .btn-ghost {
            background: rgba(255, 255, 255, 0.08);
            color: white;
            border: 1px solid rgba(255, 255, 255, 0.15);
        }
        .btn-ghost:hover { background: rgba(255, 255, 255, 0.15); }

        /* Section Common */
        .section { padding: 48px 0; }
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            margin-bottom: 28px;
        }

        .section-title h2 {
            font-size: 26px;
            font-weight: 800;
            letter-spacing: -0.02em;
        }

        .section-title p { color: var(--text-muted); font-size: 14px; margin-top: 4px; }

        /* Categories Bar */
        .category-pills {
            display: flex;
            gap: 12px;
            overflow-x: auto;
            padding-bottom: 12px;
            scrollbar-width: none;
        }
        .category-pills::-webkit-scrollbar { display: none; }

        .cat-pill {
            background: var(--surface);
            border: 1px solid var(--border);
            padding: 10px 18px;
            border-radius: 999px;
            display: flex;
            align-items: center;
            gap: 8px;
            font-weight: 600;
            font-size: 13px;
            white-space: nowrap;
            cursor: pointer;
            transition: var(--transition);
        }

        .cat-pill.active, .cat-pill:hover {
            background: var(--primary);
            border-color: var(--primary);
            color: white;
            box-shadow: var(--shadow-sm);
        }

        .cat-pill i { font-size: 13px; color: var(--accent); }
        .cat-pill.active i, .cat-pill:hover i { color: #fff; }

        /* Products Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
        }

        .product-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            transition: var(--transition);
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-4px);
            border-color: #cbd5e1;
            box-shadow: var(--shadow-hover);
        }

        .product-thumb {
            position: relative;
            padding-top: 80%;
            overflow: hidden;
            background: #f1f5f9;
        }

        .product-thumb img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .product-card:hover .product-thumb img { transform: scale(1.05); }

        .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: rgba(15, 23, 42, 0.85);
            color: white;
            padding: 4px 8px;
            border-radius: 6px;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.02em;
            backdrop-filter: blur(4px);
        }

        .badge-discount { background: #ef4444; }

        .wish-toggle {
            position: absolute;
            top: 12px;
            right: 12px;
            background: rgba(255, 255, 255, 0.85);
            border: 0;
            width: 32px;
            height: 32px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            cursor: pointer;
            color: var(--text-muted);
            backdrop-filter: blur(4px);
            transition: var(--transition);
        }

        .wish-toggle:hover { color: #ef4444; background: #fff; }

        .product-info {
            padding: 16px;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .product-meta {
            font-size: 11px;
            font-weight: 700;
            color: var(--accent);
            text-transform: uppercase;
            letter-spacing: 0.05em;
            margin-bottom: 4px;
        }

        .product-title {
            font-size: 15px;
            font-weight: 700;
            color: var(--text-main);
            margin-bottom: 8px;
            line-height: 1.35;
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 12px;
            color: #f59e0b;
            margin-bottom: 12px;
        }

        .product-rating span { color: var(--text-muted); font-size: 11px; }

        .product-bottom {
            margin-top: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-top: 12px;
            border-top: 1px solid var(--border);
        }

        .price-group { display: flex; flex-direction: column; }
        .price-current { font-size: 18px; font-weight: 800; color: var(--text-main); }
        .price-old { font-size: 12px; color: var(--text-muted); text-decoration: line-through; }

        .btn-add {
            background: var(--surface-subtle);
            border: 1px solid var(--border);
            color: var(--primary);
            padding: 8px 14px;
            border-radius: 8px;
            font-size: 13px;
            font-weight: 700;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 6px;
            transition: var(--transition);
        }

        .btn-add:hover {
            background: var(--accent);
            border-color: var(--accent);
            color: white;
        }

        /* Deal Card */
        .deal-wrapper {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
            box-shadow: var(--shadow-card);
        }

        .deal-img-col {
            position: relative;
            background: #000;
        }

        .deal-img-col img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.9;
        }

        .deal-content {
            padding: 48px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .timer-grid {
            display: flex;
            gap: 12px;
            margin: 24px 0;
        }

        .timer-unit {
            background: var(--surface-subtle);
            border: 1px solid var(--border);
            border-radius: var(--radius-sm);
            padding: 10px 14px;
            text-align: center;
            min-width: 68px;
        }

        .timer-unit .val { font-size: 20px; font-weight: 800; color: var(--primary); }
        .timer-unit .lbl { font-size: 10px; font-weight: 700; color: var(--text-muted); text-transform: uppercase; }

        /* Testimonials */
        .reviews-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .review-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            padding: 24px;
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .review-user { display: flex; align-items: center; gap: 12px; }
        .review-user img { width: 44px; height: 44px; border-radius: 50%; object-fit: cover; }

        /* Newsletter */
        .newsletter-card {
            background: linear-gradient(135deg, var(--primary) 0%, #1e293b 100%);
            border-radius: var(--radius-lg);
            padding: 48px;
            color: white;
            text-align: center;
            max-width: 760px;
            margin: 0 auto;
        }

        .newsletter-card h3 { font-size: 24px; font-weight: 800; margin-bottom: 8px; }
        .newsletter-card p { color: #94a3b8; font-size: 14px; margin-bottom: 24px; }

        .newsletter-form {
            display: flex;
            gap: 8px;
            max-width: 440px;
            margin: 0 auto;
        }

        .newsletter-form input {
            flex: 1;
            padding: 12px 18px;
            border-radius: 999px;
            border: 1px solid rgba(255, 255, 255, 0.15);
            background: rgba(255, 255, 255, 0.06);
            color: white;
            outline: none;
            font-family: inherit;
        }

        .newsletter-form input:focus { border-color: var(--accent); background: rgba(255, 255, 255, 0.1); }

        /* Footer */
        footer {
            border-top: 1px solid var(--border);
            background: var(--surface);
            margin-top: 60px;
            padding: 48px 0 24px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 1.5fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 36px;
        }

        .footer-col h4 { font-size: 14px; font-weight: 700; margin-bottom: 14px; }
        .footer-col ul { list-style: none; display: flex; flex-direction: column; gap: 8px; font-size: 14px; color: var(--text-muted); }
        .footer-col a:hover { color: var(--accent); }

        /* Responsive */
        @media (max-width: 1024px) {
            .hero-card { grid-template-columns: 1fr; padding: 48px 36px; }
            .hero-img-wrap { display: none; }
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .deal-wrapper { grid-template-columns: 1fr; }
            .deal-img-col { height: 260px; }
            .reviews-grid { grid-template-columns: repeat(2, 1fr); }
        }

        @media (max-width: 768px) {
            nav.main-nav, .search { display: none; }
            .mobile-toggle { display: block; }
            .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .reviews-grid { grid-template-columns: 1fr; }
            .footer-grid { grid-template-columns: 1fr; }
            .newsletter-form { flex-direction: column; }
        }

        @media (max-width: 480px) {
            .products-grid { grid-template-columns: 1fr; }
            .hero h1 { font-size: 32px; }
        }
    </style>
</head>

<body>
    <!-- Header -->
    <header>
        <div class="container header-inner">
            <div style="display: flex; align-items: center; gap: 14px;">
                <button class="mobile-toggle" id="mobileToggle" aria-label="Open navigation"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">
                    <span>Nexus</span><span class="brand-dot"></span>
                </a>
            </div>

            <nav class="main-nav" aria-label="Primary">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#products">Shop</a></li>
                    <li><a href="#deals">Deals</a></li>
                    <li><a href="#about">About</a></li>
                </ul>
            </nav>

            <div class="search">
                <i class="fas fa-search"></i>
                <input type="search" id="searchInput" placeholder="Search gadgets, apparel..." />
            </div>

            <div class="header-actions">
                <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
                <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
                <button class="cart-btn" id="cartBtn">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-badge" id="cartCount">0</span>
                </button>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero -->
        <section class="hero container">
            <div class="hero-card">
                <div>
                    <div class="hero-tag"><i class="fas fa-sparkles"></i> Fall / Winter 2026</div>
                    <h1>Next-Gen Tech &amp; <span>Urban Styles</span></h1>
                    <p>Experience curated everyday essentials engineered with premium materials, clean design, and industry-leading performance.</p>
                    <div class="hero-buttons">
                        <button class="btn btn-primary" id="shopNow">Browse Catalog <i class="fas fa-arrow-right"></i></button>
                        <a href="#deals" class="btn btn-ghost">View Flash Deals</a>
                    </div>
                </div>
                <div class="hero-img-wrap">
                    <img class="hero-img" src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=800&q=80" alt="Curated electronics and modern lifestyle gear" />
                </div>
            </div>
        </section>

        <!-- Categories & Filter Section -->
        <section class="section container">
            <div class="section-header">
                <div class="section-title">
                    <h2>Explore Categories</h2>
                    <p>Instant filtering across primary departments</p>
                </div>
            </div>
            <div class="category-pills" id="categoryPills">
                <div class="cat-pill active" data-category="all"><i class="fas fa-layer-group"></i> All Products</div>
                <div class="cat-pill" data-category="phones"><i class="fas fa-mobile-alt"></i> Smartphones</div>
                <div class="cat-pill" data-category="laptops"><i class="fas fa-laptop"></i> Laptops</div>
                <div class="cat-pill" data-category="gadgets"><i class="fas fa-headphones"></i> Audio &amp; Gear</div>
                <div class="cat-pill" data-category="footwear"><i class="fas fa-shoe-prints"></i> Footwear</div>
                <div class="cat-pill" data-category="accessories"><i class="fas fa-watch"></i> Accessories</div>
            </div>
        </section>

        <!-- Products -->
        <section id="products" class="section container" style="padding-top: 0;">
            <div class="section-header">
                <div class="section-title">
                    <h2>Trending Products</h2>
                    <p>High-demand picks updated hourly</p>
                </div>
            </div>
            <div class="products-grid" id="productsGrid"></div>
        </section>

        <!-- Flash Deal -->
        <section id="deals" class="section container">
            <div class="deal-wrapper">
                <div class="deal-img-col">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=80" alt="MacBook Air on display" />
                </div>
                <div class="deal-content">
                    <span style="font-size: 12px; font-weight: 800; color: #ef4444; letter-spacing: 0.05em; text-transform: uppercase;">Flash Deal of the Week</span>
                    <h2 style="font-size: 28px; font-weight: 800; margin: 6px 0 10px;">MacBook Air M2 — Midnight</h2>
                    <p style="color: var(--text-muted); font-size: 14px;">Stunning Liquid Retina display, all-day battery life, and silent fanless architecture.</p>

                    <div class="timer-grid">
                        <div class="timer-unit"><div class="val" id="dDays">01</div><div class="lbl">Days</div></div>
                        <div class="timer-unit"><div class="val" id="dHours">09</div><div class="lbl">Hours</div></div>
                        <div class="timer-unit"><div class="val" id="dMins">44</div><div class="lbl">Mins</div></div>
                        <div class="timer-unit"><div class="val" id="dSecs">12</div><div class="lbl">Secs</div></div>
                    </div>

                    <div style="display: flex; align-items: baseline; gap: 12px; margin-bottom: 24px;">
                        <span style="font-size: 28px; font-weight: 800; color: var(--primary);">$999</span>
                        <span style="font-size: 16px; color: var(--text-muted); text-decoration: line-through;">$1,199</span>
                        <span style="background: rgba(239, 68, 68, 0.1); color: #ef4444; font-weight: 700; font-size: 12px; padding: 2px 8px; border-radius: 6px;">Save $200</span>
                    </div>

                    <button class="btn btn-primary" id="buyDealBtn" style="width: fit-content;">Claim Offer <i class="fas fa-bolt"></i></button>
                </div>
            </div>
        </section>

        <!-- Customer Reviews -->
        <section class="section container">
            <div class="section-header">
                <div class="section-title">
                    <h2>Verified Experiences</h2>
                    <p>Honest feedback from recent customers</p>
                </div>
            </div>
            <div class="reviews-grid">
                <div class="review-card">
                    <div style="color: #f59e0b; font-size: 13px;"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                    <p style="font-size: 14px; color: var(--text-main);">"The package arrived a day ahead of schedule. Packaging was completely clean and the quality matches retail descriptions precisely."</p>
                    <div class="review-user">
                        <img src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=120&q=80" alt="Customer avatar" />
                        <div>
                            <div style="font-weight: 700; font-size: 13px;">Ava Sterling</div>
                            <div style="font-size: 11px; color: var(--text-muted);">Verified Buyer • 2 days ago</div>
                        </div>
                    </div>
                </div>
                <div class="review-card">
                    <div style="color: #f59e0b; font-size: 13px;"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                    <p style="font-size: 14px; color: var(--text-main);">"Exceptional audio response on the headphones. Checkout with one-click worked flawlessly."</p>
                    <div class="review-user">
                        <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=120&q=80" alt="Customer avatar" />
                        <div>
                            <div style="font-weight: 700; font-size: 13px;">Marcus Chen</div>
                            <div style="font-size: 11px; color: var(--text-muted);">Verified Buyer • 1 week ago</div>
                        </div>
                    </div>
                </div>
                <div class="review-card">
                    <div style="color: #f59e0b; font-size: 13px;"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
                    <p style="font-size: 14px; color: var(--text-main);">"Great build quality on the backpack. Ample padded storage compartments for my 16-inch work setup."</p>
                    <div class="review-user">
                        <img src="https://images.unsplash.com/photo-1517841905240-472988babdf9?auto=format&fit=crop&w=120&q=80" alt="Customer avatar" />
                        <div>
                            <div style="font-weight: 700; font-size: 13px;">Elena Rostova</div>
                            <div style="font-size: 11px; color: var(--text-muted);">Verified Buyer • 2 weeks ago</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter -->
        <section class="section container">
            <div class="newsletter-card">
                <h3>Get 15% off your first checkout</h3>
                <p>Subscribe for product drop notifications, private sales, and technology editorial previews.</p>
                <form class="newsletter-form" id="newsletterForm" onsubmit="return false;">
                    <input type="email" id="newsInput" placeholder="Enter your email" required />
                    <button class="btn btn-primary" type="submit">Join Club</button>
                </form>
                <div id="newsletterSuccess" style="display:none; font-size:13px; color:#4ade80; margin-top:12px;">You are on the priority access list!</div>
            </div>
        </section>
    </main>

    <!-- Footer -->
    <footer>
        <div class="container footer-grid">
            <div>
                <div class="brand" style="margin-bottom: 12px;"><span>Nexus</span><span class="brand-dot"></span></div>
                <p style="color: var(--text-muted); font-size: 14px; max-width: 320px;">Curated apparel and tech designed to elevate productivity and everyday lifestyle.</p>
            </div>
            <div class="footer-col">
                <h4>Navigation</h4>
                <ul>
                    <li><a href="#">New Arrivals</a></li>
                    <li><a href="#">Featured Devices</a></li>
                    <li><a href="#">Sustainability</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <h4>Customer Service</h4>
                <ul>
                    <li><a href="#">Order Tracking</a></li>
                    <li><a href="#">Returns &amp; Warranty</a></li>
                    <li><a href="#">Contact Support</a></li>
                </ul>
            </div>
        </div>
        <div class="container" style="border-top: 1px solid var(--border); padding-top: 20px; text-align: center; font-size: 12px; color: var(--text-muted);">
            © <span id="yearEl"></span> NexusShop Inc. All rights reserved.
        </div>
    </footer>

    <script>
        const PRODUCTS = [
            { id: 1, title: 'iPhone 15 Pro Max', price: 1199, oldPrice: 1299, rating: 5, reviews: 142, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones' },
            { id: 2, title: 'MacBook Pro 14" M3', price: 1999, rating: 5, reviews: 94, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
            { id: 3, title: 'Apple Watch Ultra 2', price: 799, oldPrice: 849, rating: 5, reviews: 204, badge: '-10%', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 160, rating: 4.8, reviews: 88, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
            { id: 5, title: 'Sony Alpha A7 IV', price: 2499, rating: 4.9, reviews: 52, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
            { id: 6, title: 'Minimal Travel Pack 32L', price: 119, oldPrice: 149, rating: 4.7, reviews: 63, badge: 'Sale', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 7, title: 'Sony WH-1000XM5 ANC', price: 399, rating: 5, reviews: 184, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
            { id: 8, title: 'Classic Minimal Timepiece', price: 185, rating: 4.6, reviews: 40, img: 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=600&q=80', category: 'accessories' }
        ];

        let cartCount = 0;
        const productsGrid = document.getElementById('productsGrid');
        const cartCountEl = document.getElementById('cartCount');
        const searchInput = document.getElementById('searchInput');

        function renderProducts(list) {
            productsGrid.innerHTML = '';
            list.forEach(p => {
                const card = document.createElement('article');
                card.className = 'product-card';
                card.innerHTML = `
                    <div class="product-thumb">
                        ${p.badge ? `<span class="badge ${p.badge.includes('%') || p.badge === 'Sale' ? 'badge-discount' : ''}">${p.badge}</span>` : ''}
                        <button class="wish-toggle" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
                        <img src="${p.img}" alt="${p.title}" loading="lazy">
                    </div>
                    <div class="product-info">
                        <span class="product-meta">${p.category}</span>
                        <h3 class="product-title">${p.title}</h3>
                        <div class="product-rating">
                            ${'<i class="fas fa-star"></i>'.repeat(Math.floor(p.rating))}
                            <span>(${p.reviews})</span>
                        </div>
                        <div class="product-bottom">
                            <div class="price-group">
                                <span class="price-current">$${p.price.toLocaleString()}</span>
                                ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
                            </div>
                            <button class="btn-add" data-id="${p.id}">
                                <i class="fas fa-plus"></i> Add
                            </button>
                        </div>
                    </div>
                `;
                productsGrid.appendChild(card);
            });

            // Re-bind listeners
            document.querySelectorAll('.btn-add').forEach(btn => {
                btn.addEventListener('click', () => {
                    cartCount++;
                    cartCountEl.textContent = cartCount;
                    const prevText = btn.innerHTML;
                    btn.innerHTML = '<i class="fas fa-check"></i> Added';
                    btn.style.background = '#22c55e';
                    btn.style.borderColor = '#22c55e';
                    btn.style.color = '#fff';
                    setTimeout(() => {
                        btn.innerHTML = prevText;
                        btn.style.background = '';
                        btn.style.borderColor = '';
                        btn.style.color = '';
                    }, 1200);
                });
            });
        }

        // Category Filter
        document.querySelectorAll('.cat-pill').forEach(pill => {
            pill.addEventListener('click', () => {
                document.querySelectorAll('.cat-pill').forEach(el => el.classList.remove('active'));
                pill.classList.add('active');
                const cat = pill.dataset.category;
                if (cat === 'all') {
                    renderProducts(PRODUCTS);
                } else {
                    renderProducts(PRODUCTS.filter(p => p.category === cat));
                }
            });
        });

        // Search
        searchInput.addEventListener('input', (e) => {
            const val = e.target.value.toLowerCase().trim();
            renderProducts(PRODUCTS.filter(p => p.title.toLowerCase().includes(val) || p.category.toLowerCase().includes(val)));
        });

        // Countdown Timer
        const targetDate = new Date().getTime() + (26 * 60 * 60 * 1000);
        setInterval(() => {
            const distance = targetDate - new Date().getTime();
            if (distance < 0) return;
            document.getElementById('dDays').textContent = String(Math.floor(distance / (1000 * 60 * 60 * 24))).padStart(2, '0');
            document.getElementById('dHours').textContent = String(Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60))).padStart(2, '0');
            document.getElementById('dMins').textContent = String(Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60))).padStart(2, '0');
            document.getElementById('dSecs').textContent = String(Math.floor((distance % (1000 * 60)) / 1000)).padStart(2, '0');
        }, 1000);

        // Flash Deal Action
        document.getElementById('buyDealBtn').addEventListener('click', () => {
            cartCount++;
            cartCountEl.textContent = cartCount;
            alert('Flash Deal MacBook Air M2 added to cart!');
        });

        // Newsletter Demo
        document.getElementById('newsletterForm').addEventListener('submit', () => {
            document.getElementById('newsletterSuccess').style.display = 'block';
            document.getElementById('newsInput').value = '';
        });

        // Smooth scrolling hook
        document.getElementById('shopNow').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        });

        // Init
        renderProducts(PRODUCTS);
        document.getElementById('yearEl').textContent = new Date().getFullYear();
    </script>
</body>
</html>
