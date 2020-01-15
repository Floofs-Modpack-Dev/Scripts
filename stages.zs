import mods.ResearchTable;

print("--- loading Stages.zs ---");

//Variables
var cat = ResearchTable.addCategory(<minecraft:grass>);


//Stages Mods
mods.recipestages.Recipes.setRecipeStageByMod("Mekanism", "mekanism");
mods.recipestages.Recipes.setRecipeStageByMod("Thermal Expansion", "thermalexpansion");
mods.recipestages.Recipes.setRecipeStageByMod("Thermal Dynamics", "thermaldynamics");
mods.recipestages.Recipes.setRecipeStageByMod("Astral Sorcery", "astralsorcery");
mods.recipestages.Recipes.setRecipeStageByMod("Thaumcraft", "thaumcraft");

//Stages Recipes
mods.recipestages.Recipes.setRecipeStage("IC2Fu", <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}));
mods.recipestages.Recipes.addShaped("IC2 Cable", "Mekanism", <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}),[[null, <ore:craftingToolWireCutter>],[null, <ore:plateCopper>]]);


//Research Table
ResearchTable.builder("Mekanism", cat) // The second parameter has no use currently
  .setIcons(<mekanism:basicblock:8>)
  .setTitle("Mekanism") // I18n support: use language key
  .setDescription("Input your description")
  .addCondition(<ore:ingotSteel> * 8, <liquid:lava> * 2000)
  .setRewardStages("Mekanism")
  .setRewardCommands("/say \"wow, @s has Researched Mekanism\"")
  .setRewardItems(<mekanism:enrichedalloy>, <mekanism:cardboardbox>)
  .setMaxCount(1)
  .build();

print("--- Stages.zs initialized ---");