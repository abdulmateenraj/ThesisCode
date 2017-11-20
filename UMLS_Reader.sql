SELECT
     mrconso.`STR` AS mrconso_STR,
     mrconso.`CUI` AS mrconso_CUI,
     mrrel.`CUI2` AS mrrel_CUI2,
     mrrel.`REL` AS mrrel_REL
FROM
     `mrdef` mrdef INNER JOIN `mrconso` mrconso ON mrdef.`CUI` = mrconso.`CUI`
     INNER JOIN `mrrel` mrrel ON mrconso.`CUI` = mrrel.`CUI1`
WHERE
     mrconso.`STR` = 'multiple sclerosis'