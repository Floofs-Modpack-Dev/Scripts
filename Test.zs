import mods.ResearchTable;

// use `/researchtable @p all 0` to clear all progress

var cat = ResearchTable.addCategory(<minecraft:grass>);

ResearchTable.builder("testResearch3", cat)
  .setTitle("Produce Seller")
  .setIcons(<minecraft:bread>)
  .setRequiredResearches("testResearch1")
  .setRequiredStages("stage", "stageYouWillNeverGet")
//.setOptionalStages(2, "stage", "stage2", "stage3")
  .setOptionalResearches(1, "testResearch1", "testResearch2", "testResearch3")
  .addCondition(<minecraft:apple> * 2147483647)
  .addCondition(<minecraft:wheat> * 2147483647)
  .addCondition(<minecraft:wheat_seeds> * 2147483647)
  // CraftTweaker cannot handle item size more than Integer.MAX_VALUE, so here is another method
  .addCondition(<minecraft:carrot>, 9223372036854775807)
  .addCondition(<minecraft:potato>, 9223372036854775807)
  .addCondition(<minecraft:egg>, 9223372036854775807)
  .build();

ResearchTable.scoreIndicator("points: %d", "points");