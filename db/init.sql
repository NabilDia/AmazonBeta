

-- ==============================
-- 1️⃣ TABLES
-- ==============================


-- ==============================
-- 2️⃣ CATÉGORIES
-- ==============================

INSERT INTO categories (name, description) VALUES
('Informatique', 'Ordinateurs, périphériques et accessoires'),
('Téléphonie', 'Smartphones et accessoires'),
('Maison', 'Articles pour la maison et électroménager'),
('Mode', 'Vêtements, chaussures et accessoires'),
('Jeux vidéo', 'Consoles et jeux'),
('Livres', 'Romans, mangas et livres éducatifs'),
('Beauté', 'Produits de soin et maquillage');

-- ==============================
-- 3️⃣ PRODUITS (35 items)
-- ==============================

INSERT INTO products (name, description, price, stock, category_id, image_url)
VALUES
-- Informatique
('MacBook Pro 16"', 'Apple M3 Pro 16 Go RAM, 1 To SSD', 2499.99, 10, 1, 'https://via.placeholder.com/150'),
('Dell XPS 13', 'Ultrabook 13", Intel i7, 16 Go RAM, 512 Go SSD', 1399.00, 20, 1, 'https://via.placeholder.com/150'),
('HP Spectre x360', 'Convertible tactile 14", Intel i5', 1199.00, 18, 1, 'https://via.placeholder.com/150'),
('Clavier Logitech MX Keys', 'Clavier sans fil rétroéclairé', 109.99, 50, 1, 'https://via.placeholder.com/150'),
('Souris Logitech MX Master 3', 'Souris ergonomique Bluetooth', 89.99, 60, 1, 'https://via.placeholder.com/150'),

-- Téléphonie
('iPhone 15 Pro', 'Apple, 128 Go, Titane naturel', 1199.00, 25, 2, 'https://via.placeholder.com/150'),
('Samsung Galaxy S24 Ultra', '512 Go, Noir titane', 1349.00, 30, 2, 'https://via.placeholder.com/150'),
('Google Pixel 8', '128 Go, Android 14', 799.00, 40, 2, 'https://via.placeholder.com/150'),
('Coque iPhone transparente', 'Protection silicone antichoc', 19.99, 100, 2, 'https://via.placeholder.com/150'),
('Chargeur rapide USB-C 30W', 'Compatible iPhone et Android', 24.99, 75, 2, 'https://via.placeholder.com/150'),

-- Maison
('Aspirateur Dyson V12', 'Aspirateur sans fil ultra léger', 599.00, 15, 3, 'https://via.placeholder.com/150'),
('Machine à café Nespresso', 'Cafetière automatique avec mousseur', 189.00, 25, 3, 'https://via.placeholder.com/150'),
('Ventilateur Rowenta Turbo', 'Puissant et silencieux', 79.99, 40, 3, 'https://via.placeholder.com/150'),
('Robot cuiseur Moulinex', 'Multifonction avec écran tactile', 499.00, 10, 3, 'https://via.placeholder.com/150'),
('Set de couteaux en inox', '10 pièces avec support magnétique', 59.99, 70, 3, 'https://via.placeholder.com/150'),

-- Mode
('T-shirt Nike', 'Coton bio, unisexe', 29.99, 80, 4, 'https://via.placeholder.com/150'),
('Jeans Levi’s 501', 'Coupe droite, denim bleu', 89.99, 60, 4, 'https://via.placeholder.com/150'),
('Chaussures Adidas Stan Smith', 'Blanches classiques', 99.99, 45, 4, 'https://via.placeholder.com/150'),
('Veste en cuir Zara', 'Noire, coupe slim', 159.99, 20, 4, 'https://via.placeholder.com/150'),
('Sac à dos Herschel', 'Modèle Little America, 25L', 89.99, 30, 4, 'https://via.placeholder.com/150'),

-- Jeux vidéo
('PlayStation 5', 'Console Sony avec lecteur Blu-ray', 549.00, 25, 5, 'https://via.placeholder.com/150'),
('Xbox Series X', 'Console Microsoft 1 To SSD', 549.00, 20, 5, 'https://via.placeholder.com/150'),
('Nintendo Switch OLED', 'Console hybride avec écran OLED', 349.00, 35, 5, 'https://via.placeholder.com/150'),
('Manette PS5 DualSense', 'Manette sans fil blanche', 69.99, 70, 5, 'https://via.placeholder.com/150'),
('FIFA 25', 'Jeu de football - Édition Standard', 69.99, 100, 5, 'https://via.placeholder.com/150'),

-- Livres
('Atomic Habits', 'Livre sur les habitudes durables - James Clear', 21.99, 200, 6, 'https://via.placeholder.com/150'),
('Clean Code', 'Guide du code propre - Robert C. Martin', 39.99, 150, 6, 'https://via.placeholder.com/150'),
('Harry Potter à l’école des sorciers', 'Tome 1 - J.K. Rowling', 12.99, 250, 6, 'https://via.placeholder.com/150'),
('L’Alchimiste', 'Roman de Paulo Coelho', 9.99, 300, 6, 'https://via.placeholder.com/150'),
('Le Petit Prince', 'Oeuvre classique d’Antoine de Saint-Exupéry', 8.99, 400, 6, 'https://via.placeholder.com/150'),

-- Beauté
('Crème hydratante Nivea', 'Soin du visage 100 ml', 6.99, 150, 7, 'https://via.placeholder.com/150'),
('Shampoing L’Oréal Professionnel', 'Pour cheveux secs, 500 ml', 14.99, 120, 7, 'https://via.placeholder.com/150'),
('Parfum Dior Sauvage', 'Eau de toilette 100 ml', 109.99, 80, 7, 'https://via.placeholder.com/150'),
('Rouge à lèvres Maybelline', 'Couleur intense, longue tenue', 12.99, 130, 7, 'https://via.placeholder.com/150'),
('Crème solaire Avène SPF 50+', 'Protection solaire visage', 17.99, 90, 7, 'https://via.placeholder.com/150');



SELECT COUNT(*) AS total_products FROM products;