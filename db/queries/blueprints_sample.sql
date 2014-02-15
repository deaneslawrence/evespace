SELECT blueprintType.typeID,
       blueprintType.typeName Blueprint,
       productType.typeID,
       productType.typeName Item,
--       productGraphic.iconFile ItemGraphic,
       productGroup.groupName ItemGroup,
       productCategory.categoryName ItemCategory,
       blueprints.productionTime,
       blueprints.techLevel,
       blueprints.researchProductivityTime,
       blueprints.researchMaterialTime,
       blueprints.researchCopyTime,
       blueprints.researchTechTime,
       blueprints.productivityModifier,
       blueprints.materialModifier,
       blueprints.wasteFactor,
       blueprints.maxProductionLimit
 FROM invblueprinttypes blueprints
 INNER JOIN invtypes AS blueprintType        ON blueprints.blueprintTypeID = blueprintType.typeID
 INNER JOIN invtypes AS productType          ON blueprints.productTypeID   = productType.typeID
 INNER JOIN invgroups AS productGroup        ON productType.groupID        = productGroup.groupID
 INNER JOIN invcategories AS productCategory ON productGroup.categoryID    = productCategory.categoryID
-- INNER JOIN eveGraphics AS blueprintGraphic  ON blueprintType.graphicID    = blueprintGraphic.graphicID
-- INNER JOIN eveicons AS productGraphic       ON productType.iconID         = productGraphic.iconID
 WHERE blueprintType.published = '1'