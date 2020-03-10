import mods.ResearchTable;

print("--- loading Stages.zs ---");

//Table Recipe
recipes.addShaped(<researchtable:table>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<minecraft:book>, <minecraft:crafting_table>, <minecraft:book>], [<ore:gearWood>, <ore:chest>, <ore:gearWood>]]);

//Variables
var cat = ResearchTable.addCategory(<minecraft:grass>);


//Stages Mods
mods.recipestages.Recipes.setRecipeStageByMod("Mekanism", "mekanism");
mods.recipestages.Recipes.setRecipeStageByMod("Thermal_Expansion", "thermalexpansion");
mods.recipestages.Recipes.setRecipeStageByMod("Thermal_Dynamics", "thermaldynamics");
mods.recipestages.Recipes.setRecipeStageByMod("Astral_Sorcery", "astralsorcery");
mods.recipestages.Recipes.setRecipeStageByMod("Thaumcraft", "thaumcraft");

//GT Stages <gregtech:machine_casing:11>
mods.recipestages.Recipes.setRecipeStage("GT_Stage_Bronze_Steam", "gregtech:machine_casing:10" );
mods.recipestages.Recipes.setRecipeStage("GT_Stage_Bronze_Steam", "gregtech:machine_casing:11" );
mods.recipestages.Recipes.setRecipeStage("GT_Stage_Steel_Steam", "gregtech:machine_casing:12" );
mods.recipestages.Recipes.setRecipeStage("GT_Stage_Steel_Steam", "gregtech:machine_casing:13" );
mods.recipestages.Recipes.setRecipeStage("GT_Stage_LV", "gregtech:machine:501" );
mods.recipestages.Recipes.setRecipeStage("GT_Stage_MV", "gregtech:machine:502" );
mods.recipestages.Recipes.setRecipeStage("GT_Stage_HV", "gregtech:machine:503" );
mods.recipestages.Recipes.setRecipeStage("GT_Stage_EV", "gregtech:machine:504" );
mods.recipestages.Recipes.setRecipeStage("GT_Stage_IV", "gregtech:machine:505" );

//Tech Tree Stages
mods.recipestages.Recipes.setRecipeStage("Extended_Crafting", <extendedcrafting:table_basic>);

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

// extendedcrafting
ResearchTable.builder("Extended_Crafting", cat)
  .setIcons(<mekanism:basicblock:8>)
  .setTitle("Extended Crafting")
  .setDescription("Input your description")
  .setRequiredResearches("Unlock")
  .setRequiredStages("Unlock")
  .addCondition(<ore:ingotSteel> * 8, <liquid:lava> * 2000)
  .setRewardStages("Extended_Crafting")
  .setRewardCommands("/say \"wow, @s has Researched Extended Crafting\"")
  .setRewardItems(<extendedcrafting:material>* 32, <extendedcrafting:material:7> * 24)
  .setMaxCount(1)
  .build();


print("--- Stages.zs initialized ---");