<!doctype html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

```
<title>Lumina — Modern Lifestyle & Tech</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
    href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap"
    rel="stylesheet">

<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
>

<style>
    /* =========================================================
       DESIGN  SYSTEM
    ========================================================= */

    :root {
        --primary: #6366f1;
        --primary-dark: #4f46e5;
        --secondary: #a855f7;
        --accent: #ec4899;

        --text-primary: #0f172a;
        --text-secondary: #64748b;
        --text-light: #94a3b8;

        --surface: #ffffff;
        --surface-soft: #f8fafc;
        --surface-muted: #f1f5f9;

        --border: #e2e8f0;
        --border-light: rgba(226, 232, 240, 0.7);

        --gradient-primary:
            linear-gradient(135deg, #6366f1 0%, #a855f7 55%, #ec4899 100%);

        --gradient-soft:
            linear-gradient(135deg, #eef2ff, #faf5ff);

        --gradient-warm:
            linear-gradient(135deg, #ff6b6b, #ffa07a, #f9ca24);

        --shadow-sm:
            0 4px 12px rgba(15, 23, 42, 0.06);

        --shadow-md:
            0 12px 30px rgba(15, 23, 42, 0.09);

        --shadow-lg:
            0 24px 50px rgba(15, 23, 42, 0.14);

        --radius-sm: 10px;
        --radius-md: 16px;
        --radius-lg: 24px;
        --radius-xl: 32px;

        --container: 1240px;

        --transition-fast: 150ms ease;
        --transition: 250ms cubic-bezier(0.16, 1, 0.3, 1);
    }

    /* =========================================================
       RESET
    ========================================================= */

    *,
    *::before,
    *::after {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }

    html {
        scroll-behavior: smooth;
    }

    body {
        font-family: "Plus Jakarta Sans", system-ui, sans-serif;
        background:
            radial-gradient(
                circle at 10% 0%,
                rgba(99, 102, 241, 0.08),
                transparent 30%
            ),
            #f8fafc;
        color: var(--text-primary);
        line-height: 1.5;
        -webkit-font-smoothing: antialiased;
        min-height: 100vh;
        overflow-x: hidden;
    }

    button,
    input {
        font: inherit;
    }

    button {
        cursor: pointer;
    }

    a {
        color: inherit;
        text-decoration: none;
    }

    img {
        max-width: 100%;
        display: block;
    }

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

        color: #fff;
        background: var(--gradient-primary);

        font-size: 12px;
        font-weight: 600;
        text-align: center;
    }

    .announcement-badge {
        padding: 3px 9px;
        border-radius: 999px;
        background: rgba(255, 255, 255, 0.2);
        border: 1px solid rgba(255, 255, 255, 0.3);

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

        background: rgba(255, 255, 255, 0.9);
        backdrop-filter: blur(18px);
        border-bottom: 1px solid var(--border-light);
    }

    .header-inner {
        min-height: 72px;

        display: grid;
        grid-template-columns: auto 1fr auto;
        align-items: center;
        gap: 32px;
    }

    .brand {
        display: inline-flex;
        align-items: center;
        gap: 10px;

        font-size: 22px;
        font-weight: 800;
        letter-spacing: -0.04em;
    }

    .brand-icon {
        width: 34px;
        height: 34px;

        display: grid;
        place-items: center;

        border-radius: 10px;
        background: var(--gradient-primary);
        color: #fff;

        box-shadow: 0 6px 16px rgba(99, 102, 241, 0.25);
    }

    .brand-name {
        background: var(--gradient-primary);
        background-clip: text;
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }

    .main-nav {
        display: flex;
        justify-content: center;
    }

    .main-nav ul {
        list-style: none;
        display: flex;
        gap: 4px;
    }

    .main-nav a {
        display: block;
        padding: 9px 15px;

        color: var(--text-secondary);
        border-radius: 999px;

        font-size: 13px;
        font-weight: 700;

        transition: var(--transition);
    }

    .main-nav a:hover,
    .main-nav a.active {
        color: var(--text-primary);
        background: var(--surface-muted);
    }

    .header-actions {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .search-box {
        width: 240px;

        display: flex;
        align-items: center;

        padding: 0 14px;

        background: var(--surface-soft);
        border: 1px solid var(--border);
        border-radius: 999px;

        transition: var(--transition);
    }

    .search-box:focus-within {
        width: 280px;
        background: #fff;
        border-color: var(--primary);

        box-shadow: 0 0 0 4px rgba(99, 102, 241, 0.1);
    }

    .search-box i {
        color: var(--text-light);
        font-size: 13px;
    }

    .search-box input {
        width: 100%;
        padding: 10px 10px;

        border: 0;
        outline: 0;
        background: transparent;

        color: var(--text-primary);
        font-size: 13px;
    }

    .icon-button {
        width: 40px;
        height: 40px;

        display: grid;
        place-items: center;

        background: #fff;
        border: 1px solid var(--border);
        border-radius: 50%;

        color: var(--text-secondary);

        transition: var(--transition);
    }

    .icon-button:hover {
        color: var(--primary);
        border-color: var(--primary);
        transform: translateY(-2px);
    }

    .cart-button {
        min-height: 40px;

        display: flex;
        align-items: center;
        gap: 8px;

        padding: 0 14px;

        border: 0;
        border-radius: 999px;

        background: var(--gradient-primary);
        color: #fff;

        font-size: 13px;
        font-weight: 700;

        box-shadow: 0 6px 18px rgba(99, 102, 241, 0.25);

        transition: var(--transition);
    }

    .cart-button:hover {
        transform: translateY(-2px);
        box-shadow: 0 10px 24px rgba(99, 102, 241, 0.32);
    }

    .cart-count {
        min-width: 21px;
        height: 21px;

        display: grid;
        place-items: center;

        padding-inline: 5px;

        border-radius: 999px;
        background: #fff;
        color: var(--primary);

        font-size: 10px;
        font-weight: 800;
    }

    /* =========================================================
       HERO
    ========================================================= */

    .hero {
        padding: 42px 0 60px;
    }

    .hero-card {
        position: relative;
        overflow: hidden;

        display: grid;
        grid-template-columns: 1.1fr 0.9fr;
        align-items: center;

        min-height: 470px;
        padding: 64px;

        border-radius: var(--radius-xl);

        background: var(--gradient-primary);
        color: #fff;

        box-shadow: var(--shadow-lg);
    }

    .hero-card::before {
        content: "";
        position: absolute;

        width: 500px;
        height: 500px;

        top: -250px;
        right: -120px;

        border-radius: 50%;

        background: rgba(255, 255, 255, 0.12);
    }

    .hero-card::after {
        content: "";
        position: absolute;

        width: 300px;
        height: 300px;

        bottom: -180px;
        left: 35%;

        border-radius: 50%;

        background: rgba(255, 255, 255, 0.08);
    }

    .hero-content {
        position: relative;
        z-index: 1;
        max-width: 600px;
    }

    .hero-badge {
        display: inline-flex;
        align-items: center;
        gap: 7px;

        padding: 6px 12px;

        border: 1px solid rgba(255, 255, 255, 0.3);
        border-radius: 999px;

        background: rgba(255, 255, 255, 0.14);

        font-size: 11px;
        font-weight: 800;
        letter-spacing: 0.05em;
        text-transform: uppercase;
    }

    .hero-title {
        margin-top: 20px;

        max-width: 650px;

        font-size: clamp(38px, 5vw, 58px);
        line-height: 1.04;
        letter-spacing: -0.05em;
    }

    .hero-description {
        max-width: 520px;
        margin-top: 20px;

        color: rgba(255, 255, 255, 0.9);

        font-size: 15px;
        line-height: 1.7;
    }

    .hero-actions {
        display: flex;
        flex-wrap: wrap;
        gap: 12px;

        margin-top: 30px;
    }

    .button {
        min-height: 44px;

        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: 8px;

        padding: 0 20px;

        border: 0;
        border-radius: 999px;

        font-size: 13px;
        font-weight: 800;

        transition: var(--transition);
    }

    .button:hover {
        transform: translateY(-2px);
    }

    .button-primary {
        background: #fff;
        color: var(--primary-dark);

        box-shadow: 0 8px 24px rgba(0, 0, 0, 0.16);
    }

    .button-secondary {
        background: rgba(255, 255, 255, 0.14);
        border: 1px solid rgba(255, 255, 255, 0.35);
        color: #fff;
    }

    .hero-image {
        position: relative;
        z-index: 1;

        display: flex;
        justify-content: center;
    }

    .hero-image img {
        width: 100%;
        max-width: 430px;
        height: 330px;

        object-fit: cover;

        border: 3px solid rgba(255, 255, 255, 0.35);
        border-radius: var(--radius-lg);

        box-shadow: 0 25px 50px rgba(0, 0, 0, 0.25);

        transform: rotate(2deg);
    }

    /* =========================================================
       CATALOG
    ========================================================= */

    .catalog {
        padding-bottom: 70px;
    }

    .catalog-header {
        display: flex;
        justify-content: space-between;
        align-items: flex-end;
        gap: 24px;

        margin-bottom: 26px;
    }

    .section-label {
        margin-bottom: 6px;

        color: var(--primary);

        font-size: 11px;
        font-weight: 800;
        letter-spacing: 0.08em;
        text-transform: uppercase;
    }

    .section-title {
        font-size: 30px;
        line-height: 1.2;
        letter-spacing: -0.04em;
    }

    .section-description {
        margin-top: 5px;

        color: var(--text-secondary);
        font-size: 13px;
    }

    .filters {
        display: flex;
        gap: 8px;

        overflow-x: auto;
        scrollbar-width: none;
    }

    .filters::-webkit-scrollbar {
        display: none;
    }

    .filter-button {
        white-space: nowrap;

        padding: 9px 16px;

        border: 1px solid var(--border);
        border-radius: 999px;

        background: #fff;
        color: var(--text-secondary);

        font-size: 12px;
        font-weight: 700;

        transition: var(--transition);
    }

    .filter-button:hover,
    .filter-button.active {
        background: var(--text-primary);
        border-color: var(--text-primary);
        color: #fff;
    }

    /* =========================================================
       PRODUCTS
    ========================================================= */

    .products-grid {
        display: grid;
        grid-template-columns: repeat(4, minmax(0, 1fr));
        gap: 20px;
    }

    .product-card {
        position: relative;

        display: flex;
        flex-direction: column;

        overflow: hidden;

        background: #fff;
        border: 1px solid var(--border-light);
        border-radius: var(--radius-md);

        box-shadow: var(--shadow-sm);

        transition: var(--transition);
    }

    .product-card:hover {
        transform: translateY(-5px);
        box-shadow: var(--shadow-md);
    }

    .product-media {
        position: relative;

        aspect-ratio: 1 / 1;

        overflow: hidden;
        background: var(--surface-soft);
    }

    .product-media img {
        width: 100%;
        height: 100%;

        object-fit: cover;

        transition: transform 500ms cubic-bezier(0.16, 1, 0.3, 1);
    }

    .product-card:hover .product-media img {
        transform: scale(1.06);
    }

    .product-badge {
        position: absolute;
        top: 12px;
        left: 12px;

        padding: 5px 9px;

        border-radius: 999px;

        background: var(--gradient-primary);
        color: #fff;

        font-size: 9px;
        font-weight: 800;
        letter-spacing: 0.05em;
        text-transform: uppercase;
    }

    .wishlist-button {
        position: absolute;
        top: 12px;
        right: 12px;

        width: 34px;
        height: 34px;

        display: grid;
        place-items: center;

        border: 1px solid rgba(255, 255, 255, 0.7);
        border-radius: 50%;

        background: rgba(255, 255, 255, 0.88);
        color: var(--text-secondary);

        backdrop-filter: blur(8px);

        transition: var(--transition);
    }

    .wishlist-button:hover {
        color: #ef4444;
        transform: scale(1.05);
    }

    .product-body {
        display: flex;
        flex-direction: column;
        flex: 1;

        padding: 18px;
    }

    .product-category {
        color: var(--primary);

        font-size: 10px;
        font-weight: 800;
        letter-spacing: 0.07em;
        text-transform: uppercase;
    }

    .product-title {
        min-height: 44px;
        margin-top: 7px;

        color: var(--text-primary);

        font-size: 14px;
        font-weight: 700;
        line-height: 1.5;
    }

    .product-footer {
        display: flex;
        align-items: center;
        justify-content: space-between;

        margin-top: 16px;
        padding-top: 14px;

        border-top: 1px solid var(--border-light);
    }

    .product-price {
        font-size: 18px;
        font-weight: 800;
    }

    .add-button {
        width: 38px;
        height: 38px;

        display: grid;
        place-items: center;

        border: 0;
        border-radius: 50%;

        background: var(--text-primary);
        color: #fff;

        transition: var(--transition);
    }

    .add-button:hover {
        background: var(--primary);
        transform: scale(1.08);
    }

    /* =========================================================
       EMPTY STATE
    ========================================================= */

    .empty-state {
        display: none;

        padding: 70px 20px;

        text-align: center;

        background: #fff;
        border: 1px dashed var(--border);
        border-radius: var(--radius-md);
    }

    .empty-state.visible {
        display: block;
    }

    .empty-icon {
        width: 54px;
        height: 54px;

        display: grid;
        place-items: center;

        margin: 0 auto 15px;

        border-radius: 50%;
        background: var(--surface-muted);

        color: var(--text-secondary);
    }

    .empty-state h3 {
        font-size: 17px;
    }

    .empty-state p {
        margin-top: 6px;

        color: var(--text-secondary);
        font-size: 13px;
    }

    .clear-filters {
        margin-top: 18px;
    }

    /* =========================================================
       DEAL
    ========================================================= */

    .deal-section {
        padding-bottom: 80px;
    }

    .deal-card {
        display: grid;
        grid-template-columns: 1fr 1fr;

        overflow: hidden;

        border-radius: var(--radius-xl);

        background: var(--gradient-warm);
        color: #fff;

        box-shadow: var(--shadow-lg);
    }

    .deal-image {
        min-height: 400px;
    }

    .deal-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .deal-content {
        display: flex;
        flex-direction: column;
        justify-content: center;

        padding: 56px;
    }

    .deal-label {
        font-size: 10px;
        font-weight: 800;
        letter-spacing: 0.08em;
        text-transform: uppercase;
    }

    .deal-title {
        margin-top: 8px;

        font-size: 34px;
        line-height: 1.15;
        letter-spacing: -0.04em;
    }

    .deal-description {
        margin-top: 14px;

        color: rgba(255, 255, 255, 0.9);

        font-size: 13px;
        line-height: 1.7;
    }

    .countdown {
        display: flex;
        gap: 8px;

        margin: 22px 0;
    }

    .countdown-box {
        min-width: 60px;

        padding: 9px 10px;

        border: 1px solid rgba(255, 255, 255, 0.3);
        border-radius: var(--radius-sm);

        background: rgba(255, 255, 255, 0.15);

        text-align: center;
    }

    .countdown-number {
        font-size: 18px;
        font-weight: 800;
    }

    .countdown-label {
        margin-top: 1px;

        font-size: 8px;
        font-weight: 700;
        letter-spacing: 0.05em;
        text-transform: uppercase;
    }

    .deal-price {
        display: flex;
        align-items: baseline;
        gap: 10px;

        margin-bottom: 22px;
    }

    .deal-current-price {
        font-size: 31px;
        font-weight: 900;
    }

    .deal-old-price {
        opacity: 0.7;
        text-decoration: line-through;
    }

    .deal-button {
        width: fit-content;
    }

    /* =========================================================
       CART
    ========================================================= */

    .cart-overlay {
        position: fixed;
        inset: 0;
        z-index: 80;

        background: rgba(15, 23, 42, 0.35);
        backdrop-filter: blur(5px);

        opacity: 0;
        visibility: hidden;

        transition: opacity 250ms ease;
    }

    .cart-overlay.open {
        opacity: 1;
        visibility: visible;
    }

    .cart-drawer {
        position: fixed;
        top: 0;
        right: 0;
        z-index: 90;

        width: min(440px, 100%);
        height: 100dvh;

        display: flex;
        flex-direction: column;

        background: rgba(255, 255, 255, 0.96);
        backdrop-filter: blur(20px);

        border-left: 1px solid var(--border);

        transform: translateX(100%);
        transition: transform 300ms cubic-bezier(0.16, 1, 0.3, 1);

        box-shadow: -20px 0 50px rgba(15, 23, 42, 0.12);
    }

    .cart-drawer.open {
        transform: translateX(0);
    }

    .cart-header {
        display: flex;
        align-items: center;
        justify-content: space-between;

        padding: 22px 24px;

        border-bottom: 1px solid var(--border);
    }

    .cart-title {
        font-size: 18px;
        font-weight: 800;
    }

    .cart-items {
        flex: 1;

        overflow-y: auto;

        padding: 18px 24px;

        display: flex;
        flex-direction: column;
        gap: 12px;
    }

    .cart-item {
        display: flex;
        gap: 12px;

        padding: 10px;

        background: #fff;
        border: 1px solid var(--border);
        border-radius: var(--radius-sm);
    }

    .cart-item-image {
        width: 62px;
        height: 62px;

        flex: 0 0 62px;

        border-radius: 8px;
        object-fit: cover;
    }

    .cart-item-info {
        min-width: 0;
        flex: 1;
    }

    .cart-item-title {
        font-size: 12px;
        font-weight: 700;
        line-height: 1.4;
    }

    .cart-item-price {
        margin-top: 3px;

        color: var(--text-secondary);
        font-size: 11px;
    }

    .quantity-controls {
        display: flex;
        align-items: center;
        gap: 8px;

        margin-top: 8px;
    }

    .quantity-button {
        width: 24px;
        height: 24px;

        display: grid;
        place-items: center;

        border: 0;
        border-radius: 6px;

        background: var(--surface-muted);
        color: var(--text-primary);

        font-size: 11px;
        font-weight: 800;
    }

    .quantity {
        min-width: 18px;

        text-align: center;

        font-size: 11px;
        font-weight: 800;
    }

    .cart-empty {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;

        height: 100%;

        color: var(--text-secondary);
        text-align: center;
    }

    .cart-empty i {
        margin-bottom: 14px;
        font-size: 28px;
    }

    .cart-empty p {
        font-size: 13px;
    }

    .cart-footer {
        padding: 20px 24px;

        border-top: 1px solid var(--border);
    }

    .subtotal {
        display: flex;
        justify-content: space-between;

        margin-bottom: 16px;

        font-size: 16px;
        font-weight: 800;
    }

    .checkout-button {
        width: 100%;

        background: var(--gradient-primary);
        color: #fff;
    }

    /* =========================================================
       TOAST
    ========================================================= */

    .toast {
        position: fixed;
        left: 50%;
        bottom: 24px;
        z-index: 120;

        display: flex;
        align-items: center;
        gap: 10px;

        padding: 12px 16px;

        border: 1px solid var(--border);
        border-radius: 999px;

        background: rgba(255, 255, 255, 0.95);

        box-shadow: var(--shadow-lg);

        font-size: 12px;
        font-weight: 700;

        transform: translate(-50%, 80px);
        opacity: 0;

        transition: var(--transition);
    }

    .toast.visible {
        transform: translate(-50%, 0);
        opacity: 1;
    }

    .toast i {
        color: #16a34a;
    }

    /* =========================================================
       FOOTER
    ========================================================= */

    .footer {
        padding: 55px 0 30px;

        background: #fff;
        border-top: 1px solid var(--border);
    }

    .footer-grid {
        display: grid;
        grid-template-columns: 2fr 1fr 1fr;
        gap: 50px;

        padding-bottom: 40px;
    }

    .footer-description {
        max-width: 350px;
        margin-top: 12px;

        color: var(--text-secondary);
        font-size: 13px;
        line-height: 1.7;
    }

    .footer-title {
        margin-bottom: 14px;

        color: var(--text-primary);

        font-size: 11px;
        font-weight: 800;
        letter-spacing: 0.06em;
        text-transform: uppercase;
    }

    .footer-links {
        display: flex;
        flex-direction: column;
        gap: 9px;

        list-style: none;

        color: var(--text-secondary);
        font-size: 12px;
    }

    .footer-links a:hover {
        color: var(--primary);
    }

    .footer-bottom {
        display: flex;
        justify-content: space-between;
        gap: 20px;

        padding-top: 22px;

        border-top: 1px solid var(--border);

        color: var(--text-light);
        font-size: 11px;
    }

    /* =========================================================
       RESPONSIVE
    ========================================================= */

    @media (max-width: 1100px) {
        .header-inner {
            grid-template-columns: auto 1fr auto;
            gap: 16px;
        }

        .search-box {
            width: 200px;
        }

        .search-box:focus-within {
            width: 230px;
        }

        .products-grid {
            grid-template-columns: repeat(3, 1fr);
        }
    }

    @media (max-width: 900px) {
        .hero-card {
            grid-template-columns: 1fr;
            padding: 50px;
        }

        .hero-image {
            display: none;
        }

        .deal-card {
            grid-template-columns: 1fr;
        }

        .deal-image {
            min-height: 280px;
        }
    }

    @media (max-width: 768px) {
        .container {
            padding-inline: 18px;
        }

        .header-inner {
            grid-template-columns: auto 1fr auto;
            min-height: 64px;
        }

        .main-nav {
            display: none;
        }

        .search-box {
            display: none;
        }

        .header-actions {
            justify-content: flex-end;
        }

        .account-button {
            display: none;
        }

        .hero {
            padding-top: 24px;
        }

        .hero-card {
            padding: 38px 28px;
            border-radius: 24px;
        }

        .hero-title {
            font-size: 40px;
        }

        .catalog-header {
            align-items: flex-start;
            flex-direction: column;
        }

        .filters {
            width: 100%;
        }

        .products-grid {
            grid-template-columns: repeat(2, 1fr);
            gap: 14px;
        }

        .product-body {
            padding: 14px;
        }

        .product-title {
            min-height: 42px;
            font-size: 13px;
        }

        .deal-content {
            padding: 36px 28px;
        }

        .deal-title {
            font-size: 28px;
        }

        .footer-grid {
            grid-template-columns: 1fr 1fr;
            gap: 30px;
        }

        .footer-grid > :first-child {
            grid-column: 1 / -1;
        }
    }

    @media (max-width: 480px) {
        .announcement {
            font-size: 10px;
        }

        .announcement-badge {
            display: none;
        }

        .brand {
            font-size: 19px;
        }

        .brand-icon {
            width: 30px;
            height: 30px;
        }

        .cart-button {
            padding: 0 11px;
        }

        .cart-button span:not(.cart-count) {
            display: none;
        }

        .hero-title {
            font-size: 34px;
        }

        .hero-description {
            font-size: 13px;
        }

        .hero-actions {
            flex-direction: column;
        }

        .hero-actions .button {
            width: 100%;
        }

        .products-grid {
            grid-template-columns: 1fr;
        }

        .product-media {
            aspect-ratio: 1.15 / 1;
        }

        .deal-image {
            min-height: 220px;
        }

        .countdown-box {
            min-width: 54px;
        }

        .footer-grid {
            grid-template-columns: 1fr;
        }

        .footer-grid > :first-child {
            grid-column: auto;
        }

        .footer-bottom {
            flex-direction: column;
        }
    }

    @media (prefers-reduced-motion: reduce) {
        *,
        *::before,
        *::after {
            scroll-behavior: auto !important;
            transition-duration: 0.01ms !important;
            animation-duration: 0.01ms !important;
        }
    }
</style>
```

