import mods.ResearchTable;

print("--- loading Stages.zs ---");

//Table Recipe
recipes.addShaped(<researchtable:table>, [[<ore:ingotIron>, <minecraft:book>, <ore:gearWood>], [<ore:ingotIron>, <minecraft:crafting_table>, <ore:chest>], [<ore:ingotIron>, <minecraft:book>, <ore:gearWood>]]);

//Variables
var cat = ResearchTable.addCategory(<minecraft:grass>);


//Stages Mods
mods.recipestages.Recipes.setRecipeStageByMod("Mekanism", "mekanism");
mods.recipestages.Recipes.setRecipeStageByMod("Thermal_Expansion", "thermalexpansion");
mods.recipestages.Recipes.setRecipeStageByMod("Thermal_Dynamics", "thermaldynamics");
mods.recipestages.Recipes.setRecipeStageByMod("Astral_Sorcery", "astralsorcery");
mods.recipestages.Recipes.setRecipeStageByMod("Thaumcraft", "thaumcraft");

//Stages Recipes
//mods.recipestages.Recipes.setRecipeStage("IC2Fu", <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}));
//mods.recipestages.Recipes.addShaped("IC2_Cable", "Mekanism", <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}),[[null, <ore:craftingToolWireCutter>],[null, <ore:plateCopper>]]);


//Research Table
//Unlock Tech Tree
ResearchTable.builder("Unlock", cat)
  .setIcons(<minecraft:grass>)
  .setTitle("Tech Tree Unlock") 
  .setDescription("Welcome To The Modpack, To Reasearch Stuff In This Pack You Must Have This Research First.")
  .addCondition(<ore:ingotIron> * 8, <minecraft:gold_ingot> * 8)
  .setRewardStages("Unlock")
  .setRewardCommands("/say \"wow, @s Completed The Unlock stage\"")
  .setRewardItems(<minecraft:gold_ingot> * 2,<minecraft:iron_ingot> * 2)
//.setNoMaxCount()
  .build();

//Unlock Mekanism
ResearchTable.builder("Mekanism", cat)
  .setIcons(<mekanism:basicblock:8>)
  .setTitle("Mekanism")
  .setDescription("Input your description")
  .setRequiredResearches("Unlock")
  .setRequiredStages("Unlock")
  .addCondition(<ore:ingotSteel> * 8, <liquid:lava> * 2000)
  .setRewardStages("Mekanism")
  .setRewardCommands("/say \"wow, @s has Researched Mekanism\"")
  .setRewardItems(<mekanism:enrichedalloy> * 2, <mekanism:cardboardbox>)
  .setMaxCount(1)
  .build();
  
//Unlock Astral Sorcery
ResearchTable.builder("Astral_Sorcery", cat)
  .setIcons(<mekanism:basicblock:8>)
  .setTitle("Astral Sorcery")
  .setDescription("Input your description")
  .setRequiredResearches("Unlock")
  .setRequiredStages("Unlock")
  .addCondition(<ore:ingotIron> * 8, <liquid:lava> * 2000)
  .setRewardStages("Astral_Sorcery")
  .setRewardCommands("/say \"wow, @s has Researched Astral Sorcery\"")
  .setRewardItems(<mekanism:enrichedalloy> * 2, <mekanism:cardboardbox>)
  .setMaxCount(1)
  .build();

//Unlock Thermal Expansion
ResearchTable.builder("Thermal_Expansion", cat)
  .setIcons(<mekanism:basicblock:8>)
  .setTitle("Thermal Expansion")
  .setDescription("This Research Will Unlock Anything Related To Thermal Expansion")
  .setRequiredResearches("Unlock", "Mekanism")
  .setRequiredStages("Unlock", "Mekanism")
  .addEnergyCondition(10000)
  .addCondition(<ore:ingotSteel> * 8, <liquid:lava> * 2000)
  .setRewardStages("Thermal_Expansion", "Thermal_Dynamics")
  .setRewardCommands("/say \"wow, @s has Researched Thermal Expansion\"")
  .setRewardItems(<mekanism:enrichedalloy> * 2, <mekanism:cardboardbox>)
  .setMaxCount(1)
  .build();


//Unlock Thaumcraft
  ResearchTable.builder("Thaumcraft", cat)
  .setIcons(<thaumcraft:thaumonomicon>)
  .setTitle("Thaumcraft")
  .setDescription("Reasearch This To Unlock Thaumcraft")
  .setRequiredResearches("Unlock")
  .setRequiredStages("Unlock")
  .addCondition(<ore:ingotSteel> * 8, <liquid:lava> * 2000)
  .setRewardStages("Thaumcraft")
  .setRewardCommands("/say \"wow, @s has Researched Thaumcraft\"")
  .setRewardItems(<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}) * 8,<thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}) * 8, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}) * 8, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}) * 8, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}) * 8, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]}) * 8)
  .setMaxCount(1)
  .build();

print("--- Stages.zs initialized ---");