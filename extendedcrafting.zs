import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded extendedcrafting botania
print("--- loading extendedcrafting.zs ---");
var BlackIron = <extendedcrafting:material>;

recipes.removeByRecipeName("extendedcrafting:black_iron_ingot");
recipes.recipes.addShaped("Black Iron",BlackIron, [
    [null,<botania:quartz>,null],
    [<botania:quartz>,<ore:ironIngot>,<botania:quartz>],
    [null,<botania:quartz>,null]);

print("--- extendedcrafting.zs initialized ---");