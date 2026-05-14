<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>LUXE — Premium E‑Commerce Experience</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Playfair+Display:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --dark: #0a0a0a;
            --darker: #000000;
            --light: #ffffff;
            --gray-light: #f5f5f5;
            --gray: #e0e0e0;
            --gray-dark: #666666;
            --accent: #c7a17a;
            --accent-dark: #a07d5e;
            --accent-light: #e8d5c4;
            --success: #2d6a4f;
            --error: #d62828;
            --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        body {
            font-family: 'Inter', sans-serif;
            color: var(--dark);
            background: var(--light);
            line-height: 1.5;
            overflow-x: hidden;
        }

        h1, h2, h3, h4, h5, h6 {
            font-family: 'Playfair Display', serif;
            font-weight: 600;
        }

        /* Custom Scrollbar */
        ::-webkit-scrollbar {
            width: 8px;
        }

        ::-webkit-scrollbar-track {
            background: var(--gray-light);
        }

        ::-webkit-scrollbar-thumb {
            background: var(--accent);
            border-radius: 4px;
        }

        /* Navigation */
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background: rgba(255, 255, 255, 0.98);
            backdrop-filter: blur(10px);
            z-index: 1000;
            border-bottom: 1px solid rgba(0, 0, 0, 0.05);
            transition: var(--transition);
        }

        .nav-container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: 700;
            font-family: 'Playfair Display', serif;
            background: linear-gradient(135deg, var(--dark) 0%, var(--accent) 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            letter-spacing: -0.5px;
        }

        .nav-links {
            display: flex;
            gap: 2rem;
            list-style: none;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--dark);
            font-weight: 500;
            transition: var(--transition);
            position: relative;
        }

        .nav-links a::after {
            content: '';
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--accent);
            transition: var(--transition);
        }

        .nav-links a:hover::after {
            width: 100%;
        }

        .nav-icons {
            display: flex;
            gap: 1.5rem;
            align-items: center;
        }

        .nav-icons button {
            background: none;
            border: none;
            cursor: pointer;
            font-size: 1.2rem;
            color: var(--dark);
            transition: var(--transition);
            position: relative;
        }

        .nav-icons button:hover {
            color: var(--accent);
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -12px;
            background: var(--accent);
            color: white;
            font-size: 0.7rem;
            padding: 2px 6px;
            border-radius: 20px;
            font-weight: 600;
        }

        /* Hero Section */
        .hero {
            min-height: 100vh;
            background: linear-gradient(135deg, #fdfbfb 0%, #ebedee 100%);
            display: flex;
            align-items: center;
            position: relative;
            overflow: hidden;
        }

        .hero-content {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 2rem;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 4rem;
            align-items: center;
        }

        .hero-text h1 {
            font-size: 4rem;
            line-height: 1.2;
            margin-bottom: 1.5rem;
            color: var(--dark);
        }

        .hero-text p {
            font-size: 1.1rem;
            color: var(--gray-dark);
            margin-bottom: 2rem;
            line-height: 1.6;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            padding: 1rem 2rem;
            border: none;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            text-decoration: none;
        }

        .btn-primary {
            background: var(--dark);
            color: var(--light);
        }

        .btn-primary:hover {
            background: var(--accent);
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(199, 161, 122, 0.3);
        }

        .btn-outline {
            background: transparent;
            border: 2px solid var(--dark);
            color: var(--dark);
        }

        .btn-outline:hover {
            background: var(--dark);
            color: var(--light);
        }

        .hero-image {
            position: relative;
        }

        .hero-image img {
            width: 100%;
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
        }

        .floating-badge {
            position: absolute;
            bottom: -20px;
            right: -20px;
            background: var(--accent);
            padding: 1rem;
            border-radius: 15px;
            color: white;
            text-align: center;
        }

        /* Categories */
        .section {
            padding: 5rem 2rem;
        }

        .container {
            max-width: 1400px;
            margin: 0 auto;
        }

        .section-title {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .section-subtitle {
            text-align: center;
            color: var(--gray-dark);
            margin-bottom: 3rem;
        }

        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
        }

        .category-card {
            text-align: center;
            padding: 2rem;
            background: var(--gray-light);
            border-radius: 15px;
            cursor: pointer;
            transition: var(--transition);
        }

        .category-card:hover {
            transform: translateY(-10px);
            background: var(--accent-light);
        }

        .category-icon {
            font-size: 2.5rem;
            color: var(--accent);
            margin-bottom: 1rem;
        }

        /* Products */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 2rem;
        }

        .product-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
            transition: var(--transition);
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
        }

        .product-badge {
            position: absolute;
            top: 1rem;
            left: 1rem;
            background: var(--accent);
            color: white;
            padding: 0.3rem 0.8rem;
            border-radius: 20px;
            font-size: 0.8rem;
            font-weight: 600;
            z-index: 1;
        }

        .product-image {
            width: 100%;
            height: 300px;
            object-fit: cover;
            transition: var(--transition);
        }

        .product-card:hover .product-image {
            transform: scale(1.05);
        }

        .product-info {
            padding: 1.5rem;
        }

        .product-title {
            font-size: 1.1rem;
            margin-bottom: 0.5rem;
        }

        .product-price {
            font-size: 1.3rem;
            font-weight: 700;
            color: var(--accent);
            margin-bottom: 1rem;
        }

        .product-old-price {
            text-decoration: line-through;
            color: var(--gray-dark);
            font-size: 0.9rem;
            margin-left: 0.5rem;
        }

        .product-rating {
            color: #ffc107;
            margin-bottom: 1rem;
        }

        .add-to-cart {
            width: 100%;
            padding: 0.8rem;
            background: var(--dark);
            color: white;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-weight: 600;
            transition: var(--transition);
        }

        .add-to-cart:hover {
            background: var(--accent);
        }

        /* Flash Sale */
        .flash-sale {
            background: linear-gradient(135deg, var(--dark) 0%, #1a1a1a 100%);
            color: white;
            border-radius: 20px;
            overflow: hidden;
        }

        .sale-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 2rem;
            padding: 3rem;
        }

        .sale-text h2 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }

        .countdown {
            display: flex;
            gap: 1rem;
            margin: 2rem 0;
        }

        .countdown-box {
            background: rgba(255, 255, 255, 0.1);
            padding: 1rem;
            border-radius: 10px;
            text-align: center;
            min-width: 80px;
        }

        .countdown-number {
            font-size: 2rem;
            font-weight: 700;
        }

        .sale-image img {
            width: 100%;
            border-radius: 15px;
        }

        /* Testimonials */
        .testimonials-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
        }

        .testimonial-card {
            background: var(--gray-light);
            padding: 2rem;
            border-radius: 15px;
            transition: var(--transition);
        }

        .testimonial-card:hover {
            transform: translateY(-5px);
        }

        .testimonial-text {
            font-style: italic;
            margin-bottom: 1.5rem;
            color: var(--gray-dark);
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .testimonial-avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
        }

        /* Newsletter */
        .newsletter {
            background: linear-gradient(135deg, var(--accent-light) 0%, var(--accent) 100%);
            border-radius: 20px;
            padding: 3rem;
            text-align: center;
        }

        .newsletter-form {
            display: flex;
            gap: 1rem;
            justify-content: center;
            margin-top: 2rem;
        }

        .newsletter-input {
            padding: 1rem 1.5rem;
            border: none;
            border-radius: 40px;
            width: 300px;
            font-size: 1rem;
        }

        /* Footer */
        .footer {
            background: var(--dark);
            color: var(--gray);
            padding: 3rem 2rem;
        }

        .footer-content {
            max-width: 1400px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: 2fr 1fr 1fr;
            gap: 3rem;
        }

        .footer-logo {
            font-size: 1.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
        }

        .footer-links h4 {
            margin-bottom: 1rem;
            color: white;
        }

        .footer-links ul {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 0.5rem;
        }

        .footer-links a {
            color: var(--gray);
            text-decoration: none;
            transition: var(--transition);
        }

        .footer-links a:hover {
            color: var(--accent);
        }

        /* Mobile Menu */
        .mobile-menu {
            display: none;
            position: fixed;
            top: 0;
            left: -100%;
            width: 80%;
            height: 100%;
            background: white;
            z-index: 1001;
            padding: 2rem;
            transition: var(--transition);
        }

        .mobile-menu.active {
            left: 0;
        }

        @media (max-width: 768px) {
            .nav-links {
                display: none;
            }

            .mobile-menu-toggle {
                display: block;
            }

            .hero-content {
                grid-template-columns: 1fr;
                text-align: center;
            }

            .sale-content {
                grid-template-columns: 1fr;
            }

            .footer-content {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>
    <!-- Navigation -->
    <nav class="navbar">
        <div class="nav-container">
            <div class="logo">LUXE</div>
            <ul class="nav-links">
                <li><a href="#home">Home</a></li>
                <li><a href="#products">Shop</a></li>
                <li><a href="#categories">Categories</a></li>
                <li><a href="#deals">Deals</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
            <div class="nav-icons">
                <button id="searchBtn"><i class="fas fa-search"></i></button>
                <button id="cartBtn">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </button>
                <button id="userBtn"><i class="fas fa-user"></i></button>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section id="home" class="hero">
        <div class="hero-content">
            <div class="hero-text">
                <h1>Elevate Your Style<br>With Premium Quality</h1>
                <p>Discover the finest collection of luxury products curated just for you. Experience elegance, comfort, and sophistication.</p>
                <button class="btn btn-primary" id="shopNowBtn">Shop Now <i class="fas fa-arrow-right"></i></button>
                <button class="btn btn-outline" id="exploreBtn">Explore Collection</button>
            </div>
            <div class="hero-image">
                <img src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=800&q=80" alt="Luxury shopping">
                <div class="floating-badge">
                    <i class="fas fa-gem"></i> Premium Quality
                </div>
            </div>
        </div>
    </section>

    <!-- Categories -->
    <section id="categories" class="section">
        <div class="container">
            <h2 class="section-title">Shop by Category</h2>
            <p class="section-subtitle">Discover our curated collections</p>
            <div class="categories-grid" id="categoriesGrid"></div>
        </div>
    </section>

    <!-- Products -->
    <section id="products" class="section">
        <div class="container">
            <h2 class="section-title">Featured Products</h2>
            <p class="section-subtitle">Handpicked just for you</p>
            <div class="products-grid" id="productsGrid"></div>
        </div>
    </section>

    <!-- Flash Sale -->
    <section id="deals" class="section">
        <div class="container">
            <div class="flash-sale">
                <div class="sale-content">
                    <div class="sale-text">
                        <h2>Flash Sale!</h2>
                        <p>Limited time offers up to 40% off on selected items</p>
                        <div class="countdown" id="countdown">
                            <div class="countdown-box">
                                <div class="countdown-number" id="days">00</div>
                                <div>Days</div>
                            </div>
                            <div class="countdown-box">
                                <div class="countdown-number" id="hours">00</div>
                                <div>Hours</div>
                            </div>
                            <div class="countdown-box">
                                <div class="countdown-number" id="minutes">00</div>
                                <div>Mins</div>
                            </div>
                            <div class="countdown-box">
                                <div class="countdown-number" id="seconds">00</div>
                                <div>Secs</div>
                            </div>
                        </div>
                        <button class="btn btn-primary" id="grabDealBtn">Grab Deal Now</button>
                    </div>
                    <div class="sale-image">
                        <img src="https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=600&q=80" alt="Flash sale">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials -->
    <section class="section">
        <div class="container">
            <h2 class="section-title">What Our Customers Say</h2>
            <p class="section-subtitle">Join thousands of satisfied customers</p>
            <div class="testimonials-grid" id="testimonialsGrid"></div>
        </div>
    </section>

    <!-- Newsletter -->
    <section class="section">
        <div class="container">
            <div class="newsletter">
                <h3>Subscribe to Our Newsletter</h3>
                <p>Get exclusive offers and updates straight to your inbox</p>
                <form class="newsletter-form" id="newsletterForm">
                    <input type="email" class="newsletter-input" placeholder="Enter your email" required>
                    <button type="submit" class="btn btn-primary">Subscribe</button>
                </form>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="footer-content">
            <div>
                <div class="footer-logo">LUXE</div>
                <p>Premium shopping experience<br>Quality products, exceptional service</p>
            </div>
            <div class="footer-links">
                <h4>Quick Links</h4>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#products">Shop</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#deals">Deals</a></li>
                </ul>
            </div>
            <div class="footer-links">
                <h4>Contact</h4>
                <ul>
                    <li><a href="#">Email: info@luxe.com</a></li>
                    <li><a href="#">Phone: +1 234 567 890</a></li>
                    <li><a href="#">Live Chat</a></li>
                </ul>
            </div>
        </div>
    </footer>

    <script>
        // Product Data
        const categories = [
            { name: 'Clothing', icon: 'fa-tshirt', count: 48 },
            { name: 'Accessories', icon: 'fa-gem', count: 32 },
            { name: 'Footwear', icon: 'fa-shoe-prints', count: 56 },
            { name: 'Bags', icon: 'fa-bag-shopping', count: 24 },
            { name: 'Jewelry', icon: 'fa-ring', count: 18 },
            { name: 'Watches', icon: 'fa-clock', count: 12 }
        ];

        const products = [
            { id: 1, name: 'Premium Leather Jacket', price: 299, oldPrice: 399, rating: 5, image: 'https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=400&q=80', badge: 'Best Seller' },
            { id: 2, name: 'Designer Handbag', price: 199, oldPrice: 299, rating: 4, image: 'https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=400&q=80', badge: 'Sale' },
            { id: 3, name: 'Luxury Watch', price: 499, oldPrice: 699, rating: 5, image: 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=400&q=80', badge: 'Limited' },
            { id: 4, name: 'Silk Scarf', price: 89, oldPrice: 129, rating: 4, image: 'https://images.unsplash.com/photo-1601924994987-69e26d50dc26?auto=format&fit=crop&w=400&q=80', badge: 'Trending' },
            { id: 5, name: 'Sunglasses', price: 159, oldPrice: 199, rating: 5, image: 'https://images.unsplash.com/photo-1572635196237-14b3f281503f?auto=format&fit=crop&w=400&q=80', badge: 'New' },
            { id: 6, name: 'Cashmere Sweater', price: 179, oldPrice: 249, rating: 4, image: 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?auto=format&fit=crop&w=400&q=80', badge: 'Winter' }
        ];

        const testimonials = [
            { name: 'Sarah Johnson', text: 'Absolutely love my purchase! The quality is outstanding and shipping was fast.', rating: 5, avatar: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80' },
            { name: 'Michael Chen', text: 'Best shopping experience ever. Will definitely buy again!', rating: 5, avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80' },
            { name: 'Emily Davis', text: 'The customer service was amazing and the product exceeded expectations.', rating: 4, avatar: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=100&q=80' }
        ];

        let cartCount = 0;

        // Render Categories
        function renderCategories() {
            const grid = document.getElementById('categoriesGrid');
            grid.innerHTML = categories.map(cat => `
                <div class="category-card">
                    <div class="category-icon"><i class="fas ${cat.icon}"></i></div>
                    <h3>${cat.name}</h3>
                    <p>${cat.count} products</p>
                </div>
            `).join('');
        }

        // Render Products
        function renderProducts() {
            const grid = document.getElementById('productsGrid');
            grid.innerHTML = products.map(product => `
                <div class="product-card">
                    <div class="product-badge">${product.badge}</div>
                    <img src="${product.image}" alt="${product.name}" class="product-image">
                    <div class="product-info">
                        <h3 class="product-title">${product.name}</h3>
                        <div class="product-price">
                            $${product.price}
                            <span class="product-old-price">$${product.oldPrice}</span>
                        </div>
                        <div class="product-rating">
                            ${'★'.repeat(product.rating)}${'☆'.repeat(5-product.rating)}
                        </div>
                        <button class="add-to-cart" data-id="${product.id}">Add to Cart</button>
                    </div>
                </div>
            `).join('');

            // Add to cart functionality
            document.querySelectorAll('.add-to-cart').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    cartCount++;
                    document.getElementById('cartCount').textContent = cartCount;
                    btn.textContent = 'Added!';
                    setTimeout(() => {
                        btn.textContent = 'Add to Cart';
                    }, 1000);
                });
            });
        }

        // Render Testimonials
        function renderTestimonials() {
            const grid = document.getElementById('testimonialsGrid');
            grid.innerHTML = testimonials.map(test => `
                <div class="testimonial-card">
                    <div class="testimonial-text">"${test.text}"</div>
                    <div class="testimonial-author">
                        <img src="${test.avatar}" alt="${test.name}" class="testimonial-avatar">
                        <div>
                            <strong>${test.name}</strong>
                            <div class="product-rating">${'★'.repeat(test.rating)}</div>
                        </div>
                    </div>
                </div>
            `).join('');
        }

        // Countdown Timer
        function startCountdown() {
            const targetDate = new Date();
            targetDate.setHours(targetDate.getHours() + 24);

            function updateCountdown() {
                const now = new Date();
                const diff = targetDate - now;

                const days = Math.floor(diff / (1000 * 60 * 60 * 24));
                const hours = Math.floor((diff % (24 * 60 * 60 * 1000)) / (1000 * 60 * 60));
                const minutes = Math.floor((diff % (60 * 60 * 1000)) / (1000 * 60));
                const seconds = Math.floor((diff % (60 * 1000)) / 1000);

                document.getElementById('days').textContent = String(days).padStart(2, '0');
                document.getElementById('hours').textContent = String(hours).padStart(2, '0');
                document.getElementById('minutes').textContent = String(minutes).padStart(2, '0');
                document.getElementById('seconds').textContent = String(seconds).padStart(2, '0');
            }

            updateCountdown();
            setInterval(updateCountdown, 1000);
        }

        // Newsletter Subscription
        document.getElementById('newsletterForm').addEventListener('submit', (e) => {
            e.preventDefault();
            const email = e.target.querySelector('input').value;
            if (email) {
                alert(`Thanks for subscribing! ${email}`);
                e.target.reset();
            }
        });

        // Smooth Scroll for navigation
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({ behavior: 'smooth' });
                }
            });
        });

        // Initialize
        renderCategories();
        renderProducts();
        renderTestimonials();
        startCountdown();

        // Event listeners
        document.getElementById('shopNowBtn').addEventListener('click', () => {
            document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        });

        document.getElementById('grabDealBtn').addEventListener('click', () => {
            cartCount++;
            document.getElementById('cartCount').textContent = cartCount;
            alert('Deal added to cart!');
        });
    </script>
</body>

</html>
