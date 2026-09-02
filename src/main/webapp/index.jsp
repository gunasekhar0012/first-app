<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>NEXUS — Premium Everyday Artifacts</title>

    <!-- Google Fonts & Font Awesome -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cabinet+Grotesk:wght@700;800;900&family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        :root {
            --bg: #0b0d13;
            --surface: #121620;
            --surface-subtle: #19202e;
            --border: rgba(255, 255, 255, 0.08);
            --border-hover: rgba(255, 255, 255, 0.2);
            --primary: #ffffff;
            --primary-invert: #0b0d13;
            --muted: #8c96a8;
            --accent: #6366f1;
            --accent-glow: rgba(99, 102, 241, 0.25);
            --accent-gradient: linear-gradient(135deg, #6366f1 0%, #a855f7 50%, #ec4899 100%);
            --radius-sm: 8px;
            --radius-md: 16px;
            --radius-lg: 24px;
            --container: 1260px;
            --transition: all 0.28s cubic-bezier(0.16, 1, 0.3, 1);
        }

        * { box-sizing: border-box; margin: 0; padding: 0; }
        html { scroll-behavior: smooth; }

        body {
            font-family: 'Plus Jakarta Sans', system-ui, sans-serif;
            background: var(--bg);
            color: #f1f5f9;
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            overflow-x: hidden;
        }

        h1, h2, h3, h4, .brand-font {
            font-family: 'Cabinet Grotesk', 'Plus Jakarta Sans', sans-serif;
        }

        a { color: inherit; text-decoration: none; }
        .container { width: 100%; max-width: var(--container); margin: 0 auto; padding: 0 24px; }

        /* Top Announcement */
        .top-banner {
            background: linear-gradient(90deg, #4f46e5, #7c3aed, #db2777);
            color: #fff;
            padding: 8px 16px;
            font-size: 13px;
            font-weight: 600;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
        }
        .top-banner span { background: rgba(255, 255, 255, 0.2); padding: 2px 8px; border-radius: 999px; font-size: 11px; }

        /* Navigation Header */
        header {
            position: sticky;
            top: 0;
            z-index: 60;
            background: rgba(11, 13, 19, 0.82);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            height: 74px;
        }

        .brand {
            font-size: 24px;
            font-weight: 900;
            letter-spacing: -0.04em;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .brand-icon {
            width: 28px;
            height: 28px;
            border-radius: 8px;
            background: var(--accent-gradient);
            display: grid;
            place-items: center;
            font-size: 14px;
            color: #fff;
        }

        nav.main-nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
        }

        nav.main-nav a {
            padding: 8px 16px;
            border-radius: 999px;
            font-size: 14px;
            font-weight: 600;
            color: var(--muted);
            transition: var(--transition);
        }

        nav.main-nav a:hover {
            color: #fff;
            background: var(--surface-subtle);
        }

        .search-box {
            position: relative;
            display: flex;
            align-items: center;
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: 999px;
            padding: 0 16px;
            width: 280px;
            transition: var(--transition);
        }

        .search-box:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 3px var(--accent-glow);
        }

        .search-box input {
            border: 0;
            background: transparent;
            outline: none;
            width: 100%;
            padding: 10px 0;
            font-size: 13px;
            color: #fff;
            font-family: inherit;
        }

        .search-box i { color: var(--muted); margin-right: 10px; font-size: 13px; }

        .header-actions { display: flex; align-items: center; gap: 10px; }

        .action-btn {
            background: var(--surface);
            border: 1px solid var(--border);
            color: #fff;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            cursor: pointer;
            transition: var(--transition);
        }

        .action-btn:hover {
            border-color: var(--border-hover);
            background: var(--surface-subtle);
            transform: translateY(-1px);
        }

        .cart-toggle-btn {
            position: relative;
            background: #fff;
            color: #0b0d13;
            border: 0;
            padding: 10px 18px;
            border-radius: 999px;
            font-weight: 700;
            font-size: 13px;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 8px;
            transition: var(--transition);
        }

        .cart-toggle-btn:hover {
            background: #e2e8f0;
            transform: translateY(-1px);
        }

        .cart-badge {
            background: var(--accent);
            color: #fff;
            font-size: 11px;
            border-radius: 999px;
            padding: 2px 7px;
            font-weight: 800;
        }

        /* Hero Section */
        .hero {
            position: relative;
            padding: 48px 0 64px;
        }

        .hero-banner {
            position: relative;
            border-radius: var(--radius-lg);
            background: radial-gradient(circle at 80% 20%, rgba(99, 102, 241, 0.25), transparent 45%),
                        radial-gradient(circle at 20% 80%, rgba(236, 72, 153, 0.15), transparent 50%),
                        var(--surface);
            border: 1px solid var(--border);
            padding: 64px 54px;
            overflow: hidden;
            display: grid;
            grid-template-columns: 1.2fr 0.8fr;
            align-items: center;
            gap: 40px;
        }

        .hero-banner::after {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(180deg, rgba(255, 255, 255, 0.03) 0%, transparent 100%);
            pointer-events: none;
        }

        .hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 6px 14px;
            background: rgba(255, 255, 255, 0.06);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 999px;
            font-size: 12px;
            font-weight: 700;
            letter-spacing: 0.05em;
            text-transform: uppercase;
            color: #cbd5e1;
            margin-bottom: 24px;
        }

        .hero-tag i { color: #f43f5e; }

        .hero h1 {
            font-size: 56px;
            line-height: 1.08;
            font-weight: 900;
            letter-spacing: -0.04em;
            margin-bottom: 20px;
        }

        .hero h1 span.gradient-text {
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            color: var(--muted);
            font-size: 16px;
            margin-bottom: 36px;
            max-width: 480px;
            line-height: 1.6;
        }

        .hero-cta { display: flex; align-items: center; gap: 14px; }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 13px 24px;
            border-radius: 999px;
            font-size: 14px;
            font-weight: 700;
            cursor: pointer;
            border: 0;
            transition: var(--transition);
        }

        .btn-glow {
            background: #fff;
            color: #0b0d13;
            box-shadow: 0 0 30px rgba(255, 255, 255, 0.25);
        }

        .btn-glow:hover {
            transform: translateY(-2px);
            background: #f8fafc;
            box-shadow: 0 0 35px rgba(255, 255, 255, 0.4);
        }

        .btn-outline {
            background: rgba(255, 255, 255, 0.04);
            color: #fff;
            border: 1px solid var(--border);
        }

        .btn-outline:hover {
            background: rgba(255, 255, 255, 0.08);
            border-color: var(--border-hover);
        }

        .hero-showcase {
            position: relative;
            display: flex;
            justify-content: center;
        }

        .hero-showcase img {
            width: 100%;
            max-height: 380px;
            object-fit: cover;
            border-radius: var(--radius-md);
            border: 1px solid var(--border);
            box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.6);
        }

        /* Category Filter Bar */
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            margin-bottom: 24px;
        }

        .section-header h2 {
            font-size: 28px;
            font-weight: 800;
            letter-spacing: -0.03em;
        }

        .section-header p {
            color: var(--muted);
            font-size: 14px;
            margin-top: 4px;
        }

        .filter-row {
            display: flex;
            gap: 10px;
            overflow-x: auto;
            padding-bottom: 8px;
            margin-bottom: 32px;
            scrollbar-width: none;
        }
        .filter-row::-webkit-scrollbar { display: none; }

        .filter-chip {
            background: var(--surface);
            border: 1px solid var(--border);
            color: var(--muted);
            padding: 9px 18px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: 600;
            white-space: nowrap;
            cursor: pointer;
            transition: var(--transition);
        }

        .filter-chip:hover, .filter-chip.active {
            background: #fff;
            color: #0b0d13;
            border-color: #fff;
            transform: translateY(-1px);
        }

        /* Products Grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 22px;
            margin-bottom: 64px;
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
            transform: translateY(-5px);
            border-color: var(--border-hover);
            box-shadow: 0 20px 35px -10px rgba(0, 0, 0, 0.5);
        }

        .product-image-container {
            position: relative;
            padding-top: 85%;
            background: #0f1219;
            overflow: hidden;
        }

        .product-image-container img {
            position: absolute;
            inset: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s cubic-bezier(0.16, 1, 0.3, 1);
        }

        .product-card:hover .product-image-container img {
            transform: scale(1.06);
        }

        .product-tag {
            position: absolute;
            top: 12px;
            left: 12px;
            padding: 4px 10px;
            border-radius: 6px;
            font-size: 11px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 0.04em;
            backdrop-filter: blur(8px);
            z-index: 2;
        }

        .tag-dark { background: rgba(11, 13, 19, 0.85); color: #fff; border: 1px solid var(--border); }
        .tag-accent { background: var(--accent); color: #fff; }

        .fav-btn {
            position: absolute;
            top: 12px;
            right: 12px;
            width: 32px;
            height: 32px;
            background: rgba(11, 13, 19, 0.7);
            backdrop-filter: blur(6px);
            border: 1px solid var(--border);
            border-radius: 50%;
            color: #fff;
            display: grid;
            place-items: center;
            cursor: pointer;
            z-index: 2;
            transition: var(--transition);
        }

        .fav-btn:hover { color: #f43f5e; border-color: #f43f5e; }

        .product-info {
            padding: 18px;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .category-name {
            font-size: 11px;
            font-weight: 700;
            color: var(--muted);
            text-transform: uppercase;
            letter-spacing: 0.05em;
            margin-bottom: 4px;
        }

        .product-title {
            font-size: 16px;
            font-weight: 700;
            color: #fff;
            margin-bottom: 10px;
            line-height: 1.35;
        }

        .product-rating {
            display: flex;
            align-items: center;
            gap: 6px;
            font-size: 12px;
            color: #f59e0b;
            margin-bottom: 16px;
        }

        .product-rating span { color: var(--muted); font-size: 12px; }

        .product-footer {
            margin-top: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-top: 14px;
            border-top: 1px solid var(--border);
        }

        .price-col { display: flex; flex-direction: column; }
        .price-now { font-size: 19px; font-weight: 800; color: #fff; }
        .price-then { font-size: 12px; color: var(--muted); text-decoration: line-through; }

        .add-cart-btn {
            background: var(--surface-subtle);
            color: #fff;
            border: 1px solid var(--border);
            padding: 8px 14px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: 700;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 6px;
            transition: var(--transition);
        }

        .add-cart-btn:hover {
            background: #fff;
            color: #0b0d13;
            border-color: #fff;
        }

        /* Deal Section */
        .deal-container {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
            margin-bottom: 72px;
        }

        .deal-img { position: relative; min-height: 340px; }
        .deal-img img { width: 100%; height: 100%; object-fit: cover; }

        .deal-details {
            padding: 56px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .countdown-boxes {
            display: flex;
            gap: 12px;
            margin: 24px 0;
        }

        .c-box {
            background: var(--surface-subtle);
            border: 1px solid var(--border);
            border-radius: var(--radius-sm);
            padding: 12px;
            min-width: 68px;
            text-align: center;
        }

        .c-box .num { font-size: 22px; font-weight: 900; color: #fff; }
        .c-box .lbl { font-size: 10px; font-weight: 700; color: var(--muted); text-transform: uppercase; }

        /* Slide-over Cart Drawer */
        .cart-overlay {
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.7);
            backdrop-filter: blur(6px);
            z-index: 90;
            opacity: 0;
            pointer-events: none;
            transition: opacity 0.3s ease;
        }

        .cart-overlay.active { opacity: 1; pointer-events: auto; }

        .cart-drawer {
            position: fixed;
            top: 0;
            right: 0;
            width: 100%;
            max-width: 440px;
            height: 100%;
            background: var(--surface);
            border-left: 1px solid var(--border);
            z-index: 100;
            transform: translateX(100%);
            transition: transform 0.35s cubic-bezier(0.16, 1, 0.3, 1);
            display: flex;
            flex-direction: column;
            padding: 24px;
        }

        .cart-drawer.active { transform: translateX(0); }

        .cart-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-bottom: 18px;
            border-bottom: 1px solid var(--border);
        }

        .cart-items-list {
            flex: 1;
            overflow-y: auto;
            padding: 20px 0;
            display: flex;
            flex-direction: column;
            gap: 16px;
        }

        .cart-item {
            display: flex;
            gap: 14px;
            align-items: center;
            background: var(--surface-subtle);
            padding: 12px;
            border-radius: var(--radius-sm);
            border: 1px solid var(--border);
        }

        .cart-item img {
            width: 56px;
            height: 56px;
            border-radius: 6px;
            object-fit: cover;
        }

        .cart-item-title { font-size: 14px; font-weight: 700; color: #fff; }
        .cart-item-price { font-size: 13px; color: var(--muted); }

        .cart-total-box {
            border-top: 1px solid var(--border);
            padding-top: 20px;
        }

        .total-row {
            display: flex;
            justify-content: space-between;
            font-size: 16px;
            font-weight: 700;
            margin-bottom: 18px;
        }

        /* Footer */
        footer {
            border-top: 1px solid var(--border);
            background: var(--surface);
            padding: 48px 0 24px;
        }

        .footer-wrap {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 20px;
        }

        /* Responsive Breakpoints */
        @media (max-width: 1024px) {
            .hero-banner { grid-template-columns: 1fr; padding: 44px; }
            .hero-showcase { display: none; }
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .deal-container { grid-template-columns: 1fr; }
            .deal-img { height: 260px; }
        }

        @media (max-width: 768px) {
            nav.main-nav, .search-box { display: none; }
            .products-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .hero h1 { font-size: 38px; }
        }

        @media (max-width: 480px) {
            .products-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>

<body>
    <!-- Top Announcement Bar -->
    <div class="top-banner">
        <span>EXCLUSIVE</span>
        Flash Sale: Enjoy complimentary worldwide priority shipping on orders over $150
    </div>

    <!-- Navigation Header -->
    <header>
        <div class="container header-inner">
            <a class="brand brand-font" href="#">
                <div class="brand-icon"><i class="fas fa-bolt"></i></div>
                <span>NEXUS</span>
            </a>

            <nav class="main-nav" aria-label="Main Navigation">
                <ul>
                    <li><a href="#">Showroom</a></li>
                    <li><a href="#products">Catalog</a></li>
                    <li><a href="#deals">Deals</a></li>
                </ul>
            </nav>

            <div class="search-box">
                <i class="fas fa-search"></i>
                <input type="search" id="productSearch" placeholder="Search by title, tag..." />
            </div>

            <div class="header-actions">
                <button class="action-btn" aria-label="Account"><i class="far fa-user"></i></button>
                <button class="cart-toggle-btn" id="openCartBtn">
                    <i class="fas fa-bag-shopping"></i>
                    <span>Bag</span>
                    <span class="cart-badge" id="cartCountBadge">0</span>
                </button>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero Section -->
        <section class="hero container">
            <div class="hero-banner">
                <div>
                    <div class="hero-tag">
                        <i class="fas fa-fire"></i> Series 2026 Collection
                    </div>
                    <h1>Refined Hardware for <span class="gradient-text">Modern Creators</span></h1>
                    <p>Designed with aerospace-grade aluminum, custom silicon integration, and a focus on essential tactile usability.</p>
                    <div class="hero-cta">
                        <button class="btn btn-glow" id="heroShopBtn">Explore Collection <i class="fas fa-arrow-right"></i></button>
                        <a href="#deals" class="btn btn-outline">View Offers</a>
                    </div>
                </div>
                <div class="hero-showcase">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80" alt="MacBook Showcase" />
                </div>
            </div>
        </section>

        <!-- Product Department & Filter -->
        <section id="products" class="container">
            <div class="section-header">
                <div>
                    <h2>Curated Catalog</h2>
                    <p>Select a category or browse all verified gear</p>
                </div>
            </div>

            <div class="filter-row" id="filterRow">
                <button class="filter-chip active" data-filter="all">All Catalog</button>
                <button class="filter-chip" data-filter="gadgets">Audio &amp; Cameras</button>
                <button class="filter-chip" data-filter="laptops">Computing</button>
                <button class="filter-chip" data-filter="phones">Smartphones</button>
                <button class="filter-chip" data-filter="accessories">Accessories</button>
            </div>

            <!-- Products Grid Container -->
            <div class="products-grid" id="productsGrid"></div>
        </section>

        <!-- Flash Deal Section -->
        <section id="deals" class="container">
            <div class="deal-container">
                <div class="deal-img">
                    <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=900&q=80" alt="Laptop deal preview" />
                </div>
                <div class="deal-details">
                    <span style="color:#f43f5e; font-size:12px; font-weight:800; text-transform:uppercase; letter-spacing:0.05em;">Limited Stock Availability</span>
                    <h2 style="font-size:32px; font-weight:800; margin:8px 0 12px;">MacBook Pro 14" M3 Pro</h2>
                    <p style="color:var(--muted); font-size:14px; line-height:1.6;">Precision-engineered liquid retina XDR screen, 18-core GPU performance, and 22 hours continuous battery endurance.</p>

                    <div class="countdown-boxes">
                        <div class="c-box"><div class="num" id="dDay">01</div><div class="lbl">Days</div></div>
                        <div class="c-box"><div class="num" id="dHour">11</div><div class="lbl">Hours</div></div>
                        <div class="c-box"><div class="num" id="dMin">40</div><div class="lbl">Mins</div></div>
                        <div class="c-box"><div class="num" id="dSec">22</div><div class="lbl">Secs</div></div>
                    </div>

                    <div style="display:flex; align-items:baseline; gap:12px; margin-bottom:28px;">
                        <span style="font-size:32px; font-weight:900; color:#fff;">$1,799</span>
                        <span style="font-size:16px; color:var(--muted); text-decoration:line-through;">$1,999</span>
                    </div>

                    <button class="btn btn-glow" id="dealBuyBtn" style="width:fit-content;">Claim Promotion</button>
                </div>
            </div>
        </section>
    </main>

    <!-- Side Slide-Over Cart Drawer -->
    <div class="cart-overlay" id="cartOverlay"></div>
    <aside class="cart-drawer" id="cartDrawer" aria-label="Shopping Cart">
        <div class="cart-header">
            <h3 style="font-size:18px; font-weight:800;">Your Cart</h3>
            <button class="action-btn" id="closeCartBtn" style="width:36px; height:36px;"><i class="fas fa-times"></i></button>
        </div>
        <div class="cart-items-list" id="cartItemsList">
            <p style="color:var(--muted); font-size:14px; text-align:center; margin-top:40px;">Your bag is currently empty.</p>
        </div>
        <div class="cart-total-box">
            <div class="total-row">
                <span>Total Amount:</span>
                <span id="cartTotalSum">$0.00</span>
            </div>
            <button class="btn btn-glow" style="width:100%; justify-content:center;" onclick="alert('Proceeding to encrypted checkout...')">Proceed to Checkout</button>
        </div>
    </aside>

    <!-- Footer -->
    <footer>
        <div class="container footer-wrap">
            <div class="brand brand-font">
                <div class="brand-icon"><i class="fas fa-bolt"></i></div>
                <span>NEXUS</span>
            </div>
            <p style="color:var(--muted); font-size:13px;">© <span id="yearVal"></span> Nexus Platforms Inc. Crafted for exceptional performance.</p>
        </div>
    </footer>

    <!-- JavaScript Interactions -->
    <script>
        const PRODUCTS = [
            { id: 1, title: 'iPhone 15 Pro Max', price: 1199, oldPrice: 1299, rating: 5, reviews: 142, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'phones' },
            { id: 2, title: 'MacBook Pro 14" M3', price: 1999, oldPrice: null, rating: 5, reviews: 94, badge: null, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
            { id: 3, title: 'Apple Watch Ultra 2', price: 799, oldPrice: 849, rating: 5, reviews: 204, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 4, title: 'Sony Alpha A7 IV', price: 2499, oldPrice: null, rating: 4.9, reviews: 52, badge: null, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
            { id: 5, title: 'Minimalist Travel Pack', price: 129, oldPrice: 159, rating: 4.8, reviews: 63, badge: '-20%', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 6, title: 'Sony WH-1000XM5 ANC', price: 399, oldPrice: null, rating: 5, reviews: 184, badge: 'Hot', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
            { id: 7, title: 'Studio Mechanical Keyboard', price: 210, oldPrice: 240, rating: 4.7, reviews: 39, badge: null, img: 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 8, title: 'iPad Pro 12.9 M2', price: 1099, oldPrice: null, rating: 4.9, reviews: 110, badge: 'Popular', img: 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?auto=format&fit=crop&w=600&q=80', category: 'laptops' }
        ];

        let cart = [];
        const productsGrid = document.getElementById('productsGrid');
        const cartBadge = document.getElementById('cartCountBadge');
        const cartDrawer = document.getElementById('cartDrawer');
        const cartOverlay = document.getElementById('cartOverlay');
        const cartItemsList = document.getElementById('cartItemsList');
        const cartTotalSum = document.getElementById('cartTotalSum');

        // Render Cards
        function displayProducts(items) {
            productsGrid.innerHTML = '';
            items.forEach(p => {
                const card = document.createElement('article');
                card.className = 'product-card';
                card.innerHTML = `
                    <div class="product-image-container">
                        ${p.badge ? `<span class="product-tag ${p.badge.includes('%') || p.badge === 'Sale' ? 'tag-accent' : 'tag-dark'}">${p.badge}</span>` : ''}
                        <button class="fav-btn" aria-label="Favorite"><i class="far fa-heart"></i></button>
                        <img src="${p.img}" alt="${p.title}" loading="lazy">
                    </div>
                    <div class="product-info">
                        <div class="category-name">${p.category}</div>
                        <h3 class="product-title">${p.title}</h3>
                        <div class="product-rating">
                            ${'<i class="fas fa-star"></i>'.repeat(Math.floor(p.rating))}
                            <span>(${p.reviews})</span>
                        </div>
                        <div class="product-footer">
                            <div class="price-col">
                                <span class="price-now">$${p.price.toLocaleString()}</span>
                                ${p.oldPrice ? `<span class="price-then">$${p.oldPrice.toLocaleString()}</span>` : ''}
                            </div>
                            <button class="add-cart-btn" onclick="addToBag(${p.id})">
                                <i class="fas fa-plus"></i> Add
                            </button>
                        </div>
                    </div>
                `;
                productsGrid.appendChild(card);
            });
        }

        // Cart Logic
        function addToBag(id) {
            const product = PRODUCTS.find(p => p.id === id);
            if (!product) return;
            cart.push(product);
            updateCart();
            openCart();
        }

        function updateCart() {
            cartBadge.textContent = cart.length;
            if (cart.length === 0) {
                cartItemsList.innerHTML = '<p style="color:var(--muted); font-size:14px; text-align:center; margin-top:40px;">Your bag is currently empty.</p>';
                cartTotalSum.textContent = '$0.00';
                return;
            }

            cartItemsList.innerHTML = '';
            let total = 0;
            cart.forEach((item, index) => {
                total += item.price;
                const row = document.createElement('div');
                row.className = 'cart-item';
                row.innerHTML = `
                    <img src="${item.img}" alt="${item.title}">
                    <div style="flex:1;">
                        <div class="cart-item-title">${item.title}</div>
                        <div class="cart-item-price">$${item.price.toLocaleString()}</div>
                    </div>
                    <button class="action-btn" style="width:30px; height:30px; border-radius:6px;" onclick="removeFromBag(${index})">
                        <i class="fas fa-trash" style="font-size:11px;"></i>
                    </button>
                `;
                cartItemsList.appendChild(row);
            });
            cartTotalSum.textContent = `$${total.toLocaleString()}.00`;
        }

        function removeFromBag(index) {
            cart.splice(index, 1);
            updateCart();
        }

        function openCart() {
            cartDrawer.classList.add('active');
            cartOverlay.classList.add('active');
        }

        function closeCart() {
            cartDrawer.classList.remove('active');
            cartOverlay.classList.remove('active');
        }

        document.getElementById('openCartBtn').addEventListener('click', openCart);
        document.getElementById('closeCartBtn').addEventListener('click', closeCart);
        cartOverlay.addEventListener('click', closeCart);

        // Filter Logic
        document.querySelectorAll('.filter-chip').forEach(btn => {
            btn.addEventListener('click', () => {
                document.querySelectorAll('.filter-chip').forEach(b => b.classList.remove('active'));
                btn.classList.add('active');
                const type = btn.dataset.filter;
                displayProducts(type === 'all' ? PRODUCTS : PRODUCTS.filter(p => p.category === type));
            });
        });

        // Search Input
        document.getElementById('productSearch').addEventListener('input', (e) => {
            const query = e.target.value.toLowerCase().trim();
            displayProducts(PRODUCTS.filter(p => p.title.toLowerCase().includes(query) || p.category.toLowerCase().includes(query)));
        });

        // Hero Scroll
        document.getElementById('heroShopBtn').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        });

        // Deal Button
        document.getElementById('dealBuyBtn').addEventListener('click', () => {
            cart.push({ id: 99, title: 'MacBook Pro 14" M3 Pro', price: 1799, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80' });
            updateCart();
            openCart();
        });

        // Initial Load
        displayProducts(PRODUCTS);
        document.getElementById('yearVal').textContent = new Date().getFullYear();
    </script>
</body>
</html>
