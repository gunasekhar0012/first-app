<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>AURA Precision Hardware & Objects</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&family=Space+Grotesk:wght@500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        :root {
            --bg: #08090c;
            --surface: #101217;
            --surface-elevated: #171a22;
            --surface-hover: #1f232e;
            --border: rgba(255, 255, 255, 0.08);
            --border-strong: rgba(255, 255, 255, 0.16);
            --text: #f3f4f6;
            --text-muted: #8b92a2;
            --accent: #3b82f6;
            --accent-glow: rgba(59, 130, 246, 0.2);
            --radius-sm: 8px;
            --radius-md: 14px;
            --radius-lg: 22px;
            --container: 1280px;
            --transition: all 0.24s cubic-bezier(0.16, 1, 0.3, 1);
        }

        * { box-sizing: border-box; margin: 0; padding: 0; }
        html { scroll-behavior: smooth; }

        body {
            font-family: 'Plus Jakarta Sans', system-ui, sans-serif;
            background: var(--bg);
            color: var(--text);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            overflow-x: hidden;
        }

        .mono { font-family: 'Space Grotesk', monospace; }
        a { color: inherit; text-decoration: none; }
        .container { width: 100%; max-width: var(--container); margin: 0 auto; padding: 0 28px; }

        /* Top Announcement */
        .ribbon {
            background: #0f1118;
            border-bottom: 1px solid var(--border);
            padding: 10px 20px;
            font-size: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
            letter-spacing: 0.02em;
        }
        .ribbon-tag {
            background: rgba(255, 255, 255, 0.1);
            color: #fff;
            padding: 2px 8px;
            border-radius: 4px;
            font-weight: 700;
            font-size: 10px;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(8, 9, 12, 0.75);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            height: 76px;
            gap: 20px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 800;
            font-size: 21px;
            letter-spacing: -0.04em;
        }

        .brand-dot {
            width: 10px;
            height: 10px;
            border-radius: 2px;
            background: #fff;
            transform: rotate(45deg);
        }

        nav.main-nav ul {
            display: flex;
            gap: 4px;
            list-style: none;
        }

        nav.main-nav a {
            padding: 8px 16px;
            border-radius: var(--radius-sm);
            font-size: 13px;
            font-weight: 600;
            color: var(--text-muted);
            transition: var(--transition);
        }

        nav.main-nav a:hover {
            color: #fff;
            background: var(--surface);
        }

        .search-container {
            display: flex;
            align-items: center;
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: 999px;
            padding: 0 16px;
            width: 260px;
            transition: var(--transition);
        }

        .search-container:focus-within {
            border-color: var(--border-strong);
            box-shadow: 0 0 0 3px var(--accent-glow);
            width: 300px;
        }

        .search-container input {
            border: none;
            background: transparent;
            color: #fff;
            outline: none;
            width: 100%;
            padding: 10px 0;
            font-size: 13px;
            font-family: inherit;
        }

        .search-container i {
            color: var(--text-muted);
            font-size: 13px;
            margin-right: 10px;
        }

        .header-actions { display: flex; align-items: center; gap: 8px; }

        .btn-icon {
            background: var(--surface);
            border: 1px solid var(--border);
            color: var(--text-muted);
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            cursor: pointer;
            transition: var(--transition);
        }

        .btn-icon:hover { color: #fff; border-color: var(--border-strong); }

        .btn-cart {
            background: #fff;
            color: #000;
            border: none;
            padding: 9px 16px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: 700;
            cursor: pointer;
            display: flex;
            align-items: center;
            gap: 8px;
            transition: var(--transition);
        }

        .btn-cart:hover {
            background: #e5e7eb;
            transform: translateY(-1px);
        }

        .cart-count {
            background: #000;
            color: #fff;
            font-size: 10px;
            font-weight: 800;
            padding: 2px 7px;
            border-radius: 999px;
        }

        /* Hero */
        .hero {
            padding: 56px 0 72px;
        }

        .hero-bento {
            display: grid;
            grid-template-columns: 1.35fr 0.65fr;
            gap: 20px;
        }

        .hero-main {
            position: relative;
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 64px 56px;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            min-height: 520px;
        }

        .hero-bg-media {
            position: absolute;
            inset: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.45;
            filter: grayscale(20%);
            transition: transform 1.2s ease;
        }

        .hero-main:hover .hero-bg-media { transform: scale(1.03); }

        .hero-overlay {
            position: absolute;
            inset: 0;
            background: linear-gradient(180deg, rgba(16, 18, 23, 0.2) 0%, rgba(16, 18, 23, 0.95) 85%);
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 580px;
        }

        .hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.08em;
            text-transform: uppercase;
            color: #93c5fd;
            margin-bottom: 14px;
        }

        .hero h1 {
            font-size: 52px;
            font-weight: 800;
            line-height: 1.05;
            letter-spacing: -0.04em;
            margin-bottom: 16px;
        }

        .hero p {
            color: var(--text-muted);
            font-size: 15px;
            line-height: 1.6;
            margin-bottom: 28px;
        }

        .hero-side {
            display: grid;
            grid-template-rows: 1fr 1fr;
            gap: 20px;
        }

        .side-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 32px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            position: relative;
            overflow: hidden;
            transition: var(--transition);
        }

        .side-card:hover {
            border-color: var(--border-strong);
            transform: translateY(-2px);
        }

        .side-card img {
            position: absolute;
            right: -20px;
            bottom: -20px;
            width: 170px;
            height: 170px;
            object-fit: cover;
            border-radius: var(--radius-md);
            opacity: 0.8;
            transition: var(--transition);
        }

        .side-card:hover img {
            opacity: 1;
            transform: scale(1.05);
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 13px 26px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: 700;
            cursor: pointer;
            border: none;
            transition: var(--transition);
        }

        .btn-white {
            background: #fff;
            color: #000;
        }
        .btn-white:hover { background: #e5e7eb; }

        .btn-secondary {
            background: rgba(255, 255, 255, 0.08);
            color: #fff;
            border: 1px solid var(--border);
        }
        .btn-secondary:hover { background: rgba(255, 255, 255, 0.14); }

        /* Filter Controls */
        .filter-wrapper {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 28px;
            flex-wrap: wrap;
            gap: 16px;
        }

        .filter-pills {
            display: flex;
            gap: 8px;
            overflow-x: auto;
            scrollbar-width: none;
        }

        .filter-btn {
            background: var(--surface);
            border: 1px solid var(--border);
            color: var(--text-muted);
            padding: 9px 18px;
            border-radius: 999px;
            font-size: 12px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            white-space: nowrap;
        }

        .filter-btn.active, .filter-btn:hover {
            background: #fff;
            color: #000;
            border-color: #fff;
        }

        /* Products Grid */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 24px;
            margin-bottom: 80px;
        }

        .product-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            position: relative;
            transition: var(--transition);
        }

        .product-card:hover {
            border-color: var(--border-strong);
            transform: translateY(-4px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
        }

        .product-media {
            position: relative;
            width: 100%;
            height: 280px;
            background: #0d0f14;
            overflow: hidden;
        }

        .product-media img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s cubic-bezier(0.16, 1, 0.3, 1);
        }

        .product-card:hover .product-media img {
            transform: scale(1.06);
        }

        .product-badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: rgba(8, 9, 12, 0.85);
            backdrop-filter: blur(8px);
            border: 1px solid var(--border);
            color: #fff;
            font-size: 10px;
            font-weight: 700;
            padding: 3px 8px;
            border-radius: 4px;
            text-transform: uppercase;
        }

        .product-details {
            padding: 20px;
            display: flex;
            flex-direction: column;
            flex: 1;
        }

        .product-cat {
            font-size: 11px;
            font-weight: 700;
            color: var(--text-muted);
            text-transform: uppercase;
            letter-spacing: 0.05em;
            margin-bottom: 4px;
        }

        .product-title {
            font-size: 16px;
            font-weight: 700;
            margin-bottom: 12px;
            line-height: 1.35;
        }

        .product-footer {
            margin-top: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-top: 14px;
            border-top: 1px solid var(--border);
        }

        .product-price {
            font-size: 17px;
            font-weight: 700;
        }

        .btn-add {
            background: var(--surface-elevated);
            border: 1px solid var(--border);
            color: #fff;
            width: 38px;
            height: 38px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            cursor: pointer;
            transition: var(--transition);
        }

        .btn-add:hover {
            background: #fff;
            color: #000;
            border-color: #fff;
        }

        /* Split Feature Section */
        .spotlight {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
            margin-bottom: 80px;
        }

        .spotlight-media img {
            width: 100%;
            height: 100%;
            min-height: 420px;
            object-fit: cover;
            display: block;
        }

        .spotlight-info {
            padding: 56px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        /* Cart Drawer */
        .drawer-overlay {
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.7);
            backdrop-filter: blur(8px);
            z-index: 90;
            opacity: 0;
            pointer-events: none;
            transition: opacity 0.3s ease;
        }

        .drawer-overlay.open { opacity: 1; pointer-events: auto; }

        .drawer {
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
            padding: 28px;
        }

        .drawer.open { transform: translateX(0); }

        .drawer-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-bottom: 20px;
            border-bottom: 1px solid var(--border);
        }

        .drawer-items {
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
            background: var(--surface-elevated);
            padding: 12px;
            border-radius: var(--radius-sm);
            border: 1px solid var(--border);
        }

        .cart-row img {
            width: 60px;
            height: 60px;
            border-radius: 6px;
            object-fit: cover;
        }

        .cart-qty-ctrl {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 6px;
            font-size: 12px;
        }

        .qty-btn {
            background: rgba(255, 255, 255, 0.1);
            border: none;
            color: #fff;
            width: 22px;
            height: 22px;
            border-radius: 4px;
            cursor: pointer;
            display: grid;
            place-items: center;
        }

        .drawer-footer {
            border-top: 1px solid var(--border);
            padding-top: 20px;
        }

        .total-box {
            display: flex;
            justify-content: space-between;
            font-size: 16px;
            font-weight: 700;
            margin-bottom: 18px;
        }

        /* Footer */
        footer {
            border-top: 1px solid var(--border);
            padding: 56px 0 32px;
            background: var(--surface);
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-col h4 {
            font-size: 13px;
            font-weight: 700;
            letter-spacing: 0.04em;
            margin-bottom: 16px;
            text-transform: uppercase;
        }

        .footer-col ul {
            list-style: none;
            display: flex;
            flex-direction: column;
            gap: 10px;
            font-size: 13px;
            color: var(--text-muted);
        }

        .footer-col a:hover { color: #fff; }

        @media (max-width: 1024px) {
            .hero-bento { grid-template-columns: 1fr; }
            .product-grid { grid-template-columns: repeat(3, 1fr); }
            .spotlight { grid-template-columns: 1fr; }
        }

        @media (max-width: 768px) {
            nav.main-nav, .search-container { display: none; }
            .product-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
            .hero h1 { font-size: 38px; }
            .footer-grid { grid-template-columns: 1fr; }
        }

        @media (max-width: 480px) {
            .product-grid { grid-template-columns: 1fr; }
        }
    </style>
</head>

<body>
    <!-- Top Announcement -->
    <div class="ribbon">
        <span class="ribbon-tag">DISPATCH</span>
        Complimentary global priority courier shipping on all orders over $200.
    </div>

    <!-- Navigation Header -->
    <header>
        <div class="container header-inner">
            <a class="brand" href="#">
                <span class="brand-dot"></span>
                <span>AURA</span>
            </a>

            <nav class="main-nav" aria-label="Global Store">
                <ul>
                    <li><a href="#">Showroom</a></li>
                    <li><a href="#catalog">Collection</a></li>
                    <li><a href="#spotlight">Spotlight</a></li>
                </ul>
            </nav>

            <div class="search-container">
                <i class="fas fa-search"></i>
                <input type="search" id="searchInput" placeholder="Search devices, audio..." />
            </div>

            <div class="header-actions">
                <button class="btn-icon" aria-label="Account"><i class="far fa-user"></i></button>
                <button class="btn-cart" id="openDrawerBtn">
                    <i class="fas fa-shopping-bag"></i>
                    <span>Bag</span>
                    <span class="cart-count" id="cartCounter">0</span>
                </button>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero Section -->
        <section class="hero container">
            <div class="hero-bento">
                <div class="hero-main">
                    <img class="hero-bg-media" src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=1200&q=80" alt="Studio Headphones Ambient" />
                    <div class="hero-overlay"></div>
                    <div class="hero-content">
                        <span class="hero-tag mono"><i class="fas fa-circle" style="font-size: 7px; color: #3b82f6;"></i> Generation 04 Flagship</span>
                        <h1>Studio Sound. Zero Compromise.</h1>
                        <p>CNC-machined aluminum housings, custom 40mm bio-cellulose drivers, and seamless spatial acoustic calibration.</p>
                        <div style="display: flex; gap: 12px;">
                            <button class="btn btn-white" id="heroScrollBtn">Explore Catalog <i class="fas fa-arrow-right"></i></button>
                            <a href="#spotlight" class="btn btn-secondary">Learn More</a>
                        </div>
                    </div>
                </div>

                <div class="hero-side">
                    <div class="side-card">
                        <div>
                            <span class="mono" style="font-size: 11px; color: var(--text-muted); text-transform: uppercase;">Acoustic Gear</span>
                            <h3 style="font-size: 20px; font-weight: 700; margin-top: 4px;">Wireless Audio</h3>
                        </div>
                        <img src="https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=400&q=80" alt="Earbuds" />
                    </div>
                    <div class="side-card">
                        <div>
                            <span class="mono" style="font-size: 11px; color: var(--text-muted); text-transform: uppercase;">Everyday Carry</span>
                            <h3 style="font-size: 20px; font-weight: 700; margin-top: 4px;">Timepieces</h3>
                        </div>
                        <img src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=400&q=80" alt="Modern Watch" />
                    </div>
                </div>
            </div>
        </section>

        <!-- Product Catalog -->
        <section id="catalog" class="container">
            <div class="filter-wrapper">
                <div>
                    <h2 style="font-size: 28px; font-weight: 800; letter-spacing: -0.03em;">The Hardware Lineup</h2>
                    <p style="color: var(--text-muted); font-size: 14px;">Select department to filter inventory</p>
                </div>
                <div class="filter-pills" id="filterContainer">
                    <button class="filter-btn active" data-filter="all">All Models</button>
                    <button class="filter-btn" data-filter="audio">Audio &amp; Sound</button>
                    <button class="filter-btn" data-filter="workspace">Workspace</button>
                    <button class="filter-btn" data-filter="optics">Photography</button>
                    <button class="filter-btn" data-filter="carry">Carry &amp; Wear</button>
                </div>
            </div>

            <div class="product-grid" id="productContainer"></div>
        </section>

        <!-- Spotlight Section -->
        <section id="spotlight" class="container">
            <div class="spotlight">
                <div class="spotlight-media">
                    <img src="https://images.unsplash.com/photo-1516321497487-e288fb19713f?auto=format&fit=crop&w=900&q=80" alt="Workspace display" />
                </div>
                <div class="spotlight-info">
                    <span class="mono" style="font-size: 11px; font-weight: 700; color: var(--accent); letter-spacing: 0.08em; text-transform: uppercase;">Workspace Architecture</span>
                    <h2 style="font-size: 34px; font-weight: 800; margin: 8px 0 16px; line-height: 1.15;">Engineered for Flow State Productivity</h2>
                    <p style="color: var(--text-muted); font-size: 15px; margin-bottom: 28px; line-height: 1.6;">Our desk pads, monitor arms, and aluminum stands are designed from ground-up tolerances to reduce physical strain and declutter your primary surface.</p>
                    <button class="btn btn-white" style="width: fit-content;" onclick="addToBag(3)">Add Setup Bundle ($210)</button>
                </div>
            </div>
        </section>
    </main>

    <!-- Side Cart Drawer -->
    <div class="drawer-overlay" id="drawerOverlay"></div>
    <aside class="drawer" id="cartDrawer" aria-label="Shopping Bag">
        <div class="drawer-header">
            <h3 style="font-size: 18px; font-weight: 800;">Shopping Bag</h3>
            <button class="btn-icon" id="closeDrawerBtn" style="width: 34px; height: 34px;"><i class="fas fa-times"></i></button>
        </div>
        <div class="drawer-items" id="drawerItems">
            <p style="color: var(--text-muted); font-size: 14px; text-align: center; margin-top: 48px;">Your bag is currently empty.</p>
        </div>
        <div class="drawer-footer">
            <div class="total-box">
                <span>Subtotal:</span>
                <span id="subtotalVal" class="mono">$0.00</span>
            </div>
            <button class="btn btn-white" style="width: 100%; justify-content: center;" onclick="alert('Proceeding to checkout...')">Proceed to Checkout</button>
        </div>
    </aside>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-grid">
                <div>
                    <div class="brand" style="margin-bottom: 12px;"><span class="brand-dot"></span><span>AURA</span></div>
                    <p style="color: var(--text-muted); font-size: 13px; max-width: 320px;">Industrial hardware, audio gear, and functional everyday tools crafted for precision performance.</p>
                </div>
                <div class="footer-col">
                    <h4>Collections</h4>
                    <ul>
                        <li><a href="#">Audio Components</a></li>
                        <li><a href="#">Workspace Systems</a></li>
                        <li><a href="#">Optical Precision</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Support</h4>
                    <ul>
                        <li><a href="#">Tracking Portal</a></li>
                        <li><a href="#">Warranty Documentation</a></li>
                        <li><a href="#">Global Concierge</a></li>
                    </ul>
                </div>
            </div>
            <div style="border-top: 1px solid var(--border); padding-top: 24px; display: flex; justify-content: space-between; font-size: 12px; color: var(--text-muted);">
                <span>© <span id="yearSpan"></span> AURA Labs Ltd.</span>
                <span>Crafted with intentional minimalism.</span>
            </div>
        </div>
    </footer>

    <script>
        const PRODUCTS = [
            { id: 1, title: 'AURA Studio Master Over-Ear', price: 349, category: 'audio', badge: 'Flagship', img: 'https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=600&q=80' },
            { id: 2, title: 'Minimalist Mechanical Keyboard 75%', price: 189, category: 'workspace', badge: 'Hot', img: 'https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=600&q=80' },
            { id: 3, title: 'Matte Aluminum Laptop Stand', price: 79, category: 'workspace', badge: null, img: 'https://images.unsplash.com/photo-1527864550417-7fd91fc51a46?auto=format&fit=crop&w=600&q=80' },
            { id: 4, title: 'Leica Minimalist 35mm Compact', price: 1850, category: 'optics', badge: 'Limited', img: 'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=600&q=80' },
            { id: 5, title: 'True Wireless Noise-Cancelling Pods', price: 179, category: 'audio', badge: null, img: 'https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=600&q=80' },
            { id: 6, title: 'Waterproof Roll-top Daypack 22L', price: 145, category: 'carry', badge: null, img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80' },
            { id: 7, title: 'Automatic Bauhaus Steel Timepiece', price: 420, category: 'carry', badge: 'Sale', img: 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=600&q=80' },
            { id: 8, title: 'Desk Mat — Merino Wool Felt', price: 55, category: 'workspace', badge: null, img: 'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?auto=format&fit=crop&w=600&q=80' }
        ];

        let cart = [];
        const productContainer = document.getElementById('productContainer');
        const cartCounter = document.getElementById('cartCounter');
        const cartDrawer = document.getElementById('cartDrawer');
        const drawerOverlay = document.getElementById('drawerOverlay');
        const drawerItems = document.getElementById('drawerItems');
        const subtotalVal = document.getElementById('subtotalVal');

        function renderProducts(items) {
            productContainer.innerHTML = '';
            items.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product-card';
                el.innerHTML = `
                    <div class="product-media">
                        ${p.badge ? `<span class="product-badge">${p.badge}</span>` : ''}
                        <img src="${p.img}" alt="${p.title}" loading="lazy" />
                    </div>
                    <div class="product-details">
                        <span class="product-cat mono">${p.category}</span>
                        <h3 class="product-title">${p.title}</h3>
                        <div class="product-footer">
                            <span class="product-price mono">$${p.price.toLocaleString()}</span>
                            <button class="btn-add" onclick="addToBag(${p.id})" aria-label="Add to cart">
                                <i class="fas fa-plus"></i>
                            </button>
                        </div>
                    </div>
                `;
                productContainer.appendChild(el);
            });
        }

        function addToBag(id) {
            const item = PRODUCTS.find(x => x.id === id);
            if (!item) return;
            const existing = cart.find(x => x.id === id);
            if (existing) {
                existing.qty++;
            } else {
                cart.push({ ...item, qty: 1 });
            }
            updateCart();
            openDrawer();
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
            cartCounter.textContent = count;

            if (cart.length === 0) {
                drawerItems.innerHTML = '<p style="color: var(--text-muted); font-size: 14px; text-align: center; margin-top: 48px;">Your bag is currently empty.</p>';
                subtotalVal.textContent = '$0.00';
                return;
            }

            drawerItems.innerHTML = '';
            let total = 0;
            cart.forEach(item => {
                total += item.price * item.qty;
                const row = document.createElement('div');
                row.className = 'cart-row';
                row.innerHTML = `
                    <img src="${item.img}" alt="${item.title}">
                    <div style="flex: 1;">
                        <div style="font-size: 13px; font-weight: 700;">${item.title}</div>
                        <div style="font-size: 12px; color: var(--text-muted);">$${item.price} each</div>
                        <div class="cart-qty-ctrl">
                            <button class="qty-btn" onclick="changeQty(${item.id}, -1)">-</button>
                            <span class="mono">${item.qty}</span>
                            <button class="qty-btn" onclick="changeQty(${item.id}, 1)">+</button>
                        </div>
                    </div>
                `;
                drawerItems.appendChild(row);
            });
            subtotalVal.textContent = `$${total.toLocaleString()}.00`;
        }

        function openDrawer() {
            cartDrawer.classList.add('open');
            drawerOverlay.classList.add('open');
        }

        function closeDrawer() {
            cartDrawer.classList.remove('open');
            drawerOverlay.classList.remove('open');
        }

        document.getElementById('openDrawerBtn').addEventListener('click', openDrawer);
        document.getElementById('closeDrawerBtn').addEventListener('click', closeDrawer);
        drawerOverlay.addEventListener('click', closeDrawer);

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
