-- CREATE TABLE ad 
-- (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     title VARCHAR(100) NOT NULL,
--     description TEXT,
--     owner VARCHAR(100) NOT NULL,
--     price INT,
--     picture VARCHAR(100),
--     location VARCHAR(100),
--     createdAt DATE,
--     category_id INTEGER,
--     FOREIGN KEY (category_id) REFERENCES category(id)
-- );


-- CREATE TABLE category (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     name VARCHAR(50) NOT NULL
-- );

-- INSERT INTO category (name) VALUES 
--     ('vêtement'),
--     ('voiture'),
--     ('autre');


-- INSERT INTO ad (title, description, owner, price, picture, location, createdAt) 
-- VALUES 
-- ('Volkswagen Golf', 'Belle Volkswagen Golf en excellent état, faible kilométrage', 'john@doe.fr', 15000, 'https://www.motortrend.com/uploads/sites/10/2022/05/2021-volkswagen-golf-tsi-5door-hatchback-angular-front.png', 'Bordeaux', '2023-08-20'),
-- ('Toyota Corolla', 'Toyota Corolla bien entretenue avec historique complet de l''entretien', 'jane@smith.fr', 13000, 'https://media.ed.edmunds-media.com/toyota/corolla/2023/oem/2023_toyota_corolla_sedan_xse_fq_oem_1_1280.jpg', 'Bordeaux', '2023-06-11'),
-- ('BMW 3 Series', 'BMW Série 3 en parfait état, équipée de nombreuses options', 'michael@johnson.fr', 25000, 'https://www.bmw.fr/content/dam/bmw/common/all-models/3-series/sedan/2022/navigation/bmw-3-series-sedan-lci-modelfinder.png/jcr:content/renditions/cq5dam.resized.img.585.low.time1652686057507.png', 'Bordeaux', '2023-12-01'),
-- ('Mercedes-Benz C-Class', 'Mercedes-Benz Classe C avec intérieur en cuir, toit ouvrant panoramique', 'emily@wilson.fr', 20000, 'https://www.topgear.com/sites/default/files/2021/11/Mercedes_C300D_0000.jpg', 'Bordeaux', '2023-12-21'),
-- ('Audi A4', 'Audi A4 bien entretenue, conduite en ville', 'david@martinez.fr', 18000, 'https://www.turbo.fr/sites/default/files/2019-12/essai_audi_a4_avant_facelift_2019_40_tfsi.jpeg', 'Lyon', '2023-03-11'),
-- ('Renault Megane', 'Renault Megane en bon état général, idéale pour la famille', 'sophie@dupont.fr', 10000, 'https://www.challenges.fr/assets/img/2011/02/14/cover-r4x3w1200-579c3bbcdbdff-renault-megane-iii-mondial-2008-digne-fille.jpg', 'Lyon', '2023-04-15'),
-- ('Peugeot 308', 'Peugeot 308 avec faible consommation de carburant', 'antoine@leroy.fr', 12000, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Peugeot_308_5-T%C3%BCrer_front-1.JPG/1200px-Peugeot_308_5-T%C3%BCrer_front-1.JPG', 'Bordeaux', '2023-07-01'),
-- ('Ford Focus', 'Ford Focus en excellent état, toujours garée dans un garage', 'laura@martin.fr', 14000, 'https://upload.wikimedia.org/wikipedia/commons/7/75/2018_Ford_Focus_ST-Line_X_1.0.jpg', 'Bordeaux', '2023-08-10'),
-- ('Citroen C3', 'Citroen C3 compacte et pratique, idéale pour la conduite en ville', 'pauline@lefevre.fr', 11000, 'https://cdn.motor1.com/images/mgl/vj3bv/s3/2016-citroen-c3.jpg', 'Bordeaux', '2023-02-21'),
-- ('Nissan Qashqai', 'Nissan Qashqai spacieux et fiable, parfait pour les longs trajets', 'thomas@dubois.fr', 16000, 'https://upload.wikimedia.org/wikipedia/commons/5/56/Nissan_Qashqai%2B2_dCi_Facelift_front_20100508.jpg', 'Lyon', '2023-02-21'),
-- ('Peugeot 208', 'Peugeot 208 économique et confortable, idéale pour les déplacements quotidiens', 'lucie@martin.fr', 13000, 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Peugeot_208.JPG/2560px-Peugeot_208.JPG', 'Lyon', '2023-02-21'),
-- ('Renault Clio', 'Renault Clio en très bon état, faible consommation de carburant', 'nicolas@dubois.fr', 11000, 'https://staticeu-h2.izmocars.com/toolkit/commonassets/2023/23renault/23renaultcliotechnohb5fb/23renaultcliotechnohb5fb_pixGallery/_gallerypix/renault_cliotechnohb5fb_concept.jpg', 'Lyon', '2023-03-01'),
-- ('Hyundai i30', 'Hyundai i30 bien équipée, idéale pour les longs trajets', 'marie@laurent.fr', 12000, 'https://image.elite-auto.fr//visuel/HYUNDAI/hyundai_20i30technohb3fb_angularfront.png', 'Lyon', '2023-11-21'),
-- ('Kia Sportage', 'Kia Sportage avec un grand coffre, parfait pour les familles', 'pierre@leclerc.fr', 14000, 'https://static.actu.fr/uploads/2021/09/photo-kia-sportage-1.jpg', 'Paris', '2023-09-21'),
-- ('Opel Corsa', 'Opel Corsa compacte et agile, parfaite pour la conduite en ville', 'camille@petit.fr', 10000, 'https://staticeu-h2.izmocars.com/toolkit/commonassets/2023/23opel/23opelcorsaeveditionhb6b/23opelcorsaeveditionhb6b_pixGallery/_gallerypix/opel_corsaeveditionhb6b_concept.jpg', 'Paris', '2023-08-20'),
-- ('Fiat 500', 'Fiat 500 avec un design rétro, idéale pour se faufiler en ville', 'julien@rousseau.fr', 9000, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Fiat_500_%282007%29_01.JPG/250px-Fiat_500_%282007%29_01.JPG', 'Paris', '2023-02-21'),
-- ('Seat Leon', 'Seat Leon spacieuse et confortable, idéale pour les voyages en famille', 'marine@girard.fr', 15000, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/SEAT_Leon_Mk4_1X7A5842.jpg/1200px-SEAT_Leon_Mk4_1X7A5842.jpg', 'Paris', '2023-02-11'),
-- ('Dacia Duster', 'Dacia Duster robuste et fiable, parfait pour les routes accidentées', 'mathieu@blanc.fr', 13000, 'https://media.dacia.com/wp-content/uploads/2024/01/8e122f8c9a7346a28fe2657824109472.jpeg', 'Paris', '2023-12-01'),
-- ('Skoda Octavia', 'Skoda Octavia élégante et bien équipée, conduite agréable', 'emilie@dubois.fr', 11000, 'https://images.caradisiac.com/images/6/8/3/0/206830/S1-presentation-video-skoda-octavia-2024-788196.jpg', 'Paris', '2023-05-01'),
-- ('Toyota Yaris', 'Toyota Yaris compacte et économe en carburant, parfait pour la ville', 'alexandre@dupont.fr', 10000, 'https://www.automobile-magazine.fr/asset/cms/175868/config/124616/toyota-yaris-interieur-2020.jpg', 'Lyon', '2023-05-01');


-- INSERT INTO ad (title, description, owner, price, picture, location, createdAt, category_id)
-- VALUES 
--     ('Chemise en lin bleue', 'Chemise légère en lin, parfaite pour l''été', 'Thomas Martin', 30, 'images/chemise.jpg', 'Bordeaux', '2024-02-29', 1),
--     ('Volkswagen Golf 2020', 'Volkswagen Golf dernière génération, faible kilométrage', 'Lucie Dupont', 18000, 'images/golf.jpg', 'Lyon', '2024-02-28', 2),
--     ('Canapé d''angle en cuir', 'Canapé d''angle en cuir véritable, état neuf', 'Pauline Dubois', 800, 'images/canape.jpg', 'Paris', '2024-02-27', 3),
--     ('Nintendo Switch', 'Console Nintendo Switch avec Joy-Cons et jeux', 'Antoine Durand', 250, 'images/switch.jpg', 'Bordeaux', '2024-02-26', 1),
--     ('Robe de soirée noire', 'Robe de soirée élégante, taille S', 'Marie Lefevre', 50, 'images/robe.jpg', 'Lyon', '2024-02-25', 2),
--     ('Renault Clio 2017', 'Renault Clio bien entretenue, idéale pour la ville', 'Julien Rousseau', 10000, 'images/clio.jpg', 'Paris', '2024-02-24', 3),
--     ('Table basse en bois massif', 'Table basse rustique en bois massif', 'Camille Petit', 150, 'images/table_basse.jpg', 'Bordeaux', '2024-02-23', 1),
--     ('iPhone 12 Pro', 'iPhone 12 Pro 256 Go, couleur argent', 'Sophie Martin', 900, 'images/iphone.jpg', 'Lyon', '2024-02-22', 2),
--     ('Manteau en laine', 'Manteau chaud en laine, style classique', 'Alexandre Laurent', 70, 'images/manteau.jpg', 'Paris', '2024-02-21', 3),
--     ('Toyota Yaris 2015', 'Toyota Yaris compacte et économique', 'Eva Garcia', 8000, 'images/yaris.jpg', 'Bordeaux', '2024-02-20', 1),
--     ('Table de jardin en aluminium', 'Table de jardin légère et résistante aux intempéries', 'Mathieu Dubois', 200, 'images/table_jardin.jpg', 'Lyon', '2024-02-19', 2),
--     ('PlayStation 5', 'Console de jeu PlayStation 5 avec manette DualSense', 'Lucas Martin', 500, 'images/ps5.jpg', 'Paris', '2024-02-18', 3),
--     ('Chemisier à pois', 'Chemisier élégant à pois, taille M', 'Emma Leroy', 25, 'images/chemisier.jpg', 'Bordeaux', '2024-02-17', 1),
--     ('BMW X3 2019', 'BMW X3 tout équipé, en excellent état', 'Louis Dupuis', 25000, 'images/bmw.jpg', 'Lyon', '2024-02-16', 2),
--     ('Meuble TV moderne', 'Meuble TV avec rangements, design contemporain', 'Anaïs Martin', 300, 'images/meuble_tv.jpg', 'Paris', '2024-02-15', 3),
--     ('MacBook Pro 13 pouces', 'MacBook Pro 13 pouces avec puce M1, comme neuf', 'Thomas Lefevre', 1200, 'images/macbook.jpg', 'Bordeaux', '2024-02-14', 1),
--     ('Chaussures de sport Nike', 'Chaussures de sport Nike Air Zoom, pointure 42', 'Léa Rousseau', 80, 'images/nike.jpg', 'Lyon', '2024-02-13', 2),
--     ('Citroën C3 Picasso 2016', 'Citroën C3 Picasso spacieux et confortable', 'Nicolas Garcia', 9000, 'images/c3.jpg', 'Paris', '2024-02-12', 3),
--     ('Table à manger en verre', 'Table à manger rectangulaire en verre trempé', 'Manon Petit', 250, 'images/table_manger.jpg', 'Bordeaux', '2024-02-11', 1),
--     ('Samsung Galaxy Tab S7', 'Tablette Samsung Galaxy Tab S7 avec stylet S Pen', 'Antoine Laurent', 600, 'images/tablet.jpg', 'Lyon', '2024-02-10', 2);



