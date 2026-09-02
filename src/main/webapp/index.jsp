<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Lumina — Next-Gen Lifestyle & Tech</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        :root {
            /* Gradients */
            --gradient-canvas: linear-gradient(135deg, #fef9f5 0%, #fdf2f8 35%, #f0fdfa 70%, #eff6ff 100%);
            --gradient-primary: linear-gradient(135deg, #6366f1 0%, #a855f7 50%, #ec4899 100%);
            --gradient-warm: linear-gradient(135deg, #ff6b6b 0%, #ffa07a 50%, #f9ca24 100%);
            --gradient-cool: linear-gradient(135deg, #06b6d4 0%, #3b82f6 50%, #8b5cf6 100%);
            --gradient-card: linear-gradient(180deg, rgba(255, 255, 255, 0.95) 0%, rgba(255, 255, 255, 0.75) 100%);
            --gradient-badge: linear-gradient(135deg, #f43f5e, #fb7185);

            /* Solids & Opacities */
            --surface-glass: rgba(255, 255, 255, 0.72);
            --border-glass: rgba(255, 255, 255, 0.85);
            --border-subtle: rgba(148, 163, 184, 0.2);
            --text-main: #0f172a;
            --text-muted: #64748b;
            --shadow-soft: 0 10px 30px -8px rgba(99, 102, 241, 0.12), 0 4px 6px -2px rgba(0, 0, 0, 0.02);
            --shadow-hover: 0 20px 40px -10px rgba(168, 85, 247, 0.22);

            --radius-sm: 10px;
            --radius-md: 18px;
            --radius-lg: 28px;
            --container: 1240px;
            --transition: all 0.26s cubic-bezier(0.16, 1, 0.3, 1);
        }

        * { box-sizing: border-box; margin: 0; padding: 0; }
        html { scroll-behavior: smooth; }

        body {
            font-family: 'Plus Jakarta Sans', system-ui, -apple-system, sans-serif;
            background: var(--gradient-canvas);
            background-attachment: fixed;
            color: var(--text-main);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            min-height: 100vh;
            overflow-x: hidden;
        }

        a { color: inherit; text-decoration: none; }
        .container { width: 100%; max-width: var(--container); margin: 0 auto; padding: 0 24px; }

        /* Announcement Ribbon */
        .ribbon {
            background: var(--gradient-primary);
            color: #fff;
            padding: 9px 16px;
            font-size: 13px;
            font-weight: 600;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            box-shadow: 0 2px 10px rgba(99, 102, 241, 0.25);
        }

        .ribbon-chip {
            background: rgba(255, 255, 255, 0.25);
            padding: 2px 8px;
            border-radius: 999px;
            font-size: 11px;
            font-weight: 800;
            letter-spacing: 0.04em;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: var(--surface-glass);
            backdrop-filter: blur(18px);
            border-bottom: 1px solid var(--border-glass);
            box-shadow: 0 4px 20px -2px rgba(0, 0, 0, 0.03);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            height: 74px;
            gap: 20px;
        }

        .brand {
            font-size: 24px;
            font-weight: 800;
            letter-spacing: -0.04em;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .brand-icon {
            width: 32px;
            height: 32px;
            border-radius: 10px;
            background: var(--gradient-primary);
            display: grid;
            place-items: center;
            color: #fff;
            font-size: 14px;
            box-shadow: 0 4px 12px rgba(168, 85, 247, 0.35);
        }

        .brand-name {
            background: var(--gradient-primary);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
        }

        nav.main-nav a {
            padding: 8px 16px;
            border-radius: 999px;
            font-size: 14px;
            font-weight: 600;
            color: var(--text-muted);
            transition: var(--transition);
        }

        nav.main-nav a:hover {
            color: var(--text-main);
            background: rgba(255, 255, 255, 0.8);
            box-shadow: 0 2px 8px rgba(0,0,0,0.04);
        }

        .search-wrap {
            position: relative;
            display: flex;
            align-items: center;
            background: rgba(255, 255, 255, 0.8);
            border: 1px solid var(--border-subtle);
            border-radius: 999px;
            padding: 0 16px;
            width: 260px;
            transition: var(--transition);
        }

        .search-wrap:focus-within {
            border-color: #a855f7;
            background: #fff;
            box-shadow: 0 0 0 4px rgba(168, 85, 247, 0.15);
            width: 290px;
        }

        .search-wrap input {
            border: none;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 10px 0;
            font-size: 13px;
            font-family: inherit;
            color: var(--text-main);
        }

        .search-wrap i { color: var(--text-muted); margin-right: 8px; font-size: 13px; }

        .header-actions { display: flex; align-items: center; gap: 10px; }

        .btn-circle {
            background: rgba(255, 255, 255, 0.9);
            border: 1px solid var(--border-subtle);
            color: var(--text-muted);
            width: 42px;
            height: 42px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            cursor: pointer;
            transition: var(--transition);
        }

        .btn-circle:hover {
            color: var(--text-main);
            border-color: #a855f7;
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(168, 85, 247, 0.18);
        }

        .btn-cart-nav {
            background: var(--gradient-primary);
            color: #fff;
            border: none;
            padding: 10px 18px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: 700;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 8px;
            box-shadow: 0 4px 15px rgba(99, 102, 241, 0.3);
            transition: var(--transition);
        }

        .btn-cart-nav:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(168, 85, 247, 0.4);
        }

        .cart-pill {
            background: #fff;
            color: #7c3aed;
            font-size: 11px;
            font-weight: 800;
            padding: 2px 7px;
            border-radius: 999px;
        }

        /* Hero */
        .hero {
            padding: 40px 0 60px;
        }

        .hero-banner {
            position: relative;
            border-radius: var(--radius-lg);
            background: var(--gradient-primary);
            padding: 68px 60px;
            color: white;
            display: grid;
            grid-template-columns: 1.25fr 0.75fr;
            align-items: center;
            gap: 40px;
            overflow: hidden;
            box-shadow: 0 20px 50px -10px rgba(99, 102, 241, 0.4);
        }

        .hero-banner::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -20%;
            width: 80%;
            height: 180%;
            background: radial-gradient(circle, rgba(255, 255, 255, 0.25) 0%, transparent 60%);
            transform: rotate(25deg);
            pointer-events: none;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(255, 255, 255, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.4);
            backdrop-filter: blur(8px);
            padding: 6px 14px;
            border-radius: 999px;
            font-size: 12px;
            font-weight: 700;
            letter-spacing: 0.04em;
            text-transform: uppercase;
            margin-bottom: 20px;
        }

        .hero h1 {
            font-size: 52px;
            font-weight: 800;
            line-height: 1.08;
            letter-spacing: -0.04em;
            margin-bottom: 18px;
        }

        .hero p {
            font-size: 16px;
            line-height: 1.6;
            opacity: 0.92;
            margin-bottom: 32px;
            max-width: 480px;
        }

        .hero-actions { display: flex; gap: 14px; }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 13px 24px;
            border-radius: 999px;
            font-size: 14px;
            font-weight: 700;
            cursor: pointer;
            border: none;
            transition: var(--transition);
        }

        .btn-white {
            background: #ffffff;
            color: #4f46e5;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
        }

        .btn-white:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
        }

        .btn-glass {
            background: rgba(255, 255, 255, 0.18);
            color: white;
            border: 1px solid rgba(255, 255, 255, 0.35);
            backdrop-filter: blur(6px);
        }

        .btn-glass:hover {
            background: rgba(255, 255, 255, 0.28);
        }

        .hero-visual {
            position: relative;
            display: flex;
            justify-content: center;
        }

        .hero-visual img {
            width: 100%;
            max-height: 380px;
            object-fit: cover;
            border-radius: var(--radius-md);
            border: 3px solid rgba(255, 255, 255, 0.4);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.25);
        }

        /* Filter Chips */
        .filter-section {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            margin-bottom: 28px;
            gap: 20px;
            flex-wrap: wrap;
        }

        .filter-pills {
            display: flex;
            gap: 10px;
            overflow-x: auto;
            scrollbar-width: none;
        }
        .filter-pills::-webkit-scrollbar { display: none; }

        .filter-btn {
            background: rgba(255, 255, 255, 0.85);
            border: 1px solid var(--border-subtle);
            color: var(--text-muted);
            padding: 9px 20px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: 700;
            cursor: pointer;
            transition: var(--transition);
            white-space: nowrap;
        }

        .filter-btn.active, .filter-btn:hover {
            background: var(--gradient-primary);
            color: #fff;
            border-color: transparent;
            box-shadow: 0 4px 15px rgba(168, 85, 247, 0.28);
            transform: translateY(-2px);
        }

        /* Product Cards */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
            margin-bottom: 72px;
        }

        .card {
            background: var(--gradient-card);
            border: 1px solid var(--border-glass);
            border-radius: var(--radius-md);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            box-shadow: var(--shadow-soft);
            transition: var(--transition);
            position: relative;
        }

        .card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: rgba(168, 85, 247, 0.35);
        }

        .card-media {
            position: relative;
            width: 100%;
            height: 250px;
            background: #fff;
            overflow: hidden;
        }

        .card-media img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s cubic-bezier(0.16, 1, 0.3, 1);
        }

        .card:hover .card-media img {
            transform: scale(1.08);
        }

        .card-tag {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--gradient-badge);
            color: white;
            font-size: 10px;
            font-weight: 800;
            padding: 4px 10px;
            border-radius: 999px;
            letter-spacing: 0.04em;
            text-transform: uppercase;
            box-shadow: 0 3px 10px rgba(244, 63, 94, 0.3);
        }

        .card-body {
            padding: 20px;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .card-cat {
            font-size: 11px;
            font-weight: 800;
            color: #7c3aed;
            text-transform: uppercase;
            letter-spacing: 0.06em;
            margin-bottom: 6px;
        }

        .card-title {
            font-size: 16px;
            font-weight: 700;
            color: var(--text-main);
            margin-bottom: 12px;
            line-height: 1.35;
        }

        .card-footer {
            margin-top: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-top: 14px;
            border-top: 1px solid rgba(226, 232, 240, 0.8);
        }

        .price-text {
            font-size: 19px;
            font-weight: 800;
            color: var(--text-main);
        }

        .btn-card-add {
            background: var(--gradient-cool);
            color: #fff;
            border: none;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            cursor: pointer;
            box-shadow: 0 4px 12px rgba(6, 182, 212, 0.3);
            transition: var(--transition);
        }

        .btn-card-add:hover {
            transform: scale(1.1) rotate(90deg);
            box-shadow: 0 6px 18px rgba(6, 182, 212, 0.45);
        }

        /* Deal Spotlight */
        .deal-card {
            background: var(--gradient-warm);
            border-radius: var(--radius-lg);
            color: #fff;
            display: grid;
            grid-template-columns: 1fr 1fr;
            overflow: hidden;
            margin-bottom: 80px;
            box-shadow: 0 20px 45px -10px rgba(255, 107, 107, 0.35);
        }

        .deal-img img {
            width: 100%;
            height: 100%;
            min-height: 380px;
            object-fit: cover;
            display: block;
        }

        .deal-content {
            padding: 56px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-boxes {
            display: flex;
            gap: 10px;
            margin: 22px 0;
        }

        .d-box {
            background: rgba(255, 255, 255, 0.22);
            backdrop-filter: blur(8px);
            border: 1px solid rgba(255, 255, 255, 0.4);
            border-radius: var(--radius-sm);
            padding: 10px 14px;
            text-align: center;
            min-width: 64px;
        }

        .d-box .num { font-size: 20px; font-weight: 800; }
        .d-box .lbl { font-size: 9px; font-weight: 700; text-transform: uppercase; letter-spacing: 0.05em; }

        /* Cart Slide Drawer */
        .cart-overlay {
            position: fixed;
            inset: 0;
            background: rgba(15, 23, 42, 0.3);
            backdrop-filter: blur(6px);
            z-index: 90;
            opacity: 0;
            pointer-events: none;
            transition: opacity 0.3s ease;
        }

        .cart-overlay.open { opacity: 1; pointer-events: auto; }

        .cart-drawer {
            position: fixed;
            top: 0;
            right: 0;
            width: 100%;
            max-width: 440px;
            height: 100%;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(24px);
            border-left: 1px solid var(--border-glass);
            z-index: 100;
            transform: translateX(100%);
            transition: transform 0.35s cubic-bezier(0.16, 1, 0.3, 1);
            display: flex;
            flex-direction: column;
            padding: 28px;
            box-shadow: -10px 0 35px rgba(0, 0, 0, 0.08);
        }

        .cart-drawer.open { transform: translateX(0); }

        .cart-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-bottom: 20px;
            border-bottom: 1px solid var(--border-subtle);
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 20px 0;
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .cart-row {
            display: flex;
            gap: 14px;
            align-items: center;
            background: #fff;
            padding: 12px;
            border-radius: var(--radius-sm);
            border: 1px solid var(--border-subtle);
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.02);
        }

        .cart-row img {
            width: 60px;
            height: 60px;
            border-radius: 8px;
            object-fit: cover;
        }

        .qty-controls {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 6px;
        }

        .qty-btn {
            background: #f1f5f9;
            border: none;
            width: 22px;
            height: 22px;
            border-radius: 6px;
            cursor: pointer;
            font-weight: 700;
            display: grid;
            place-items: center;
        }

        .cart-footer {
            border-top: 1px solid var(--border-subtle);
            padding-top: 20px;
        }

        .total-row {
            display: flex;
            justify-content: space-between;
            font-size: 17px;
            font-weight: 800;
            margin-bottom: 18px;
        }

        /* Footer */
        footer {
            background: rgba(255, 255, 255, 0.6);
            backdrop-filter: blur(12px);
            border-top: 1px solid var(--border-glass);
            padding: 56px 0 32px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-grid h4 {
            font-size: 13px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            margin-bottom: 14px;
            color: #7c3aed;
        }

        .footer-grid ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 10px;
            font-size: 14px;
            color: var(--text-muted);
        }

        .footer-grid a:hover { color: var(--text-main); }

        @media (max-width: 1024px) {
            .hero-banner { grid-template-columns: 1fr; padding: 48px; }
            .hero-visual { display: none; }
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .deal-card { grid-template-columns: 1fr; }
            .deal-img { height: 260px; }
        }

        @media (max-width: 768px) {
            nav.main-nav, .search-wrap { display: none; }
            .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .hero h1 { font-size: 38px; }
            .footer-grid { grid-template-columns: 1fr; }
        }

        @media (max-width: 480px) {
            .products-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>

<body>
    <!-- Gradient Ribbon -->
    <div class="ribbon">
        <span class="ribbon-chip">GRADIENT DROP</span>
        Spring collection is live. Complimentary express parcel shipping worldwide.
    </div>

    <!-- Header Navigation -->
    <header>
        <div class="container header-inner">
            <a class="brand" href="#">
                <div class="brand-icon"><i class="fas fa-sparkles"></i></div>
                <span class="brand-name">Lumina</span>
            </a>

            <nav class="main-nav" aria-label="Store Sections">
                <ul>
                    <li><a href="#">Showroom</a></li>
                    <li><a href="#catalog">Collection</a></li>
                    <li><a href="#deals">Deals</a></li>
                </ul>
            </nav>

            <div class="search-wrap">
                <i class="fas fa-search"></i>
                <input type="search" id="searchInput" placeholder="Search devices, accessories..." />
            </div>

            <div class="header-actions">
                <button class="btn-circle" aria-label="Account"><i class="far fa-user"></i></button>
                <button class="btn-cart-nav" id="openCartBtn">
                    <i class="fas fa-bag-shopping"></i>
                    <span>Bag</span>
                    <span class="cart-pill" id="cartCount">0</span>
                </button>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero Section -->
        <section class="hero container">
            <div class="hero-banner">
                <div>
                    <div class="hero-badge"><i class="fas fa-bolt"></i> Spring Edition 2026</div>
                    <h1>Bright Ideas for Modern Creativity</h1>
                    <p>Elevate your workspace and lifestyle with vivid acoustics, intelligent peripherals, and ergonomic design.</p>
                    <div class="hero-actions">
                        <button class="btn btn-white" id="heroScrollBtn">Shop The Edit <i class="fas fa-arrow-right"></i></button>
                        <a href="#deals" class="btn btn-glass">Explore Deals</a>
                    </div>
                </div>
                <div class="hero-visual">
                    <img src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=800&q=80" alt="Modern Tech Lifestyle" />
                </div>
            </div>
        </section>

        <!-- Product Catalog -->
        <section id="catalog" class="container">
            <div class="filter-section">
                <div>
                    <h2 style="font-size: 30px; font-weight: 800; letter-spacing: -0.03em;">The Collection</h2>
                    <p style="color: var(--text-muted); font-size: 14px;">Filtered for modern colorways and peak ergonomics</p>
                </div>
                <div class="filter-pills" id="filterContainer">
                    <button class="filter-btn active" data-filter="all">All Items</button>
                    <button class="filter-btn" data-filter="audio">Acoustics</button>
                    <button class="filter-btn" data-filter="workspace">Desk Setup</button>
                    <button class="filter-btn" data-filter="wear">Accessories</button>
                </div>
            </div>

            <div class="products-grid" id="productsGrid"></div>
        </section>

        <!-- Deal Spotlight -->
        <section id="deals" class="container">
            <div class="deal-card">
                <div class="deal-img">
                    <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=80" alt="Headphones Flash Sale" />
                </div>
                <div class="deal-content">
                    <span style="font-size: 11px; font-weight: 800; letter-spacing: 0.08em; text-transform: uppercase;">Sunset Flash Sale</span>
                    <h2 style="font-size: 34px; font-weight: 800; margin: 8px 0 12px; line-height: 1.15;">AURA Studio Wireless ANC</h2>
                    <p style="opacity: 0.9; font-size: 14px; line-height: 1.6;">High-resolution spatial drivers with 40-hour continuous battery life and ultra-soft memory foam earcups.</p>

                    <div class="deal-boxes">
                        <div class="d-box"><div class="num" id="dDay">01</div><div class="lbl">Days</div></div>
                        <div class="d-box"><div class="num" id="dHour">12</div><div class="lbl">Hours</div></div>
                        <div class="d-box"><div class="num" id="dMin">45</div><div class="lbl">Mins</div></div>
                        <div class="d-box"><div class="num" id="dSec">20</div><div class="lbl">Secs</div></div>
                    </div>

                    <div style="display: flex; align-items: baseline; gap: 12px; margin-bottom: 24px;">
                        <span style="font-size: 32px; font-weight: 900;">$249</span>
                        <span style="font-size: 16px; opacity: 0.75; text-decoration: line-through;">$329</span>
                    </div>

                    <button class="btn btn-white" style="width: fit-content;" onclick="addToCart(1)">Claim Discount</button>
                </div>
            </div>
        </section>
    </main>

    <!-- Side Cart Slide-over -->
    <div class="cart-overlay" id="cartOverlay"></div>
    <aside class="cart-drawer" id="cartDrawer" aria-label="Shopping Bag">
        <div class="cart-header">
            <h3 style="font-size: 18px; font-weight: 800;">Your Cart</h3>
            <button class="btn-circle" id="closeCartBtn" style="width: 36px; height: 36px;"><i class="fas fa-times"></i></button>
        </div>
        <div class="cart-items" id="cartItemsList">
            <p style="color: var(--text-muted); font-size: 14px; text-align: center; margin-top: 48px;">Your bag is currently empty.</p>
        </div>
        <div class="cart-footer">
            <div class="total-row">
                <span>Subtotal:</span>
                <span id="subtotalVal">$0.00</span>
            </div>
            <button class="btn" style="width: 100%; justify-content: center; background: var(--gradient-primary); color: #fff;" onclick="alert('Proceeding to checkout...')">Proceed to Checkout</button>
        </div>
    </aside>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div>
                    <div class="brand" style="margin-bottom: 12px;">
                        <div class="brand-icon"><i class="fas fa-sparkles"></i></div>
                        <span class="brand-name">LUMINA</span>
                    </div>
                    <p style="color: var(--text-muted); font-size: 14px; max-width: 340px;">Colorful hardware, workspace objects, and tactile peripherals curated for bold creators.</p>
                </div>
                <div>
                    <h4>Collection</h4>
                    <ul>
                        <li><a href="#">Audio Peripherals</a></li>
                        <li><a href="#">Studio Workspace</a></li>
                        <li><a href="#">Accessories &amp; Carry</a></li>
                    </ul>
                </div>
                <div>
                    <h4>Customer Care</h4>
                    <ul>
                        <li><a href="#">Shipping Timeline</a></li>
                        <li><a href="#">Warranty Details</a></li>
                        <li><a href="#">Help Desk</a></li>
                    </ul>
                </div>
            </div>
            <div style="border-top: 1px solid var(--border-subtle); padding-top: 24px; display: flex; justify-content: space-between; font-size: 12px; color: var(--text-muted);">
                <span>© <span id="yearSpan"></span> LUMINA Inc.</span>
                <span>Designed with lively gradients.</span>
            </div>
        </div>
    </footer>

    <script>
        const PRODUCTS = [
            { id: 1, title: 'Studio Wireless Headphones', price: 249, category: 'audio', badge: 'Popular', img: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80' },
            { id: 2, title: 'Compact Mechanical 65% Keyboard', price: 165, category: 'workspace', badge: 'New', img: 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=600&q=80' },
            { id: 3, title: 'Smart Apple Watch Strap (Flora)', price: 49, category: 'wear', badge: null, img: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80' },
            { id: 4, title: 'True Wireless Noise-Canceling Buds', price: 139, category: 'audio', badge: 'Sale', img: 'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=600&q=80' },
            { id: 5, title: 'Ergonomic Vertical Surface Mouse', price: 89, category: 'workspace', badge: null, img: 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?auto=format&fit=crop&w=600&q=80' },
            { id: 6, title: 'Lumina Minimalist Steel Chrono', price: 210, category: 'wear', badge: 'Featured', img: 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=600&q=80' },
            { id: 7, title: 'Merino Wool Workspace Desk Pad', price: 59, category: 'workspace', badge: null, img: 'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?auto=format&fit=crop&w=600&q=80' },
            { id: 8, title: 'Daypack Commuter Waterproof', price: 125, category: 'wear', badge: null, img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80' }
        ];

        let cart = [];
        const productsGrid = document.getElementById('productsGrid');
        const cartCount = document.getElementById('cartCount');
        const cartDrawer = document.getElementById('cartDrawer');
        const cartOverlay = document.getElementById('cartOverlay');
        const cartItemsList = document.getElementById('cartItemsList');
        const subtotalVal = document.getElementById('subtotalVal');

        function renderProducts(items) {
            productsGrid.innerHTML = '';
            items.forEach(p => {
                const card = document.createElement('article');
                card.className = 'card';
                card.innerHTML = `
                    <div class="card-media">
                        ${p.badge ? `<span class="card-tag">${p.badge}</span>` : ''}
                        <img src="${p.img}" alt="${p.title}" loading="lazy" />
                    </div>
                    <div class="card-body">
                        <span class="card-cat">${p.category}</span>
                        <h3 class="card-title">${p.title}</h3>
                        <div class="card-footer">
                            <span class="price-text">$${p.price.toLocaleString()}</span>
                            <button class="btn-card-add" onclick="addToCart(${p.id})" aria-label="Add to bag">
                                <i class="fas fa-plus"></i>
                            </button>
                        </div>
                    </div>
                `;
                productsGrid.appendChild(card);
            });
        }

        function addToCart(id) {
            const item = PRODUCTS.find(x => x.id === id);
            if (!item) return;
            const existing = cart.find(x => x.id === id);
            if (existing) {
                existing.qty++;
            } else {
                cart.push({ ...item, qty: 1 });
            }
            updateCart();
            openCart();
        }

        function changeQty(id, delta) {
            const item = cart.find(x => x.id === id);
            if (!item) return;
            item.qty += delta;
            if (item.qty <= 0) {
                cart = cart.filter(x => x.id !== id);
            }
            updateCart();
        }

        function updateCart() {
            const count = cart.reduce((acc, cur) => acc + cur.qty, 0);
            cartCount.textContent = count;

            if (cart.length === 0) {
                cartItemsList.innerHTML = '<p style="color: var(--text-muted); font-size: 14px; text-align: center; margin-top: 48px;">Your bag is currently empty.</p>';
                subtotalVal.textContent = '$0.00';
                return;
            }

            cartItemsList.innerHTML = '';
            let total = 0;
            cart.forEach(item => {
                total += item.price * item.qty;
                const row = document.createElement('div');
                row.className = 'cart-row';
                row.innerHTML = `
                    <img src="${item.img}" alt="${item.title}">
                    <div style="flex: 1;">
                        <div style="font-size: 14px; font-weight: 700;">${item.title}</div>
                        <div style="font-size: 12px; color: var(--text-muted);">$${item.price} each</div>
                        <div class="qty-controls">
                            <button class="qty-btn" onclick="changeQty(${item.id}, -1)">-</button>
                            <span style="font-size: 12px; font-weight: 700;">${item.qty}</span>
                            <button class="qty-btn" onclick="changeQty(${item.id}, 1)">+</button>
                        </div>
                    </div>
                `;
                cartItemsList.appendChild(row);
            });
            subtotalVal.textContent = `$${total.toLocaleString()}.00`;
        }

        function openCart() {
            cartDrawer.classList.add('open');
            cartOverlay.classList.add('open');
        }

        function closeCart() {
            cartDrawer.classList.remove('open');
            cartOverlay.classList.remove('open');
        }

        document.getElementById('openCartBtn').addEventListener('click', openCart);
        document.getElementById('closeCartBtn').addEventListener('click', closeCart);
        cartOverlay.addEventListener('click', closeCart);

        // Filters
        document.querySelectorAll('.filter-btn').forEach(btn => {
            btn.addEventListener('click', () => {
                document.querySelectorAll('.filter-btn').forEach(b => b.classList.remove('active'));
                btn.classList.add('active');
                const cat = btn.dataset.filter;
                renderProducts(cat === 'all' ? PRODUCTS : PRODUCTS.filter(p => p.category === cat));
            });
        });

        // Search
        document.getElementById('searchInput').addEventListener('input', (e) => {
            const query = e.target.value.toLowerCase().trim();
            renderProducts(PRODUCTS.filter(p => p.title.toLowerCase().includes(query) || p.category.toLowerCase().includes(query)));
        });

        document.getElementById('heroScrollBtn').addEventListener('click', () => {
            document.getElementById('catalog').scrollIntoView({ behavior: 'smooth' });
        });

        renderProducts(PRODUCTS);
        document.getElementById('yearSpan').textContent = new Date().getFullYear();
    </script>
</body>
</html>
