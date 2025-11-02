SELECT * FROM ventes;
/*AFFICHER LE CHIFFRE D'AFFAIRE*/
SELECT sum(prix*qte) as chiffre_daffaire
FROM VENTES ;


/* LES VENTES PAR PRODUIT */
SELECT 
    produit,
    SUM(qte) AS total_vendu
FROM ventes
GROUP BY produit
ORDER BY total_vendu DESC;

 /* LES VENTES PAR RÉGION */
SELECT 
    region,
    SUM(qte * prix) AS chiffre_affaires_total
FROM ventes
GROUP BY region
ORDER BY chiffre_affaires_total DESC;


