SELECT
     mrconso.`STR` AS mrconso_STR,
     mrconso.`CUI` AS mrconso_CUI,
     mrdef.`DEF` AS mrdef_DEF,
     mrrel.`REL` AS mrrel_REL,
     mrrel.`CUI2` AS mrrel_CUI2,
     mrconso_A.`STR` AS mrconso_A_STR
FROM
     `mrdef` mrdef INNER JOIN `mrconso` mrconso ON mrdef.`CUI` = mrconso.`CUI`
     INNER JOIN `mrrel` mrrel ON mrconso.`CUI` = mrrel.`CUI1`
     INNER JOIN `mrconso` mrconso_A ON mrrel.`CUI2` = mrconso_A.`CUI`
WHERE
     mrconso.`STR` = '$${SCol0}$$'
 AND mrrel.`REL` = 'SY'