</head>

<body>

```
<!-- =========================================================
     ANNOUNCEMENT
========================================================== -->

<div class="announcement">
    <span class="announcement-badge">NEW DROP</span>
    Spring collection is live. Complimentary express shipping worldwide.
</div>

<!-- =========================================================
     HEADER
========================================================== -->

<header class="header">
    <div class="container header-inner">

        <a class="brand" href="#" aria-label="Lumina home">
            <span class="brand-icon">
                <i class="fas fa-sparkles"></i>
            </span>

            <span class="brand-name">Lumina</span>
        </a>

        <nav class="main-nav" aria-label="Main navigation">
            <ul>
                <li>
                    <a href="#" class="active">Showroom</a>
                </li>

                <li>
                    <a href="#catalog">Collection</a>
                </li>

                <li>
                    <a href="#deals">Deals</a>
                </li>
            </ul>
        </nav>

        <div class="header-actions">

            <label class="search-box" aria-label="Search products">
                <i class="fas fa-search"></i>

                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                    autocomplete="off"
                >
            </label>

            <button
                class="icon-button account-button"
                type="button"
                aria-label="Account"
            >
                <i class="far fa-user"></i>
            </button>

            <button
                class="cart-button"
                type="button"
                id="openCartButton"
                aria-label="Open shopping bag"
            >
                <i class="fas fa-bag-shopping"></i>
                <span>Bag</span>

                <span
                    class="cart-count"
                    id="cartCount"
                    aria-live="polite"
                >
                    0
                </span>
            </button>

        </div>

    </div>
</header>

<main>

    <!-- =====================================================
         HERO
    ====================================================== -->

    <section class="hero">
        <div class="container">

            <div class="hero-card">

                <div class="hero-content">

                    <span class="hero-badge">
                        <i class="fas fa-bolt"></i>
                        Spring Edition 2026
                    </span>

                    <h1 class="hero-title">
                        Bright Ideas for Modern Creativity
                    </h1>

                    <p class="hero-description">
                        Elevate your workspace and lifestyle with vivid
                        acoustics, intelligent peripherals, and ergonomic
                        design.
                    </p>

                    <div class="hero-actions">

                        <button
                            class="button button-primary"
                            type="button"
                            id="shopCollectionButton"
                        >
                            Shop the collection
                            <i class="fas fa-arrow-right"></i>
                        </button>

                        <a
                            href="#deals"
                            class="button button-secondary"
                        >
                            Explore deals
                        </a>

                    </div>

                </div>

                <div class="hero-image">
                    <img
                        src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=800&q=80"
                        alt="Modern technology lifestyle"
                    >
                </div>

            </div>

        </div>
    </section>

    <!-- =====================================================
         PRODUCT CATALOG
    ====================================================== -->

    <section
        class="catalog"
        id="catalog"
    >
        <div class="container">

            <div class="catalog-header">

                <div>
                    <div class="section-label">
                        Curated selection
                    </div>

                    <h2 class="section-title">
                        The Collection
                    </h2>

                    <p class="section-description">
                        Technology and accessories designed for modern creators.
                    </p>
                </div>

                <div
                    class="filters"
                    id="filterContainer"
                    role="group"
                    aria-label="Product categories"
                >

                    <button
                        class="filter-button active"
                        type="button"
                        data-filter="all"
                    >
                        All Items
                    </button>

                    <button
                        class="filter-button"
                        type="button"
                        data-filter="audio"
                    >
                        Acoustics
                    </button>

                    <button
                        class="filter-button"
                        type="button"
                        data-filter="workspace"
                    >
                        Desk Setup
                    </button>

                    <button
                        class="filter-button"
                        type="button"
                        data-filter="wear"
                    >
                        Accessories
                    </button>

                </div>

            </div>

            <div
                class="products-grid"
                id="productsGrid"
                aria-live="polite"
            ></div>

            <div
                class="empty-state"
                id="emptyState"
            >
                <div class="empty-icon">
                    <i class="fas fa-magnifying-glass"></i>
                </div>

                <h3>No products found</h3>

                <p>
                    Try another search or choose a different category.
                </p>

                <button
                    class="button button-primary clear-filters"
                    id="clearFiltersButton"
                    type="button"
                >
                    Clear filters
                </button>
            </div>

        </div>
    </section>

    <!-- =====================================================
         DEAL
    ====================================================== -->

    <section
        class="deal-section"
        id="deals"
    >
        <div class="container">

            <div class="deal-card">

                <div class="deal-image">
                    <img
                        src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=80"
                        alt="AURA Studio Wireless ANC headphones"
                        loading="lazy"
                    >
                </div>

                <div class="deal-content">

                    <span class="deal-label">
                        Sunset Flash Sale
                    </span>

                    <h2 class="deal-title">
                        AURA Studio Wireless ANC
                    </h2>

                    <p class="deal-description">
                        High-resolution spatial drivers with 40-hour
                        continuous battery life and ultra-soft memory
                        foam earcups.
                    </p>

                    <div
                        class="countdown"
                        aria-label="Sale countdown"
                    >

                        <div class="countdown-box">
                            <div
                                class="countdown-number"
                                id="dealDays"
                            >
                                00
                            </div>

                            <div class="countdown-label">
                                Days
                            </div>
                        </div>

                        <div class="countdown-box">
                            <div
                                class="countdown-number"
                                id="dealHours"
                            >
                                00
                            </div>

                            <div class="countdown-label">
                                Hours
                            </div>
                        </div>

                        <div class="countdown-box">
                            <div
                                class="countdown-number"
                                id="dealMinutes"
                            >
                                00
                            </div>

                            <div class="countdown-label">
                                Mins
                            </div>
                        </div>

                        <div class="countdown-box">
                            <div
                                class="countdown-number"
                                id="dealSeconds"
                            >
                                00
                            </div>

                            <div class="countdown-label">
                                Secs
                            </div>
                        </div>

                    </div>

                    <div class="deal-price">
                        <span class="deal-current-price">
                            $249
                        </span>

                        <span class="deal-old-price">
                            $329
                        </span>
                    </div>

                    <button
                        class="button button-primary deal-button"
                        type="button"
                        data-add-product="1"
                    >
                        Claim discount
                        <i class="fas fa-arrow-right"></i>
                    </button>

                </div>

            </div>

        </div>
    </section>

</main>

<!-- =========================================================
     CART
========================================================== -->

<div
    class="cart-overlay"
    id="cartOverlay"
    aria-hidden="true"
></div>

<aside
    class="cart-drawer"
    id="cartDrawer"
    role="dialog"
    aria-modal="true"
    aria-labelledby="cartTitle"
>

    <div class="cart-header">

        <h2
            class="cart-title"
            id="cartTitle"
        >
            Your Cart
        </h2>

        <button
            class="icon-button"
            type="button"
            id="closeCartButton"
            aria-label="Close shopping cart"
        >
            <i class="fas fa-times"></i>
        </button>

    </div>

    <div
        class="cart-items"
        id="cartItems"
    ></div>

    <div class="cart-footer">

        <div class="subtotal">
            <span>Subtotal</span>
            <span id="subtotal">$0.00</span>
        </div>

        <button
            class="button checkout-button"
            type="button"
            id="checkoutButton"
        >
            Proceed to checkout
        </button>

    </div>

</aside>

<!-- =========================================================
     TOAST
========================================================== -->

<div
    class="toast"
    id="toast"
    role="status"
    aria-live="polite"
>
    <i class="fas fa-circle-check"></i>
    <span id="toastMessage"></span>
</div>

<!-- =========================================================
     FOOTER
========================================================== -->

<footer class="footer">

    <div class="container">

        <div class="footer-grid">

            <div>

                <div class="brand">
                    <span class="brand-icon">
                        <i class="fas fa-sparkles"></i>
                    </span>

                    <span class="brand-name">
                        LUMINA
                    </span>
                </div>

                <p class="footer-description">
                    Colorful hardware, workspace objects, and tactile
                    peripherals curated for bold creators.
                </p>

            </div>

            <div>

                <h3 class="footer-title">
                    Collection
                </h3>

                <ul class="footer-links">
                    <li>
                        <a href="#catalog">
                            Audio Peripherals
                        </a>
                    </li>

                    <li>
                        <a href="#catalog">
                            Studio Workspace
                        </a>
                    </li>

                    <li>
                        <a href="#catalog">
                            Accessories & Carry
                        </a>
                    </li>
                </ul>

            </div>

            <div>

                <h3 class="footer-title">
                    Customer Care
                </h3>

                <ul class="footer-links">
                    <li>
                        <a href="#">
                            Shipping Timeline
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Warranty Details
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Help Desk
                        </a>
                    </li>
                </ul>

            </div>

        </div>

        <div class="footer-bottom">
            <span>
                © <span id="year"></span> LUMINA Inc.
            </span>

            <span>
                Designed for bold creators.
            </span>
        </div>

    </div>

</footer>

<!-- =========================================================
     JAVASCRIPT
========================================================== -->

<script>

    /* =========================================================
       PRODUCT DATA
    ========================================================== */

    const PRODUCTS = [
        {
            id: 1,
            title: "Studio Wireless Headphones",
            price: 249,
            category: "audio",
            badge: "Popular",
            img: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80"
        },
        {
            id: 2,
            title: "Compact Mechanical 65% Keyboard",
            price: 165,
            category: "workspace",
            badge: "New",
            img: "https://images.unsplash.com/photo-1587829741301-dc798b83add3?auto=format&fit=crop&w=600&q=80"
        },
        {
            id: 3,
            title: "Smart Apple Watch Strap (Flora)",
            price: 49,
            category: "wear",
            badge: null,
            img: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80"
        },
        {
            id: 4,
            title: "True Wireless Noise-Canceling Buds",
            price: 139,
            category: "audio",
            badge: "Sale",
            img: "https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=600&q=80"
        },
        {
            id: 5,
            title: "Ergonomic Vertical Surface Mouse",
            price: 89,
            category: "workspace",
            badge: null,
            img: "https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?auto=format&fit=crop&w=600&q=80"
        },
        {
            id: 6,
            title: "Lumina Minimalist Steel Chrono",
            price: 210,
            category: "wear",
            badge: "Featured",
            img: "https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=600&q=80"
        },
        {
            id: 7,
            title: "Merino Wool Workspace Desk Pad",
            price: 59,
            category: "workspace",
            badge: null,
            img: "https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?auto=format&fit=crop&w=600&q=80"
        },
        {
            id: 8,
            title: "Daypack Commuter Waterproof",
            price: 125,
            category: "wear",
            badge: null,
            img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80"
        }
    ];

    /* =========================================================
       APPLICATION STATE
    ========================================================== */

    const state = {
        products: PRODUCTS,
        searchQuery: "",
        category: "all",
        cart: loadCart()
    };

    /* =========================================================
       DOM REFERENCES
    ========================================================== */

    const productsGrid =
        document.getElementById("productsGrid");

    const emptyState =
        document.getElementById("emptyState");

    const filterContainer =
        document.getElementById("filterContainer");

    const searchInput =
        document.getElementById("searchInput");

    const cartDrawer =
        document.getElementById("cartDrawer");

    const cartOverlay =
        document.getElementById("cartOverlay");

    const cartItems =
        document.getElementById("cartItems");

    const cartCount =
        document.getElementById("cartCount");

    const subtotal =
        document.getElementById("subtotal");

    const toast =
        document.getElementById("toast");

    const toastMessage =
        document.getElementById("toastMessage");

    /* =========================================================
       STORAGE
    ========================================================== */

    function loadCart() {
        try {
            const saved =
                localStorage.getItem("lumina-cart");

            return saved
                ? JSON.parse(saved)
                : [];
        } catch {
            return [];
        }
    }

    function saveCart() {
        localStorage.setItem(
            "lumina-cart",
            JSON.stringify(state.cart)
        );
    }

    /* =========================================================
       PRODUCT FILTERING
    ========================================================== */

    function getFilteredProducts() {

        const query =
            state.searchQuery
                .toLowerCase()
                .trim();

        return state.products.filter(product => {

            const matchesCategory =
                state.category === "all" ||
                product.category === state.category;

            const matchesSearch =
                !query ||
                product.title
                    .toLowerCase()
                    .includes(query) ||
                product.category
                    .toLowerCase()
                    .includes(query);

            return matchesCategory && matchesSearch;
        });
    }

    /* =========================================================
       PRODUCT CARD
    ========================================================== */

    function createProductCard(product) {

        return `
            <article
                class="product-card"
                data-product-id="${product.id}"
            >

                <div class="product-media">

                    ${
                        product.badge
                            ? `
                                <span class="product-badge">
                                    ${product.badge}
                                </span>
                            `
                            : ""
                    }

                    <button
                        class="wishlist-button"
                        type="button"
                        aria-label="Add ${product.title} to wishlist"
                        data-action="wishlist"
                    >
                        <i class="far fa-heart"></i>
                    </button>

                    <img
                        src="${product.img}"
                        alt="${product.title}"
                        loading="lazy"
                        decoding="async"
                    >

                </div>

                <div class="product-body">

                    <span class="product-category">
                        ${product.category}
                    </span>

                    <h3 class="product-title">
                        ${product.title}
                    </h3>

                    <div class="product-footer">

                        <span class="product-price">
                            $${product.price.toLocaleString()}
                        </span>

                        <button
                            class="add-button"
                            type="button"
                            data-action="add-cart"
                            data-product-id="${product.id}"
                            aria-label="Add ${product.title} to cart"
                        >
                            <i class="fas fa-plus"></i>
                        </button>

                    </div>

                </div>

            </article>
        `;
    }

    /* =========================================================
       RENDER PRODUCTS
    ========================================================== */

    function renderProducts() {

        const products =
            getFilteredProducts();

        productsGrid.innerHTML =
            products.map(createProductCard).join("");

        emptyState.classList.toggle(
            "visible",
            products.length === 0
        );
    }

    /* =========================================================
       CART LOGIC
    ========================================================== */

    function addToCart(productId) {

        const product =
            state.products.find(
                item => item.id === productId
            );

        if (!product) {
            return;
        }

        const existing =
            state.cart.find(
                item => item.id === productId
            );

        if (existing) {
            existing.qty += 1;
        } else {
            state.cart.push({
                id: product.id,
                title: product.title,
                price: product.price,
                img: product.img,
                qty: 1
            });
        }

        saveCart();
        renderCart();

        showToast(
            `${product.title} added to your cart`
        );
    }

    function changeQuantity(productId, delta) {

        const item =
            state.cart.find(
                product => product.id === productId
            );

        if (!item) {
            return;
        }

        item.qty += delta;

        if (item.qty <= 0) {
            state.cart =
                state.cart.filter(
                    product => product.id !== productId
                );
        }

        saveCart();
        renderCart();
    }

    function getCartCount() {

        return state.cart.reduce(
            (total, item) =>
                total + item.qty,
            0
        );
    }

    function getSubtotal() {

        return state.cart.reduce(
            (total, item) =>
                total + item.price * item.qty,
            0
        );
    }

    /* =========================================================
       CART UI
    ========================================================== */

    function renderCart() {

        cartCount.textContent =
            getCartCount();

        subtotal.textContent =
            `$${getSubtotal().toLocaleString(
                undefined,
                {
                    minimumFractionDigits: 2,
                    maximumFractionDigits: 2
                }
            )}`;

        if (state.cart.length === 0) {

            cartItems.innerHTML = `
                <div class="cart-empty">

                    <i class="fas fa-bag-shopping"></i>

                    <p>
                        Your cart is currently empty.
                    </p>

                </div>
            `;

            return;
        }

        cartItems.innerHTML =
            state.cart.map(item => `

                <div
                    class="cart-item"
                    data-cart-item="${item.id}"
                >

                    <img
                        class="cart-item-image"
                        src="${item.img}"
                        alt="${item.title}"
                    >

                    <div class="cart-item-info">

                        <div class="cart-item-title">
                            ${item.title}
                        </div>

                        <div class="cart-item-price">
                            $${item.price.toLocaleString()} each
                        </div>

                        <div class="quantity-controls">

                            <button
                                class="quantity-button"
                                type="button"
                                data-action="quantity"
                                data-product-id="${item.id}"
                                data-delta="-1"
                                aria-label="Decrease quantity"
                            >
                                -
                            </button>

                            <span class="quantity">
                                ${item.qty}
                            </span>

                            <button
                                class="quantity-button"
                                type="button"
                                data-action="quantity"
                                data-product-id="${item.id}"
                                data-delta="1"
                                aria-label="Increase quantity"
                            >
                                +
                            </button>

                        </div>

                    </div>

                </div>

            `).join("");
    }

    /* =========================================================
       CART DRAWER
    ========================================================== */

    function openCart() {

        cartDrawer.classList.add("open");
        cartOverlay.classList.add("open");

        cartOverlay.setAttribute(
            "aria-hidden",
            "false"
        );

        document.body.style.overflow = "hidden";
    }

    function closeCart() {

        cartDrawer.classList.remove("open");
        cartOverlay.classList.remove("open");

        cartOverlay.setAttribute(
            "aria-hidden",
            "true"
        );

        document.body.style.overflow = "";
    }

    /* =========================================================
       TOAST
    ========================================================== */

    let toastTimer;

    function showToast(message) {

        toastMessage.textContent = message;

        toast.classList.add("visible");

        clearTimeout(toastTimer);

        toastTimer =
            setTimeout(() => {
                toast.classList.remove("visible");
            }, 2500);
    }

    /* =========================================================
       FILTER EVENTS
    ========================================================== */

    filterContainer.addEventListener(
        "click",
        event => {

            const button =
                event.target.closest(
                    "[data-filter]"
                );

            if (!button) {
                return;
            }

            state.category =
                button.dataset.filter;

            filterContainer
                .querySelectorAll(
                    ".filter-button"
                )
                .forEach(item => {
                    item.classList.remove("active");
                });

            button.classList.add("active");

            renderProducts();
        }
    );

    /* =========================================================
       SEARCH
    ========================================================== */

    searchInput.addEventListener(
        "input",
        event => {

            state.searchQuery =
                event.target.value;

            renderProducts();
        }
    );

    /* =========================================================
       PRODUCT GRID EVENTS
    ========================================================== */

    productsGrid.addEventListener(
        "click",
        event => {

            const action =
                event.target.closest(
                    "[data-action]"
                );

            if (!action) {
                return;
            }

            const actionType =
                action.dataset.action;

            const productId =
                Number(
                    action.dataset.productId
                );

            if (actionType === "add-cart") {
                addToCart(productId);
            }

            if (actionType === "wishlist") {
                showToast(
                    "Wishlist feature coming soon"
                );
            }
        }
    );

    /* =========================================================
       CART EVENTS
    ========================================================== */

    cartItems.addEventListener(
        "click",
        event => {

            const button =
                event.target.closest(
                    '[data-action="quantity"]'
                );

            if (!button) {
                return;
            }

            changeQuantity(
                Number(
                    button.dataset.productId
                ),
                Number(
                    button.dataset.delta
                )
            );
        }
    );

    document
        .getElementById("openCartButton")
        .addEventListener(
            "click",
            openCart
        );

    document
        .getElementById("closeCartButton")
        .addEventListener(
            "click",
            closeCart
        );

    cartOverlay.addEventListener(
        "click",
        closeCart
    );

    document.addEventListener(
        "keydown",
        event => {

            if (
                event.key === "Escape" &&
                cartDrawer.classList.contains("open")
            ) {
                closeCart();
            }
        }
    );

    /* =========================================================
       CLEAR FILTERS
    ========================================================== */

    document
        .getElementById("clearFiltersButton")
        .addEventListener(
            "click",
            () => {

                state.searchQuery = "";
                state.category = "all";

                searchInput.value = "";

                filterContainer
                    .querySelectorAll(
                        ".filter-button"
                    )
                    .forEach(button => {
                        button.classList.toggle(
                            "active",
                            button.dataset.filter === "all"
                        );
                    });

                renderProducts();
            }
        );

    /* =========================================================
       HERO SCROLL
    ========================================================== */

    document
        .getElementById("shopCollectionButton")
        .addEventListener(
            "click",
            () => {

                document
                    .getElementById("catalog")
                    .scrollIntoView({
                        behavior: "smooth"
                    });
            }
        );

    /* =========================================================
       DEAL BUTTON
    ========================================================== */

    document.addEventListener(
        "click",
        event => {

            const button =
                event.target.closest(
                    "[data-add-product]"
                );

            if (!button) {
                return;
            }

            addToCart(
                Number(
                    button.dataset.addProduct
                )
            );
        }
    );

    /* =========================================================
       CHECKOUT
    ========================================================== */

    document
        .getElementById("checkoutButton")
        .addEventListener(
            "click",
            () => {

                if (state.cart.length === 0) {
                    showToast(
                        "Your cart is empty"
                    );

                    return;
                }

                showToast(
                    "Checkout integration coming soon"
                );
            }
        );

    /* =========================================================
       COUNTDOWN
    ========================================================== */

    const SALE_END =
        new Date(
            "2026-09-10T23:59:59"
        ).getTime();

    function updateCountdown() {

        const remaining =
            Math.max(
                0,
                SALE_END - Date.now()
            );

        const totalSeconds =
            Math.floor(
                remaining / 1000
            );

        const days =
            Math.floor(
                totalSeconds / 86400
            );

        const hours =
            Math.floor(
                (totalSeconds % 86400) / 3600
            );

        const minutes =
            Math.floor(
                (totalSeconds % 3600) / 60
            );

        const seconds =
            totalSeconds % 60;

        document
            .getElementById("dealDays")
            .textContent =
            String(days).padStart(2, "0");

        document
            .getElementById("dealHours")
            .textContent =
            String(hours).padStart(2, "0");

        document
            .getElementById("dealMinutes")
            .textContent =
            String(minutes).padStart(2, "0");

        document
            .getElementById("dealSeconds")
            .textContent =
            String(seconds).padStart(2, "0");
    }

    updateCountdown();

    setInterval(
        updateCountdown,
        1000
    );

    /* =========================================================
       INITIALIZE
    ========================================================== */

    document
        .getElementById("year")
        .textContent =
        new Date().getFullYear();

    renderProducts();
    renderCart();

</script>
```

</body>

</html>
