import mods.inworldcrafting.FluidToItem;
import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
#modloaded inworldcrafting
print("--- loading InWorldCrafting.zs ---");

//Fluid To Item
//FluidToItem.transform(IItemStack output, ILiquidStack inputFluid, IIngredient[] inputItems, @Optional boolean consume)
FluidToItem.transform(<immersiveengineering:treated_wood>, <liquid:creosote>, [<minecraft:planks:2>]);

//Fluid To Fluid
//FluidToFluid.transform(ILiquidStack output, ILiquidStack inputFluid, IIngredient[] inputItems, @Optional boolean consume);

//Fire Crafting
//FireCrafting.addRecipe(IItemStack output, IIngredient inputItem, @Optional int ticks);

//Explosion Crafting Items
//ExplosionCrafting.explodeItemRecipe(IItemStack output, IIngredient inputItem, @Optional int survicechance);

//Explosion Crafting Blocks
//ExplosionCrafting.explodeBlockRecipe(IItemStack output, IItemStack blockStack, @Optional int itemSpawnChance);

print("--- InWorldCrafting.zs initialized ---");