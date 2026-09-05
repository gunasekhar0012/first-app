<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Lumina — Premium Tech & Lifestyle</title>

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
            background: rgba(0, 0, 0,
