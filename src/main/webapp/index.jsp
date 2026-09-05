<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Guna — Premium Tech & Lifestyle</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        /* =========================================================
           PREMIUM DARK DESIGN SYSTEM
        ========================================================= */
        :root {
            /* Core Backgrounds */
            --bg-base: #09090b;
            --bg-surface: #121217;
            --bg-glass: rgba(18, 18, 23, 0.65);
            
            /* Accents (Neon/Cyberpunk vibe) */
            --primary: #00ffd5; 
            --primary-dark: #00ccaa;
            --secondary: #9d00ff;
            --accent: #ff0055;

            /* Text */
            --text-primary: #ffffff;
            --text-secondary: #a1a1aa;
            --text-light: #71717a;
            --text-inverse: #09090b;

            /* Borders */
            --border: rgba(255, 255, 255, 0.08);
            --border-hover: rgba(255, 255, 255, 0.2);

            /* Gradients */
            --gradient-primary: linear-gradient(135deg, var(--primary) 0%, #0088ff 100%);
            --gradient-glow: linear-gradient(135deg, var(--secondary) 0%, var(--accent) 100%);
            --gradient-dark: linear-gradient(135deg, #181820 0%, #09090b 100%);

            /* Shadows & Glows */
            --shadow-sm: 0 4px 12px rgba(0, 0, 0, 0.5);
            --shadow-glow: 0 0 20px rgba(0, 255, 213, 0.25);
            --shadow-glow-hover: 0 0 30px rgba(0, 255, 213, 0.4);

            /* Radii */
            --radius-sm: 8px;
            --radius-md: 16px;
            --radius-lg: 24px;
            --radius-xl: 32px;

            --container: 1240px;
            --transition: 300ms cubic-bezier(0.16, 1, 0.3, 1);
        }

        /* =========================================================
           RESET & BASE
        ========================================================= */
        *, *::before, *::after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html { scroll-behavior: smooth; }

        body {
            font-family: "Plus Jakarta Sans", system-ui, sans-serif;
            background-color: var(--bg-base);
            /* Deep radial glow in the background */
            background-image: 
                radial-gradient(circle at 15% 15%, rgba(157, 0, 255, 0.15), transparent 40%),
                radial-gradient(circle at 85% 85%, rgba(0, 255, 213, 0.1), transparent 40%);
            background-attachment: fixed;
            color: var(--text-primary);
            line-height: 1.5;
            -webkit-font-smoothing: antialiased;
            min-height: 100vh;
            overflow-x: hidden;
        }

        button, input { font: inherit; }
        button { cursor: pointer; }
        a { color: inherit; text-decoration: none; }
        img { max-width: 100%; display: block; }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding-inline: 24px;
        }

        /* =========================================================
           ANNOUNCEMENT
        ========================================================= */
        .announcement {
            min-height: 38px;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
            padding: 8px 16px;
            color: var(--text-inverse);
            background: var(--gradient-primary);
            font-size: 12px;
            font-weight: 700;
            text-align: center;
            letter-spacing: 0.02em;
        }

        .announcement-badge {
            padding: 2px 8px;
            border-radius: 4px;
            background: var(--text-inverse);
            color: var(--primary);
            font-size: 10px;
            font-weight: 800;
            letter-spacing: 0.05em;
        }

        /* =========================================================
           HEADER
        ========================================================= */
        .header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: var(--bg-glass);
            backdrop-filter: blur(24px);
            -webkit-backdrop-filter: blur(24px);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            min-height: 76px;
            display: grid;
            grid-template-columns: auto 1fr auto;
            align-items: center;
            gap: 32px;
        }

        .brand {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            font-size: 24px;
            font-weight: 800;
            letter-spacing: -0.04em;
        }

        .brand-icon {
            width: 36px;
            height: 36px;
            display: grid;
            place-items: center;
            border-radius: 12px;
            background: var(--gradient-primary);
            color: var(--text-inverse);
            box-shadow: var(--shadow-glow);
        }

        .brand-name {
            background: #fff;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .main-nav ul {
            list-style: none;
            display: flex;
            justify-content: center;
            gap: 8px;
        }

        .main-nav a {
            display: block;
            padding: 10px 18px;
            color: var(--text-secondary);
            border-radius: 999px;
            font-size: 13px;
            font-weight: 600;
            transition: var(--transition);
        }

        .main-nav a:hover, .main-nav a.active {
            color: var(--primary);
            background: rgba(0, 255, 213, 0.1);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .search-box {
            width: 240px;
            display: flex;
            align-items: center;
            padding: 0 16px;
            background: var(--bg-surface);
            border: 1px solid var(--border);
            border-radius: 999px;
            transition: var(--transition);
        }

        .search-box:focus-within {
            width: 280px;
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(0, 255, 213, 0.15);
        }

        .search-box i { color: var(--text-light); font-size: 13px; }
        .search-box input {
            width: 100%;
            padding: 12px 10px;
            border: 0;
            outline: 0;
            background: transparent;
            color: var(--text-primary);
            font-size: 13px;
        }

        .icon-button {
            width: 44px;
            height: 44px;
            display: grid;
            place-items: center;
            background: var(--bg-surface);
            border: 1px solid var(--border);
            border-radius: 50%;
            color: var(--text-primary);
            transition: var(--transition);
        }

        .icon-button:hover {
            border-color: var(--primary);
            color: var(--primary);
            transform: translateY(-2px);
            box-shadow: var(--shadow-glow);
        }

        .cart-button {
            min-height: 44px;
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 0 18px;
            border: 1px solid var(--primary);
            border-radius: 999px;
            background: rgba(0, 255, 213, 0.1);
            color: var(--primary);
            font-size: 13px;
            font-weight: 700;
            transition: var(--transition);
        }

        .cart-button:hover {
            background: var(--primary);
            color: var(--text-inverse);
            box-shadow: var(--shadow-glow-hover);
            transform: translateY(-2px);
        }

        .cart-count {
            min-width: 22px;
            height: 22px;
            display: grid;
            place-items: center;
            padding-inline: 6px;
            border-radius: 999px;
            background: var(--primary);
            color: var(--text-inverse);
            font-size: 11px;
            font-weight: 800;
            transition: var(--transition);
        }

        .cart-button:hover .cart-count {
            background: var(--bg-base);
            color: var(--primary);
        }

        /* =========================================================
           HERO
        ========================================================= */
        .hero { padding: 60px 0 80px; }

        .hero-card {
            position: relative;
            overflow: hidden;
            display: grid;
            grid-template-columns: 1fr 1fr;
            align-items: center;
            min-height: 520px;
            padding: 70px;
            border-radius: var(--radius-xl);
            background: var(--gradient-dark);
            border: 1px solid rgba(255,255,255,0.05);
            box-shadow: inset 0 0 80px rgba(0,0,0,0.5), 0 20px 40px rgba(0,0,0,0.4);
        }

        /* Glowing Orbs in Hero */
        .hero-card::before, .hero-card::after {
            content: "";
            position: absolute;
            border-radius: 50%;
            filter: blur(80px);
            z-index: 0;
        }
        .hero-card::before {
            width: 400px; height: 400px;
            top: -100px; right: -50px;
            background: rgba(157, 0, 255, 0.3);
        }
        .hero-card::after {
            width: 300px; height: 300px;
            bottom: -50px; left: 20%;
            background: rgba(0, 255, 213, 0.2);
        }

        .hero-content {
            position: relative;
            z-index: 1;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 6px 14px;
            border: 1px solid var(--border-hover);
            border-radius: 999px;
            background: rgba(255, 255, 255, 0.05);
            color: var(--primary);
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.1em;
            text-transform: uppercase;
        }

        .hero-title {
            margin-top: 24px;
            font-size: clamp(42px, 5vw, 64px);
            line-height: 1.1;
            letter-spacing: -0.03em;
            font-weight: 800;
        }

        .hero-description {
            max-width: 480px;
            margin-top: 24px;
            color: var(--text-secondary);
            font-size: 16px;
            line-height: 1.8;
        }

        .hero-actions {
            display: flex;
            flex-wrap: wrap;
            gap: 16px;
            margin-top: 40px;
        }

        .button {
            min-height: 48px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 0 28px;
            border: 0;
            border-radius: 999px;
            font-size: 14px;
            font-weight: 700;
            transition: var(--transition);
        }

        .button-primary {
            background: var(--gradient-primary);
            color: var(--text-inverse);
            box-shadow: var(--shadow-glow);
        }

        .button-primary:hover {
            transform: translateY(-3px) scale(1.02);
            box-shadow: var(--shadow-glow-hover);
        }

        .button-secondary {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid var(--border);
            color: var(--text-primary);
        }

        .button-secondary:hover {
            background: rgba(255, 255, 255, 0.1);
            border-color: var(--border-hover);
        }

        .hero-image {
            position: relative;
            z-index: 1;
            display: flex;
            justify-content: flex-end;
        }

        .hero-image img {
            width: 100%;
            max-width: 460px;
            height: 380px;
            object-fit: cover;
            border: 1px solid rgba(255,255,255,0.1);
            border-radius: var(--radius-lg);
            box-shadow: 0 30px 60px rgba(0, 0, 0, 0.6);
            transform: perspective(1000px) rotateY(-5deg) rotateX(5deg);
            transition: transform 0.5s ease;
        }
        .hero-image img:hover {
            transform: perspective(1000px) rotateY(0deg) rotateX(0deg);
        }

        /* =========================================================
           CATALOG
        ========================================================= */
        .catalog { padding-bottom: 90px; }

        .catalog-header {
            display: flex;
            justify-content: space-between;
            align-items: flex-end;
            gap: 24px;
            margin-bottom: 40px;
        }

        .section-label {
            margin-bottom: 8px;
            color: var(--secondary);
            font-size: 12px;
            font-weight: 800;
            letter-spacing: 0.1em;
            text-transform: uppercase;
        }

        .section-title {
            font-size: 36px;
            font-weight: 800;
            line-height: 1.2;
            letter-spacing: -0.03em;
        }

        .section-description {
            margin-top: 8px;
            color: var(--text-secondary);
            font-size: 15px;
        }

        .filters {
            display: flex;
            gap: 12px;
            overflow-x: auto;
            scrollbar-width: none;
            padding-bottom: 5px;
        }
        .filters::-webkit-scrollbar { display: none; }

        .filter-button {
            white-space: nowrap;
            padding: 10px 20px;
            border: 1px solid var(--border);
            border-radius: 999px;
            background: var(--bg-surface);
            color: var(--text-secondary);
            font-size: 13px;
            font-weight: 600;
            transition: var(--transition);
        }

        .filter-button:hover, .filter-button.active {
            background: var(--text-primary);
            border-color: var(--text-primary);
            color: var(--text-inverse);
            box-shadow: 0 4px 15px rgba(255,255,255,0.15);
        }

        /* =========================================================
           PRODUCTS
        ========================================================= */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, minmax(0, 1fr));
            gap: 24px;
        }

        .product-card {
            position: relative;
            display: flex;
            flex-direction: column;
            overflow: hidden;
            background: var(--bg-surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-md);
            transition: var(--transition);
        }

        .product-card:hover {
            transform: translateY(-8px);
            border-color: var(--border-hover);
            box-shadow: 0 15px 35px rgba(0,0,0,0.5), 0 0 15px rgba(0, 255, 213, 0.05);
        }

        .product-media {
            position: relative;
            aspect-ratio: 1 / 1;
            overflow: hidden;
            background: #000;
        }

        .product-media img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.85; /* Blend slightly with dark bg */
            transition: transform 700ms ease, opacity 700ms ease;
        }

        .product-card:hover .product-media img {
            transform: scale(1.08);
            opacity: 1;
        }

        .product-badge {
            position: absolute;
            top: 16px; left: 16px;
            padding: 6px 10px;
            border-radius: 6px;
            background: var(--gradient-glow);
            color: #fff;
            font-size: 10px;
            font-weight: 800;
            letter-spacing: 0.1em;
            text-transform: uppercase;
            box-shadow: 0 4px 10px rgba(255,0,85,0.3);
        }

        .wishlist-button {
            position: absolute;
            top: 16px; right: 16px;
            width: 36px; height: 36px;
            display: grid;
            place-items: center;
            border: 1px solid var(--border);
            border-radius: 50%;
            background: rgba(15, 15, 20, 0.6);
            color: var(--text-primary);
            backdrop-filter: blur(10px);
            transition: var(--transition);
        }

        .wishlist-button:hover {
            color: var(--accent);
            border-color: var(--accent);
            background: rgba(15, 15, 20, 0.9);
            transform: scale(1.1);
        }

        .product-body {
            display: flex;
            flex-direction: column;
            flex: 1;
            padding: 20px;
        }

        .product-category {
            color: var(--text-light);
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 0.08em;
            text-transform: uppercase;
        }

        .product-title {
            min-height: 48px;
            margin-top: 8px;
            font-size: 15px;
            font-weight: 700;
            line-height: 1.4;
        }

        .product-footer {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 20px;
            padding-top: 16px;
            border-top: 1px solid var(--border);
        }

        .product-price {
            color: var(--primary);
            font-size: 18px;
            font-weight: 800;
        }

        .add-button {
            width: 40px; height: 40px;
            display: grid;
            place-items: center;
            border: 0;
            border-radius: 50%;
            background: var(--text-primary);
            color: var(--text-inverse);
            transition: var(--transition);
        }

        .add-button:hover {
            background: var(--primary);
            transform: scale(1.1) rotate(90deg);
            box-shadow: var(--shadow-glow);
        }

        /* =========================================================
           EMPTY STATE
        ========================================================= */
        .empty-state {
            display: none;
            padding: 80px 20px;
            text-align: center;
            background: var(--bg-surface);
            border: 1px dashed var(--border-hover);
            border-radius: var(--radius-lg);
        }
        .empty-state.visible { display: block; }
        .empty-icon {
            width: 64px; height: 64px;
            display: grid; place-items: center;
            margin: 0 auto 20px;
            border-radius: 50%;
            background: rgba(255,255,255,0.05);
            color: var(--text-secondary);
            font-size: 24px;
        }
        .empty-state h3 { font-size: 18px; font-weight: 700;}
        .empty-state p { margin-top: 8px; color: var(--text-secondary); font-size: 14px; }
        .clear-filters { margin-top: 24px; }

        /* =========================================================
           DEAL SECTION
        ========================================================= */
        .deal-section { padding-bottom: 100px; }

        .deal-card {
            display: grid;
            grid-template-columns: 1fr 1fr;
            overflow: hidden;
            border-radius: var(--radius-xl);
            background: var(--gradient-glow);
            box-shadow: 0 20px 50px rgba(157, 0, 255, 0.2);
            border: 1px solid rgba(255,255,255,0.2);
        }

        .deal-image { min-height: 400px; }
        .deal-image img { width: 100%; height: 100%; object-fit: cover; }

        .deal-content {
            display: flex; flex-direction: column; justify-content: center;
            padding: 64px; background: rgba(9, 9, 11, 0.7); backdrop-filter: blur(10px);
        }

        .deal-label {
            color: var(--primary);
            font-size: 11px; font-weight: 800; letter-spacing: 0.1em; text-transform: uppercase;
        }

        .deal-title {
            margin-top: 12px; font-size: 38px; line-height: 1.1; font-weight: 800;
        }

        .deal-description {
            margin-top: 16px; color: var(--text-secondary); font-size: 15px; line-height: 1.7;
        }

        .countdown { display: flex; gap: 12px; margin: 30px 0; }
        .countdown-box {
            min-width: 64px; padding: 12px 10px;
            border: 1px solid var(--border-hover); border-radius: var(--radius-sm);
            background: rgba(255, 255, 255, 0.05); text-align: center;
        }
        .countdown-number { font-size: 22px; font-weight: 800; color: var(--primary); }
        .countdown-label { margin-top: 4px; font-size: 9px; font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase; }

        .deal-price { display: flex; align-items: baseline; gap: 16px; margin-bottom: 30px; }
        .deal-current-price { font-size: 36px; font-weight: 900; }
        .deal-old-price { opacity: 0.5; text-decoration: line-through; font-size: 20px;}

        .deal-button { width: fit-content; background: #fff; color: #000; box-shadow: 0 0 20px rgba(255,255,255,0.2);}
        .deal-button:hover { background: var(--primary); box-shadow: var(--shadow-glow-hover); transform: translateY(-3px);}

        /* =========================================================
           CART DRAWER
        ========================================================= */
        .cart-overlay {
            position: fixed; inset: 0; z-index: 80;
            background: rgba(0, 0, 0, 0.7); backdrop-filter: blur(8px);
            opacity: 0; visibility: hidden; transition: opacity 300ms ease;
        }
        .cart-overlay.open { opacity: 1; visibility: visible; }

        .cart-drawer {
            position: fixed; top: 0; right: 0; z-index: 90;
            width: min(460px, 100%); height: 100dvh;
            display: flex; flex-direction: column;
            background: var(--bg-surface);
            border-left: 1px solid var(--border);
            transform: translateX(100%);
            transition: transform 400ms cubic-bezier(0.16, 1, 0.3, 1);
            box-shadow: -20px 0 60px rgba(0,0,0,0.8);
        }
        .cart-drawer.open { transform: translateX(0); }

        .cart-header {
            display: flex; align-items: center; justify-content: space-between;
            padding: 24px 32px; border-bottom: 1px solid var(--border);
        }
        .cart-title { font-size: 20px; font-weight: 800; }

        .cart-items {
            flex: 1; overflow-y: auto; padding: 24px 32px;
            display: flex; flex-direction: column; gap: 16px;
        }
        .cart-items::-webkit-scrollbar { width: 6px; }
        .cart-items::-webkit-scrollbar-thumb { background: var(--border-hover); border-radius: 10px; }

        .cart-item {
            display: flex; gap: 16px; padding: 16px;
            background: rgba(255,255,255,0.02);
            border: 1px solid var(--border); border-radius: var(--radius-md);
        }
        .cart-item-image {
            width: 72px; height: 72px; flex: 0 0 72px;
            border-radius: 10px; object-fit: cover; opacity: 0.9;
        }
        .cart-item-info { min-width: 0; flex: 1; }
        .cart-item-title { font-size: 13px; font-weight: 700; line-height: 1.4; }
        .cart-item-price { margin-top: 4px; color: var(--primary); font-size: 12px; font-weight: 700;}

        .quantity-controls { display: flex; align-items: center; gap: 12px; margin-top: 10px; }
        .quantity-button {
            width: 28px; height: 28px; display: grid; place-items: center;
            border: 1px solid var(--border); border-radius: 6px;
            background: transparent; color: var(--text-primary); font-weight: 800; transition: 0.2s;
        }
        .quantity-button:hover { background: var(--text-primary); color: var(--text-inverse); }
        .quantity { min-width: 20px; text-align: center; font-size: 12px; font-weight: 800; }

        .cart-empty { display: flex; flex-direction: column; align-items: center; justify-content: center; height: 100%; color: var(--text-secondary); text-align: center; }
        .cart-empty i { margin-bottom: 16px; font-size: 32px; color: var(--border-hover); }

        .cart-footer { padding: 24px 32px; border-top: 1px solid var(--border); background: var(--bg-surface); }
        .subtotal { display: flex; justify-content: space-between; margin-bottom: 20px; font-size: 18px; font-weight: 800; }
        .checkout-button { width: 100%; padding: 16px; font-size: 15px; }

        /* =========================================================
           TOAST
        ========================================================= */
        .toast {
            position: fixed; left: 50%; bottom: 32px; z-index: 120;
            display: flex; align-items: center; gap: 12px;
            padding: 14px 24px; border: 1px solid var(--primary); border-radius: 999px;
            background: rgba(15, 15, 20, 0.9); backdrop-filter: blur(10px);
            box-shadow: var(--shadow-glow); font-size: 13px; font-weight: 700;
            transform: translate(-50%, 100px); opacity: 0; transition: var(--transition);
        }
        .toast.visible { transform: translate(-50%, 0); opacity: 1; }
        .toast i { color: var(--primary); font-size: 16px; }

        /* =========================================================
           FOOTER
        ========================================================= */
        .footer { padding: 80px 0 40px; background: #050508; border-top: 1px solid var(--border); }
        .footer-grid { display: grid; grid-template-columns: 2fr 1fr 1fr; gap: 60px; padding-bottom: 60px; }
        .footer-description { max-width: 380px; margin-top: 16px; color: var(--text-secondary); font-size: 14px; line-height: 1.8; }
        .footer-title { margin-bottom: 20px; color: var(--text-primary); font-size: 12px; font-weight: 800; letter-spacing: 0.1em; text-transform: uppercase; }
        .footer-links { display: flex; flex-direction: column; gap: 12px; list-style: none; color: var(--text-secondary); font-size: 13px; font-weight: 500;}
        .footer-links a:hover { color: var(--primary); padding-left: 4px; transition: 0.2s ease;}
        .footer-bottom { display: flex; justify-content: space-between; gap: 20px; padding-top: 30px; border-top: 1px solid var(--border); color: var(--text-light); font-size: 12px; }

        /* =========================================================
           RESPONSIVE
        ========================================================= */
        @media (max-width: 1100px) {
            .products-grid { grid-template-columns: repeat(3, 1fr); }
            .hero-card { padding: 50px; }
        }
        @media (max-width: 900px) {
            .hero-card { grid-template-columns: 1fr; text-align: center; }
            .hero-content { display: flex; flex-direction: column; align-items: center; }
            .hero-actions { justify-content: center; }
            .hero-image { display: none; }
            .deal-card { grid-template-columns: 1fr; }
            .deal-image { min-height: 300px; }
        }
        @media (max-width: 768px) {
            .header-inner { gap: 16px; }
            .main-nav, .search-box { display: none; }
            .products-grid { grid-template-columns: repeat(2, 1fr); gap: 16px; }
            .hero-title { font-size: 36px; }
            .catalog-header { flex-direction: column; align-items: flex-start; }
            .filters { width: 100%; }
            .footer-grid { grid-template-columns: 1fr 1fr; gap: 40px; }
            .footer-grid > :first-child { grid-column: 1 / -1; }
        }
        @media (max-width: 480px) {
            .announcement { font-size: 10px; }
            .announcement-badge { display: none; }
            .cart-button span:not(.cart-count) { display: none; }
            .products-grid { grid-template-columns: 1fr; }
            .deal-content { padding: 40px 24px; }
            .countdown-box { min-width: 54px; }
            .footer-grid { grid-template-columns: 1fr; }
            .footer-bottom { flex-direction: column; text-align: center; }
        }
    </style>
</head>
<body>

    <div class="announcement">
        <span class="announcement-badge">NEW DROP</span>
        Spring collection is live. Complimentary express shipping worldwide.
    </div>

    <header class="header">
        <div class="container header-inner">
            <a class="brand" href="#" aria-label="Lumina home">
                <span class="brand-icon"><i class="fas fa-bolt"></i></span>
                <span class="brand-name">LUMINA</span>
            </a>

            <nav class="main-nav" aria-label="Main navigation">
                <ul>
                    <li><a href="#" class="active">Showroom</a></li>
                    <li><a href="#catalog">Collection</a></li>
                    <li><a href="#deals">Deals</a></li>
                </ul>
            </nav>

            <div class="header-actions">
                <label class="search-box" aria-label="Search products">
                    <i class="fas fa-search"></i>
                    <input type="search" id="searchInput" placeholder="Search products..." autocomplete="off">
                </label>
                <button class="icon-button" type="button" aria-label="Account"><i class="far fa-user"></i></button>
                <button class="cart-button" type="button" id="openCartButton" aria-label="Open shopping bag">
                    <i class="fas fa-bag-shopping"></i>
                    <span>Bag</span>
                    <span class="cart-count" id="cartCount" aria-live="polite">0</span>
                </button>
            </div>
        </div>
    </header>

    <main>
        <section class="hero">
            <div class="container">
                <div class="hero-card">
                    <div class="hero-content">
                        <span class="hero-badge">
                            <i class="fas fa-microchip"></i>
                            Cyber Edition 2026
                        </span>
                        <h1 class="hero-title">
                            Next-Gen Tech For<br>Modern Creators.
                        </h1>
                        <p class="hero-description">
                            Elevate your workspace and lifestyle with vivid acoustics, intelligent peripherals, and unapologetic design.
                        </p>
                        <div class="hero-actions">
                            <button class="button button-primary" type="button" id="shopCollectionButton">
                                Shop the collection <i class="fas fa-arrow-right"></i>
                            </button>
                            <a href="#deals" class="button button-secondary">Explore deals</a>
                        </div>
                    </div>
                    <div class="hero-image">
                        <img src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=800&q=80" alt="Modern technology lifestyle">
                    </div>
                </div>
            </div>
        </section>

        <section class="catalog" id="catalog">
            <div class="container">
                <div class="catalog-header">
                    <div>
                        <div class="section-label">Curated selection</div>
                        <h2 class="section-title">The Collection</h2>
                        <p class="section-description">Technology and accessories designed for the bold.</p>
                    </div>
                    <div class="filters" id="filterContainer" role="group" aria-label="Product categories">
                        <button class="filter-button active" type="button" data-filter="all">All Items</button>
                        <button class="filter-button" type="button" data-filter="audio">Acoustics</button>
                        <button class="filter-button" type="button" data-filter="workspace">Workspace</button>
                        <button class="filter-button" type="button" data-filter="wear">Wearables</button>
                    </div>
                </div>

                <div class="products-grid" id="productsGrid" aria-live="polite"></div>

                <div class="empty-state" id="emptyState">
                    <div class="empty-icon"><i class="fas fa-magnifying-glass"></i></div>
                    <h3>No products found</h3>
                    <p>Try another search or choose a different category.</p>
                    <button class="button button-primary clear-filters" id="clearFiltersButton" type="button">Clear filters</button>
                </div>
            </div>
        </section>

        <section class="deal-section" id="deals">
            <div class="container">
                <div class="deal-card">
                    <div class="deal-image">
                        <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=80" alt="AURA Studio Wireless ANC headphones" loading="lazy">
                    </div>
                    <div class="deal-content">
                        <span class="deal-label">Midnight Flash Sale</span>
                        <h2 class="deal-title">AURA Studio Pro ANC</h2>
                        <p class="deal-description">High-resolution spatial drivers with 40-hour continuous battery life and ultra-soft memory foam earcups.</p>
                        
                        <div class="countdown" aria-label="Sale countdown">
                            <div class="countdown-box"><div class="countdown-number" id="dealDays">00</div><div class="countdown-label">Days</div></div>
                            <div class="countdown-box"><div class="countdown-number" id="dealHours">00</div><div class="countdown-label">Hours</div></div>
                            <div class="countdown-box"><div class="countdown-number" id="dealMinutes">00</div><div class="countdown-label">Mins</div></div>
                            <div class="countdown-box"><div class="countdown-number" id="dealSeconds">00</div><div class="countdown-label">Secs</div></div>
                        </div>

                        <div class="deal-price">
                            <span class="deal-current-price">$249</span>
                            <span class="deal-old-price">$329</span>
                        </div>

                        <button class="button button-primary deal-button" type="button" data-add-product="1">
                            Claim discount <i class="fas fa-arrow-right"></i>
                        </button>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <div class="cart-overlay" id="cartOverlay" aria-hidden="true"></div>
    <aside class="cart-drawer" id="cartDrawer" role="dialog" aria-modal="true" aria-labelledby="cartTitle">
        <div class="cart-header">
            <h2 class="cart-title" id="cartTitle">Your Cart</h2>
            <button class="icon-button" type="button" id="closeCartButton" aria-label="Close shopping cart"><i class="fas fa-times"></i></button>
        </div>
        <div class="cart-items" id="cartItems"></div>
        <div class="cart-footer">
            <div class="subtotal">
                <span>Subtotal</span>
                <span id="subtotal">$0.00</span>
            </div>
            <button class="button button-primary checkout-button" type="button" id="checkoutButton">Proceed to checkout</button>
        </div>
    </aside>

    <div class="toast" id="toast" role="status" aria-live="polite">
        <i class="fas fa-circle-check"></i>
        <span id="toastMessage"></span>
    </div>

    <footer class="footer">
        <div class="container">
            <div class="footer-grid">
                <div>
                    <div class="brand">
                        <span class="brand-icon"><i class="fas fa-bolt"></i></span>
                        <span class="brand-name">LUMINA</span>
                    </div>
                    <p class="footer-description">Premium hardware, workspace objects, and tactile peripherals curated for bold creators.</p>
                </div>
                <div>
                    <h3 class="footer-title">Collection</h3>
                    <ul class="footer-links">
                        <li><a href="#catalog">Audio Peripherals</a></li>
                        <li><a href="#catalog">Studio Workspace</a></li>
                        <li><a href="#catalog">Accessories & Carry</a></li>
                    </ul>
                </div>
                <div>
                    <h3 class="footer-title">Customer Care</h3>
                    <ul class="footer-links">
                        <li><a href="#">Shipping Timeline</a></li>
                        <li><a href="#">Warranty Details</a></li>
                        <li><a href="#">Help Desk</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <span>© <span id="year"></span> LUMINA Inc.</span>
                <span>Designed for the future.</span>
            </div>
        </div>
    </footer>

    <script>
        const PRODUCTS = [
            { id: 1, title: "Studio Wireless Headphones", price: 249, category: "audio", badge: "Popular", img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80" },
            { id: 2, title: "Compact Mechanical 65% Keyboard", price: 165, category: "workspace", badge: "New", img: "https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=600&q=80" },
            { id: 3, title: "Smart Apple Watch Strap (Flora)", price: 49, category: "wear", badge: null, img: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80" },
            { id: 4, title: "True Wireless Noise-Canceling Buds", price: 139, category: "audio", badge: "Sale", img: "https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=600&q=80" },
            { id: 5, title: "Ergonomic Vertical Surface Mouse", price: 89, category: "workspace", badge: null, img: "https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?auto=format&fit=crop&w=600&q=80" },
            { id: 6, title: "Lumina Minimalist Steel Chrono", price: 210, category: "wear", badge: "Featured", img: "https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=600&q=80" },
            { id: 7, title: "Merino Wool Workspace Desk Pad", price: 59, category: "workspace", badge: null, img: "https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?auto=format&fit=crop&w=600&q=80" },
            { id: 8, title: "Daypack Commuter Waterproof", price: 125, category: "wear", badge: null, img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80" }
        ];

        const state = { products: PRODUCTS, searchQuery: "", category: "all", cart: loadCart() };

        const productsGrid = document.getElementById("productsGrid");
        const emptyState = document.getElementById("emptyState");
        const filterContainer = document.getElementById("filterContainer");
        const searchInput = document.getElementById("searchInput");
        const cartDrawer = document.getElementById("cartDrawer");
        const cartOverlay = document.getElementById("cartOverlay");
        const cartItems = document.getElementById("cartItems");
        const cartCount = document.getElementById("cartCount");
        const subtotal = document.getElementById("subtotal");
        const toast = document.getElementById("toast");
        const toastMessage = document.getElementById("toastMessage");

        function loadCart() {
            try {
                const saved = localStorage.getItem("lumina-cart");
                return saved ? JSON.parse(saved) : [];
            } catch { return []; }
        }

        function saveCart() { localStorage.setItem("lumina-cart", JSON.stringify(state.cart)); }

        function getFilteredProducts() {
            const query = state.searchQuery.toLowerCase().trim();
            return state.products.filter(product => {
                const matchesCategory = state.category === "all" || product.category === state.category;
                const matchesSearch = !query || product.title.toLowerCase().includes(query) || product.category.toLowerCase().includes(query);
                return matchesCategory && matchesSearch;
            });
        }

        function createProductCard(product) {
            return `
                <article class="product-card" data-product-id="${product.id}">
                    <div class="product-media">
                        ${product.badge ? `<span class="product-badge">${product.badge}</span>` : ""}
                        <button class="wishlist-button" type="button" aria-label="Add ${product.title} to wishlist" data-action="wishlist">
                            <i class="far fa-heart"></i>
                        </button>
                        <img src="${product.img}" alt="${product.title}" loading="lazy" decoding="async">
                    </div>
                    <div class="product-body">
                        <span class="product-category">${product.category}</span>
                        <h3 class="product-title">${product.title}</h3>
                        <div class="product-footer">
                            <span class="product-price">$${product.price.toLocaleString()}</span>
                            <button class="add-button" type="button" data-action="add-cart" data-product-id="${product.id}" aria-label="Add ${product.title} to cart">
                                <i class="fas fa-plus"></i>
                            </button>
                        </div>
                    </div>
                </article>
            `;
        }

        function renderProducts() {
            const products = getFilteredProducts();
            productsGrid.innerHTML = products.map(createProductCard).join("");
            emptyState.classList.toggle("visible", products.length === 0);
        }

        function addToCart(productId) {
            const product = state.products.find(item => item.id === productId);
            if (!product) return;
            const existing = state.cart.find(item => item.id === productId);
            if (existing) { existing.qty += 1; } else {
                state.cart.push({ id: product.id, title: product.title, price: product.price, img: product.img, qty: 1 });
            }
            saveCart(); renderCart(); showToast(`${product.title} added to your cart`);
        }

        function changeQuantity(productId, delta) {
            const item = state.cart.find(product => product.id === productId);
            if (!item) return;
            item.qty += delta;
            if (item.qty <= 0) { state.cart = state.cart.filter(product => product.id !== productId); }
            saveCart(); renderCart();
        }

        function getCartCount() { return state.cart.reduce((total, item) => total + item.qty, 0); }
        function getSubtotal() { return state.cart.reduce((total, item) => total + item.price * item.qty, 0); }

        function renderCart() {
            cartCount.textContent = getCartCount();
            subtotal.textContent = `$${getSubtotal().toLocaleString(undefined, { minimumFractionDigits: 2, maximumFractionDigits: 2 })}`;
            if (state.cart.length === 0) {
                cartItems.innerHTML = `<div class="cart-empty"><i class="fas fa-bag-shopping"></i><p>Your cart is currently empty.</p></div>`;
                return;
            }
            cartItems.innerHTML = state.cart.map(item => `
                <div class="cart-item" data-cart-item="${item.id}">
                    <img class="cart-item-image" src="${item.img}" alt="${item.title}">
                    <div class="cart-item-info">
                        <div class="cart-item-title">${item.title}</div>
                        <div class="cart-item-price">$${item.price.toLocaleString()} each</div>
                        <div class="quantity-controls">
                            <button class="quantity-button" type="button" data-action="quantity" data-product-id="${item.id}" data-delta="-1" aria-label="Decrease quantity">-</button>
                            <span class="quantity">${item.qty}</span>
                            <button class="quantity-button" type="button" data-action="quantity" data-product-id="${item.id}" data-delta="1" aria-label="Increase quantity">+</button>
                        </div>
                    </div>
                </div>
            `).join("");
        }

        function openCart() {
            cartDrawer.classList.add("open"); cartOverlay.classList.add("open");
            cartOverlay.setAttribute("aria-hidden", "false"); document.body.style.overflow = "hidden";
        }

        function closeCart() {
            cartDrawer.classList.remove("open"); cartOverlay.classList.remove("open");
            cartOverlay.setAttribute("aria-hidden", "true"); document.body.style.overflow = "";
        }

        let toastTimer;
        function showToast(message) {
            toastMessage.textContent = message; toast.classList.add("visible");
            clearTimeout(toastTimer);
            toastTimer = setTimeout(() => { toast.classList.remove("visible"); }, 2500);
        }

        filterContainer.addEventListener("click", event => {
            const button = event.target.closest("[data-filter]");
            if (!button) return;
            state.category = button.dataset.filter;
            filterContainer.querySelectorAll(".filter-button").forEach(item => { item.classList.remove("active"); });
            button.classList.add("active"); renderProducts();
        });

        searchInput.addEventListener("input", event => { state.searchQuery = event.target.value; renderProducts(); });

        productsGrid.addEventListener("click", event => {
            const action = event.target.closest("[data-action]");
            if (!action) return;
            const actionType = action.dataset.action;
            const productId = Number(action.dataset.productId);
            if (actionType === "add-cart") { addToCart(productId); }
            if (actionType === "wishlist") { showToast("Wishlist feature coming soon"); }
        });

        cartItems.addEventListener("click", event => {
            const button = event.target.closest('[data-action="quantity"]');
            if (!button) return;
            changeQuantity(Number(button.dataset.productId), Number(button.dataset.delta));
        });

        document.getElementById("openCartButton").addEventListener("click", openCart);
        document.getElementById("closeCartButton").addEventListener("click", closeCart);
        cartOverlay.addEventListener("click", closeCart);

        document.addEventListener("keydown", event => {
            if (event.key === "Escape" && cartDrawer.classList.contains("open")) { closeCart(); }
        });

        document.getElementById("clearFiltersButton").addEventListener("click", () => {
            state.searchQuery = ""; state.category = "all"; searchInput.value = "";
            filterContainer.querySelectorAll(".filter-button").forEach(button => {
                button.classList.toggle("active", button.dataset.filter === "all");
            });
            renderProducts();
        });

        document.getElementById("shopCollectionButton").addEventListener("click", () => {
            document.getElementById("catalog").scrollIntoView({ behavior: "smooth" });
        });

        document.addEventListener("click", event => {
            const button = event.target.closest("[data-add-product]");
            if (!button) return;
            addToCart(Number(button.dataset.addProduct));
        });

        document.getElementById("checkoutButton").addEventListener("click", () => {
            if (state.cart.length === 0) { showToast("Your cart is empty"); return; }
            showToast("Checkout integration coming soon");
        });

        const SALE_END = new Date("2026-09-10T23:59:59").getTime();
        function updateCountdown() {
            const remaining = Math.max(0, SALE_END - Date.now());
            const totalSeconds = Math.floor(remaining / 1000);
            const days = Math.floor(totalSeconds / 86400);
            const hours = Math.floor((totalSeconds % 86400) / 3600);
            const minutes = Math.floor((totalSeconds % 3600) / 60);
            const seconds = totalSeconds % 60;
            document.getElementById("dealDays").textContent = String(days).padStart(2, "0");
            document.getElementById("dealHours").textContent = String(hours).padStart(2, "0");
            document.getElementById("dealMinutes").textContent = String(minutes).padStart(2, "0");
            document.getElementById("dealSeconds").textContent = String(seconds).padStart(2, "0");
        }

        updateCountdown(); setInterval(updateCountdown, 1000);
        document.getElementById("year").textContent = new Date().getFullYear();
        renderProducts(); renderCart();
    </script>
</body>
</html>
