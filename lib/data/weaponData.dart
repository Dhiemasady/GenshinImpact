import 'package:genshin_project/model/weapon.dart';

class WeaponData {
  static List<WeaponApiResult> data = [];
  static Map<String, Map<String,String>> otherInfo =
    {
      'aquila-favonia' : {
        'secondary stat' : 'Physical DMG Bonus',
        'secondary stat value' : '9',
        'Special Ability': "Falcon's Defiance",
        'Special Ability Description':'ATK is increased by 20%. Triggers on taking DMG: the soul of the Falcon of the West awakens, holding the banner of the resistance aloft, regenerating HP equal to 100% of ATK and dealing 200% of ATK as DMG to surrounding opponents. This effect can only occur once every 15s',
        'description':'The soul of the Knights of Favonius. Millennia later, it still calls on the winds of swift justice to vanquish all evil—just like the last heroine who wielded it.'
      },

      'skyward-blade' : {
        'secondary stat' : 'Energy Recharge',
        'secondary stat value' : '12',
        'Special Ability': "Sky-Piercing Fang",
        'Special Ability Description':"CRIT Rate increased by 4%. Gains Skypiercing Might upon using Elemental Burst: Increases Movement SPD by 10%, increases ATK SPD by 10%, and Normal and Charged hits deal additional DMG equal to 20% of ATK. Skypiercing Might lasts for 12s.",
        'description':'The sword of a knight that symbolizes the restored honor of Dvalin. The blessings of the Anemo Archon rest on the fuller of the blade, imbuing the sword with the powers of the sky and the wind.'
      },

      'blackcliff-longsword' : {
        'secondary stat' : 'Crit DMG',
        'secondary stat value' : '8',
        'Special Ability': "Press the Advantage",
        'Special Ability Description':"After defeating an opponent, ATK is increased by 12% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.",
        'description':'A sword made of blackstone. It has a dark crimson glow on its black blade.'
      },

      'prototype-rancour' : {
        'secondary stat' : 'Physical DMG Bonus',
        'secondary stat value' : '7.5',
        'Special Ability': "Smashed Stone",
        'Special Ability Description':"On hit, Normal or Charged Attacks increase ATK and DEF by 4% for 6s. Max 4 stacks. Can only occur once every 0.3s.",
        'description':'An ancient longsword discovered in the Blackcliff Forge that cuts through rocks like a hot knife through butter.'
      },

      'the-alley-flash' : {
        'secondary stat' : 'Elemental Mastery',
        'secondary stat value' : '12',
        'Special Ability': "Itinerant Hero",
        'Special Ability Description':"Increases DMG dealt by the character equipping this weapon by 12%. Taking DMG disables this effect for 5s.",
        'description':'A straight sword as black as the night. It once belonged to a thief who roamed the benighted streets.'
      },

      'iron-sting' : {
        'secondary stat' : 'Elemental Mastery',
        'secondary stat value' : '36',
        'Special Ability': "Infusion Stinger",
        'Special Ability Description':"Dealing Elemental DMG increases all DMG by 6% for 6s. Max 2 stacks. Can only occur once every 1s.",
        'description':'An exotic long-bladed rapier that somehow found its way into Liyue via foreign traders. It is light, agile, and sharp.'
      },

      'lions-roar' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '9',
        'Special Ability': "Bane of Fire and Thunder",
        'Special Ability Description':"Increases DMG against enemies affected by Pyro or Electro by 20%",
        'description':'A sharp blade with extravagant carvings that somehow does not compromise on durability and sharpness. It roars like a lion as it cuts through the air.'
      },

      'royal-longsword' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '9',
        'Special Ability': "Focus",
        'Special Ability Description':"Upon dealing damage to an opponent, increases CRIT Rate by 8%. Max 5 stacks. A CRIT hit removes all existing stacks.",
        'description':'An old longsword that belonged to the erstwhile rulers of Mondstadt. Exquisitely crafted, the carvings and embellishments testify to the stature of its owner.'
      },

      'the-black-sword' : {
        'secondary stat' : 'Crit Rate',
        'secondary stat value' : '6',
        'Special Ability': "Justice",
        'Special Ability Description':"Increases DMG dealt by Normal and Charged Attacks by 20%.Additionally, regenerates 60% of ATK as HP when Normal and Charged Attacks score a CRIT Hit. This effect can occur once every 5s.",
        'description':'A pitch-black longsword that thirsts for violence and conflict. It is said that this weapon can cause its user to become drunk on the red wine of slaughter.'
      },

      'the-flute' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '9',
        'Special Ability': "Chord",
        'Special Ability Description':"Normal or Charged Attacks grant a Harmonic on hits. Gaining 5 Harmonics triggers the power of music and deals 100% ATK DMG to surrounding enemies. Harmonics last up to 30s, and a maximum of 1 can be gained every 0.5s.",
        'description':'Beneath its rusty exterior is a lavishly decorated thin blade. It swings as swiftly as the wind.'
      },

      'favonius-sword' : {
        'secondary stat' : 'Energy Recharge',
        'secondary stat value' : '13.3',
        'Special Ability': "Windfall",
        'Special Ability Description':"CRIT hits have a 60% chance to generate a small amount of Elemental Particles, which will regenerate 6 Energy for the character. Can only occur once every 12s.",
        'description':"A standard-issue longsword of the Knights of Favonius. When you're armed with this agile and sharp weapon, channeling the power of the elements has never been so easy!"
      },

      'sacrificial-sword' : {
        'secondary stat' : 'Energy Recharge',
        'secondary stat value' : '13.3',
        'Special Ability': "Composed",
        'Special Ability Description':"After dealing damage to an opponent with an Elemental Skill, the skill has a 40% chance to end its own CD. Can only occur once every 30s.",
        'description':'A ceremonial sword that has become petrified over time. The trinkets on it are still visible. It grants the wielder the power to withstand the winds of time.'
      },

      'skyrider-sword' : {
        'secondary stat' : 'Energy Recharge',
        'secondary stat value' : '11.3',
        'Special Ability': "Determination",
        'Special Ability Description':"Using an Elemental Burst grants a 12% increase in ATK and Movement SPD for 15s.",
        'description':'A reliable steel sword. The legendary Skyrider once tried to ride it as a flying sword...'
      },

      'dark-iron-sword' : {
        'secondary stat' : 'Elemental Mastery',
        'secondary stat value' : '31',
        'Special Ability': "Overloaded",
        'Special Ability Description':"Upon causing an Overloaded, Superconduct, Electro-Charged, or an Electro-infused Swirl reaction, ATK is increased by 20% for 12s.",
        'description':'A perfectly ordinary iron sword, just slightly darker than most.'
      },

      'travelers-handy-sword' : {
        'secondary stat' : 'DEF',
        'secondary stat value' : '6.4',
        'Special Ability': "Journey",
        'Special Ability Description':"Each Elemental Orb or Particle collected restores 1% HP.",
        'description':'A handy steel sword which contains scissors, a magnifying glass, tinder, and other useful items in its sheath.'
      },

      'cool-steel' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '7.7',
        'Special Ability': "Bane of Water and Ice",
        'Special Ability Description':"Increases DMG against opponents affected by Hydro or Cryo by 12%.",
        'description':'A reliable steel-forged weapon that serves as a testament to the great adventures of its old master.'
      },

      'fillet-blade' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '7.7',
        'Special Ability': "Gash",
        'Special Ability Description':"On hit, has 50% chance to deal 240% ATK DMG to a single enemy. Can only occur once every 15s.",
        'description':'A sharp filleting knife. The blade is long, thin, and incredibly sharp.'
      },

      'harbinger-of-dawn' : {
        'secondary stat' : 'Crit DMG',
        'secondary stat value' : '10.2',
        'Special Ability': "Vigorous",
        'Special Ability Description':"When HP is above 90%, increases CRIT Rate by 14%.",
        'description':'A sword that once shone like the sun. The wielder of this sword will be blessed with a "feel-good" buff. The reflective material on the blade has long worn off.'
      },

      'silver-sword' : {
        'secondary stat' : 'none',
        'secondary stat value' : 'none',
        'Special Ability': "none",
        'Special Ability Description':"none",
        'description':"A sword for chasing away demons. Everyone knows it's made of a silver alloy, not pure silver."
      },

      'dull-blade' : {
        'secondary stat' : 'none',
        'secondary stat value' : 'none',
        'Special Ability': "none",
        'Special Ability Description':"none",
        'description':"Youthful dreams and the thrill of adventure. If this isn't enough, then make it up with valiance."
      },

      'amos-bow' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '10.8',
        'Special Ability': "Strong-Willed",
        'Special Ability Description':"Increases Normal Attack and Charged Attack DMG by 12%. After a Normal or Charged Attack is fired, DMG dealt increases by a further 8% every 0.1 seconds the arrow is in the air for up to 5 times.",
        'description':'An extremely ancient bow that has retained its power despite its original master being long gone. It draws power from everyone and everything in the world, and the further away you are from that which your heart desires, the more powerful it is.'
      },

      'skyward-harp' : {
        'secondary stat' : 'Crit Rate',
        'secondary stat value' : '4.8',
        'Special Ability': "Echoing Ballad",
        'Special Ability Description':"Increases CRIT DMG by 20%. Hits have a 60% chance to inflict a small AoE attack, dealing 125% Physical ATK DMG. Can only occur once every 4s.",
        'description':"A greatbow that symbolizes Dvalin's affiliation with the Anemo Archon. The sound of the bow firing is music to the Anemo Archon's ears. It contains the power of the sky and wind within."
      },

      'blackcliff-warbow' : {
        'secondary stat' : 'Crit DMG',
        'secondary stat value' : '8',
        'Special Ability': "Press the Advantage",
        'Special Ability Description':"After defeating an opponent, ATK is increased by 12% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.",
        'description':'A bow made of blackstone that features extremely sturdy bow limbs. It requires an archer with a strong bow arm to use.'
      },

      'sacrificial-bow' : {
        'secondary stat' : 'Energy Recharge',
        'secondary stat value' : '6.7',
        'Special Ability': "Composed",
        'Special Ability Description':"After dealing damage to an opponent with an Elemental Skill, the skill has a 40% chance to end its own CD. Can only occur once every 30s.",
        'description':'A ceremonial hunting bow that has become petrified over time. The trinkets on it are still visible. It grants the wielder the power to withstand the winds of time.'
      },

      'prototype-crescent' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '9',
        'Special Ability': "Unreturning",
        'Special Ability Description':"Charged Attack hits on weak points increase Movement SPD by 10% and ATK by 36% for 10s.",
        'description':'A prototype longbow discovered in the Blackcliff Forge. The arrow fired from this bow glimmers like a ray of moonlight.'
      },

      'royal-bow' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '9',
        'Special Ability': "Focus",
        'Special Ability Description':"Upon dealing damage to an opponent, increases CRIT Rate by 8%. Max 5 stacks. A CRIT hit removes all existing stacks.",
        'description':'An old royal longbow that belonged to the erstwhile rulers of Mondstadt. Countless generations later, the bowstring is still tight and can still fire arrows with great force.'
      },

      'rust' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '9',
        'Special Ability': "Rapid Firing",
        'Special Ability Description':"Increases Normal Attack DMG by 40% but decreases Charged Attack DMG by 10%.",
        'description':'A completely rusted iron greatbow. The average person would lack the strength to even lift it, let alone fire it.'
      },

      'the-stringless' : {
        'secondary stat' : 'Elemental Mastery',
        'secondary stat value' : '36',
        'Special Ability': "Arrowless Song",
        'Special Ability Description':"Increases Elemental Skill and Elemental Burst DMG by 24%.",
        'description':'A bow that once served as an extraordinary instrument. It is no longer capable of getting people up and dancing.'
      },

      'the-viridescent-hunt' : {
        'secondary stat' : 'Crit Rate',
        'secondary stat value' : '6',
        'Special Ability': "Verdant Wind",
        'Special Ability Description':"Upon hit, Normal and Aimed Shot Attacks have a 50% chance to generate a Cyclone, which will continuously attract surrounding opponents, dealing 40% of ATK as DMG to these opponents every 0.5s for 4s. This effect can only occur once every 14s.",
        'description':'A pure green hunting bow. This once belonged to a certain hunter whose home was the forest.'
      },

      'alley-hunter' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '6',
        'Special Ability': "Oppidan Ambush",
        'Special Ability Description':"While the character equipped with this weapon is in the party but not on the field, their DMG increases by 2% every second up to a max of 20%. When the character is on the field for more than 4s, the aforementioned DMG buff decreases by 4% per second until it reaches 0%.",
        'description':'An intricate, opulent longbow. It once belonged to a gentleman thief who was never caught.'
      },

      'compound-bow' : {
        'secondary stat' : 'Physical DMG Bonus',
        'secondary stat value' : '15',
        'Special Ability': "Infusion Arrow",
        'Special Ability Description':"Normal Attack and Charged Attack hits increase ATK by 4% and Normal ATK SPD by 1.2% for 6s. Max 4 stacks. Can only occur once every 0.3s.",
        'description':'An exotic metallic bow from a distant land. Though extremely difficult to maintain, it is easy to nock and fires with tremendous force.'
      },

      'favonius-warbow' : {
        'secondary stat' : 'Energy Recharge',
        'secondary stat value' : '13.3',
        'Special Ability': "Windfall",
        'Special Ability Description':"CRIT hits have a 60% chance to generate a small amount of Elemental Particles, which will regenerate 6 Energy for the character. Can only occur once every 12s.",
        'description':'A standard-issue recurve bow of the Knights of Favonius. Only the best archers can unleash its full potential.'
      },

      'ebony-bow' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '6.3',
        'Special Ability': "Decimate",
        'Special Ability Description':"Increases DMG against mechanoid Ruin opponents by 40%.",
        'description':'A longbow made of ebony wood with stiffer limbs than ordinary bows. It is also a far more powerful weapon.'
      },

      'messenger' : {
        'secondary stat' : 'Crit DMG',
        'secondary stat value' : '6.8',
        'Special Ability': "Archer's Message",
        'Special Ability Description':"Charged Attack hits on weak spots deal an additional 100% ATK DMG as CRIT DMG. Can only occur once every 10s.",
        'description':'A basic wooden bow. It is said to have once been used as a tool for long-distance communication.'
      },

      'raven-bow' : {
        'secondary stat' : 'Elemental Mastery',
        'secondary stat value' : '20',
        'Special Ability': "Bane of Flame and Water",
        'Special Ability Description':"Increases DMG against opponents affected by Hydro or Pyro by 12%.",
        'description':"Ravens are known to be the ferrymen of the dead. This bow's limb is decorated with raven feathers, which forebode the imminent death of its target."
      },

      'sharpshooters-oath' : {
        'secondary stat' : 'Crit DMG',
        'secondary stat value' : '10.2',
        'Special Ability': "Precise",
        'Special Ability Description':"Increases DMG against weak spots by 24%.",
        'description':'This superior bow once belonged to a master archer. However, it gives off a strong scent, thus making it unsuitable for hunting.'
      },

      'recurve-bow' : {
        'secondary stat' : 'HP',
        'secondary stat value' : '10.2',
        'Special Ability': "Cull the Weak",
        'Special Ability Description':"Defeating an opponent restores 8% HP.",
        'description':'It is said that this bow can shoot down eagles in flight, but ultimately how true that is depends on the skill of the archer.'
      },

      'slingshot' : {
        'secondary stat' : 'Crit Rate',
        'secondary stat value' : '6.8',
        'Special Ability': "Slingshot",
        'Special Ability Description':"If a Normal or Charged Attack hits a target within 0.3s of being fired, increases DMG by 36%. Otherwise, decreases DMG by 10%.",
        'description':'A bow, despite the name. After countless experiments and improvements to the design, the creator of the ultimate slingshot found himself to have made what was actually a bow.'
      },

      'seasoned-hunters-bow' : {
        'secondary stat' : 'none',
        'secondary stat value' : 'none',
        'Special Ability': "none",
        'Special Ability Description':"none",
        'description':"A bow that has been well-polished by time and meticulously cared for by its owner. It feels almost like an extension of the archer's arm."
      },

      'hunters-bow' : {
        'secondary stat' : 'none',
        'secondary stat value' : 'none',
        'Special Ability': "none",
        'Special Ability Description':"none",
        'description':"A hunter's music consists of but two sounds: the twang of the bowstring and the whoosh of soaring arrows."
      },

      'wolfs-gravestone' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '10.8',
        'Special Ability': "Wolfish Tracker",
        'Special Ability Description':"Increases ATK by 20%. On hit, attacks against opponents with less than 30% HP increase all party members' ATK by 40% for 12s. Can only occur once every 30s.",
        'description':'A longsword used by the Wolf Knight. Originally just a heavy sheet of iron given to the knight by a blacksmith from the city, it became endowed with legendary power owing to his friendship with the wolves.'
      },

      'skyward-pride' : {
        'secondary stat' : 'Energy Recharge',
        'secondary stat value' : '8',
        'Special Ability': "Sky-ripping Dragon Spine",
        'Special Ability Description':"Increases all DMG by 8%. After using an Elemental Burst, Normal or Charged Attack, on hit, creates a vacuum blade that does 80% of ATK as DMG to opponents along its path. Lasts for 20s or 8 vacuum blades.",
        'description':"A claymore that symbolizes the pride of Dvalin soaring through the skies. When swung, it emits a deep hum as the full force of Dvalin's command of the sky and the wind is unleashed."
      },

      'prototype-aminus' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '6',
        'Special Ability': "Crush",
        'Special Ability Description':"On hit, Normal or Charged Attacks have a 50% chance to deal an additional 240% ATK DMG to opponents within a small AoE. Can only occur once every 15s.",
        'description':'An ancient greatsword discovered in the Blackcliff Forge. It swings with such an immense force that one feels it could cut straight through reality itself.'
      },

      'sacrificial-greatsword' : {
        'secondary stat' : 'Energy Recharge',
        'secondary stat value' : '6.7',
        'Special Ability': "Composed",
        'Special Ability Description':"After dealing damage to an opponent with an Elemental Skill, the skill has a 40% chance to end its own CD. Can only occur once every 30s.",
        'description':'A ceremonial greatsword that has become petrified over time. The trinkets on it are still visible. It grants the wielder the power to withstand the winds of time.'
      },

      'royal-greatsword' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '6',
        'Special Ability': "Focus",
        'Special Ability Description':"Upon dealing damage to an opponent, increases CRIT Rate by 8%. Max 5 stacks. A CRIT hit removes all existing stacks.",
        'description':'An old greatsword that belonged to the erstwhile rulers of Mondstadt. It is made from the finest-quality materials and has stood the test of time. A weapon for use by royals only.'
      },

      'blackcliff-slasher' : {
        'secondary stat' : 'Crot DMG',
        'secondary stat value' : '12',
        'Special Ability': "Press the Advantage",
        'Special Ability Description':"After defeating an opponent, ATK is increased by 12% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.",
        'description':'An extremely sturdy greatsword from the Blackcliff Forge. It has a dark crimson color from the blade to the pommel.'
      },

      'rainslasher' : {
        'secondary stat' : 'Elemental Mastery',
        'secondary stat value' : '36',
        'Special Ability': "Bane of Storm and Tide",
        'Special Ability Description':"Increases DMG against opponents affected by Hydro or Electro by 20%.",
        'description':'A fluorescent greatsword with no sharp edge that crushes enemies with brute force and raw power.'
      },

      'serpent-spine' : {
        'secondary stat' : 'Crit Rate',
        'secondary stat value' : '6',
        'Special Ability': "Wavesplitter",
        'Special Ability Description':"Every 4s a character is on the field, they will deal 6% more DMG and take 3% more DMG. This effect has a maximum of 5 stacks and will not be reset if the character leaves the field, but will be reduced by 1 stack when the character takes DMG.",
        'description':'A rare weapon whose origin is the ancient ocean. One can hear the sound of the ageless waves as one swings it.'
      },

      'the-bell' : {
        'secondary stat' : 'HP',
        'secondary stat value' : '9',
        'Special Ability': "Rebellious Guardian",
        'Special Ability Description':"Taking DMG generates a shield which absorbs DMG up to 20% of max HP. This shield lasts for 10s or until broken, and can only be triggered once every 45s. While protected by a shield, the character gains 12% increased DMG.",
        'description':'A heavy greatsword. A clock is embedded within it, though its internal mechanisms have long been damaged.'
      },

      'whiteblind' : {
        'secondary stat' : 'DEF',
        'secondary stat value' : '11.3',
        'Special Ability': "Infusion Blade",
        'Special Ability Description':"On hit, Normal or Charged Attacks increase ATK and DEF by 6% for 6s. Max 4 stacks (24% total). Can only occur once every 0.5s.",
        'description':'An exotic sword with one section of the blade left blunt. It made its way into Liyue via the hands of foreign traders. Incredibly powerful in the hands of someone who knows how to use it.'
      },

      'favonius-greatsword' : {
        'secondary stat' : 'Energy Recharge',
        'secondary stat value' : '13.3',
        'Special Ability': "Windfall",
        'Special Ability Description':"CRIT hits have a 60% chance to generate a small amount of Elemental Particles, which will regenerate 6 Energy for the character. Can only occur once every 12s.",
        'description':'A heavy ceremonial sword of the Knights of Favonius. It channels elemental power easily and is highly destructive.'
      },

      'lithic-blade' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '9',
        'Special Ability': "Lithic Axiom - Unity",
        'Special Ability Description':"For every character in the party who hails from Liyue, the character who equips this weapon gains 7% ATK increase and 3% CRIT Rate increase. This effect stacks up to 4 times.",
        'description':'A greatsword carved and chiseled from the very bedrock of Liyue.'
      },

      'quartz' : {
        'secondary stat' : 'Elemental Mastery',
        'secondary stat value' : '16',
        'Special Ability': "Residual Heat",
        'Special Ability Description':"Upon causing an Overloaded, Melt, Burning, Vaporize, or a Pyro-infused Swirl reaction, increases Base ATK by 20% for 12s.",
        'description':'A simple but heavy greatsword made of polished black quartz with a golden gilt. It has an air of elegance and dignity about it.'
      },

      'debate-club' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '7.7',
        'Special Ability': "Blunt Conclusion",
        'Special Ability Description':"After using an Elemental Skill, Normal or Charged Attacks, on hit, deal an additional 60% ATK DMG in a small area. Effect lasts 15s. DMG can only occur once every 3s.",
        'description':"A handy club made of fine steel. The most persuasive line of reasoning in any debater's arsenal."
      },

      'ferrous-shadow' : {
        'secondary stat' : 'HP',
        'secondary stat value' : '7.7',
        'Special Ability': "Unbending",
        'Special Ability Description':"When HP falls below 70%, increases Charged Attack DMG by 30%, and Charged Attacks become much harder to interrupt.",
        'description':'A replica of the famed sword of Arundolyn, the Lion of Light. Feel the power of a legendary hero as you hold this sword in your hand! Imagine yourself as the great warrior himself! Note: Daydreaming not recommended in live combat.'
      },

      'skyrider-greatsword' : {
        'secondary stat' : 'Physical DMG Bonus',
        'secondary stat value' : '9.6',
        'Special Ability': "Courage",
        'Special Ability Description':"On hit, Normal or Charged Attacks increase ATK by 6% for 6s. Max 4 stacks. Can only occur once every 0.5s.",
        'description':'A reliable steel sword. The legendary Skyrider once tried to ride it as a flying sword... for the second time.'
      },

      'white-iron-greatsword' : {
        'secondary stat' : 'DEF',
        'secondary stat value' : '9.6',
        'Special Ability': "Cull the Weak",
        'Special Ability Description':"Defeating an opponent restores 8% HP.",
        'description':'A claymore made from white iron. Lightweight without compromising on power. Effective even when wielded by one of average strength, it is extremely deadly in the hands of a physically stronger wielder.'
      },

      'bloodtainted-greatsword' : {
        'secondary stat' : 'Elemental Mastery',
        'secondary stat value' : '41',
        'Special Ability': "Bane of Fire and Thunder",
        'Special Ability Description':"Increases DMG against opponents affected by Pyro or Electro by 12%.",
        'description':'A steel sword that is said to have been coated with dragon blood, rendering it invulnerable to damage. This effect is not extended to its wielder, however.'
      },

      'old-mercs-pal' : {
        'secondary stat' : 'none',
        'secondary stat value' : 'none',
        'Special Ability': "none",
        'Special Ability Description':"none",
        'description':'A battle-tested greatsword that has seen better days and worse.'
      },

      'waster-greatsword' : {
        'secondary stat' : 'none',
        'secondary stat value' : 'none',
        'Special Ability': "none",
        'Special Ability Description':"none",
        'description':'A sturdy sheet of iron that may be powerful enough to break apart mountains, if wielded with enough willpower.'
      },

      'primordial-jade-winged-spear' : {
        'secondary stat' : 'Crit Rate',
        'secondary stat value' : '4.8',
        'Special Ability': "Eagle Spear of Justice",
        'Special Ability Description':"On hit, increases ATK by 3.2% for 6s. Max 7 stacks. This effect can only occur once every 0.3s. While in possession of the maximum possible stacks, DMG dealt is increased by 12%.",
        'description':'A jade polearm made by the archons, capable of slaying ancient beasts.'
      },

      'skyward-spine' : {
        'secondary stat' : 'Energy Recharge',
        'secondary stat value' : '8',
        'Special Ability': "Black Wing",
        'Special Ability Description':"Increases CRIT Rate by 8% and increases Normal ATK SPD by 12%. Additionally, Normal and Charged Attacks hits on opponents have a 50% chance to trigger a vacuum blade that deals 40% of ATK as DMG in a small AoE. This effect can occur no more than once every 2s.",
        'description':"A polearm that symbolizes Dvalin's fire resolve. The upright shaft of this weapon points towards the heavens, clad in the might of sky and wind."
      },

      'kunwus-iris-rift' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '10.8',
        'Special Ability': "Golden Majesty",
        'Special Ability Description':"Increases Shield Strength by 20%. Scoring hits on opponents increases ATK by 4% for 8s. Max 5 stacks. Can only occur once every 0.3s. While protected by a shield, this ATK increase effect is increased by 100%.",
        'description':'This sharp polearm can seemingly pierce through anything. When swung, one can almost see the rift it tears in the air.'
      },

      'crescent-pike' : {
        'secondary stat' : 'Physical DMG Bonus',
        'secondary stat value' : '7.5',
        'Special Ability': "Infusion Needle",
        'Special Ability Description':"After picking up an Elemental Orb/Particle, Normal and Charged Attacks deal an additional 20% ATK as DMG for 5s.",
        'description':'An exotic weapon with an extremely long blade on the top and a crescent blade at the bottom. It found its way into Liyue through foreign traders. With practice, it can deal heavy damage.'
      },

      'favonius-lance' : {
        'secondary stat' : 'Energy Recharge',
        'secondary stat value' : '6.7',
        'Special Ability': "Windfall",
        'Special Ability Description':"CRIT hits have a 60% chance to generate a small amount of Elemental Particles, which will regenerate 6 Energy for the character. Can only occur once every 12s.",
        'description':"A polearm made in the style of the Knights of Favonius. Its shaft is straight, and its tip flows lightly like the wind."
      },

      'blackcliff-pole' : {
        'secondary stat' : 'Crot DMG',
        'secondary stat value' : '12',
        'Special Ability': "Press the Advantage",
        'Special Ability Description':"After defeating an opponent, ATK is increased by 12% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.",
        'description':'A weapon made of blackstone and aerosiderite. There is a dark crimson glow on its cold black sheen.'
      },

      'lithic-spear' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '6',
        'Special Ability': "Lithic Axiom - Unity",
        'Special Ability Description':"For every character in the party who hails from Liyue, the character who equips this weapon gains 7% ATK increase and a 3% CRIT Rate increase. This effect stacks up to 4 times.",
        'description':'A spear forged from the rocks of the Guyun Stone Forest. Its hardness knows no equal.'
      },

      'prototype-grudge' : {
        'secondary stat' : 'Energy Recharge',
        'secondary stat value' : '10',
        'Special Ability': "Magic Affinity",
        'Special Ability Description':"After using an Elemental Skill, increases Normal and Charged Attack DMG by 8% for 12s. Max 2 stacks.",
        'description':'A grudge discovered in the Blackcliff Forge. The glimmers along the sharp edge are like stars in the night.'
      },

      'deathmatch' : {
        'secondary stat' : 'Crit Rate',
        'secondary stat value' : '8',
        'Special Ability': "Gladiator",
        'Special Ability Description':"If there are at least 2 opponents nearby, ATK is increased by 16% and DEF is increased by 16%. If there are fewer than 2 opponents nearby, ATK is increased by 24%.",
        'description':"A sharp crimson polearm that was once a gladiator's priceless treasure. Its awl has been stained by the blood of countless beasts and men."
      },

      'dragons-bane' : {
        'secondary stat' : 'Elemental Mastery',
        'secondary stat value' : '48',
        'Special Ability': "Bane of Flame and Water",
        'Special Ability Description':"Increases DMG against opponents affected by Hydro or Pyro by 20%.",
        'description':'A polearm decorated with an entwining golden dragon. Light and sharp, this weapon may very well kill dragons with ease.'
      },

      'halberd' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '5.1',
        'Special Ability': "Heavy",
        'Special Ability Description':"Normal Attacks deal an additional 160% DMG. Can only occur once every 10s.",
        'description':"A polearm with an axe blade mounted on top that can deal quite a lot of damage. It's favored by the Millelith officers."
      },

      'white-tassel' : {
        'secondary stat' : 'Crit Rate',
        'secondary stat value' : '5.1',
        'Special Ability': "Sharp",
        'Special Ability Description':"Increases Normal Attack DMG by 24%.",
        'description':"A standard-issue weapon of the Millelith soldiers. It has a sturdy shaft and sharp spearhead. It's a reliable weapon."
      },

      'black-tassel' : {
        'secondary stat' : 'HP',
        'secondary stat value' : '10.2',
        'Special Ability': "Bane of the Soft",
        'Special Ability Description':"Increases DMG against slimes by 40%.",
        'description':'An exceptionally powerful polearm that also offers a simple but elegant solution to the issue of the easily stained white tassel.'
      },

      'iron-point' : {
        'secondary stat' : 'none',
        'secondary stat value' : 'none',
        'Special Ability': "none",
        'Special Ability Description':"none",
        'description':'Sharp and pointy at one end, it is a balanced weapon that is quite popular among travelers.'
      },

      'beginners-protector' : {
        'secondary stat' : 'none',
        'secondary stat value' : 'none',
        'Special Ability': "none",
        'Special Ability Description':"none",
        'description':'A polearm as straight as a flag pole. Well suited to most combat situations, it has an imposing presence when swung.'
      },

      'skyward-atlas' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '7.2',
        'Special Ability': "Wandering Clouds",
        'Special Ability Description':"Increases Elemental DMG Bonus by 12%. Normal Attack hits have a 50% chance to earn the favor of the clouds. which actively seek out nearby opponents to attack for 15s, dealing 160% ATK DMG. Can only occur once every 30s.",
        'description':'A cloud atlas symbolizing Dvalin and its former master, the Anemo Archon. It details the winds and clouds of the northern regions and contains the powers of the sky and wind.'
      },

      'lost-prayer-to-the-sacred-winds' : {
        'secondary stat' : 'Crit Rate',
        'secondary stat value' : '7.2',
        'Special Ability': "Boundless Blessing",
        'Special Ability Description':"Increases Movement SPD by 10%. When in battle, gain an 8% Elemental DMG Bonus every 4s. Max 4 stacks. Lasts until the character falls or leaves combat.",
        'description':'An educational tome written by anonymous early inhabitants who worshiped the wind. It has been blessed by the wind for its faithfulness and influence over the millennia.'
      },

      'the-widsith' : {
        'secondary stat' : 'Crit DMG',
        'secondary stat value' : '12',
        'Special Ability': "Debut",
        'Special Ability Description':"When a character takes the field, they will gain a random theme song for 10s. This can only occur once every 30s. Recitative: ATK is increased by 60%. Aria: Increases all Elemental DMG by 48%. Interlude: Elemental Mastery is increased by 240.",
        'description':'A heavy notebook filled with musical scores. Though suffering from moth damage and heavy wear-and-tear, there is still much power to be found among the hand-written words within.'
      },

      'royal-grimoire' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '6',
        'Special Ability': "Focus",
        'Special Ability Description':"Upon dealing damage to an opponent, increases CRIT Rate by 8%. Max 5 stacks. A CRIT hit removes all existing stacks.",
        'description':'A book that once belonged to a royal mage of Mondstadt. It contains faithful and comprehensive historical accounts as well as magic spells.'
      },

      'blackcliff-amulet' : {
        'secondary stat' : 'Crit DMG',
        'secondary stat value' : '12',
        'Special Ability': "Press the Advantage",
        'Special Ability Description':"After defeating an opponent, ATK is increased by 12% for 30s. This effect has a maximum of 3 stacks, and the duration of each stack is independent of the others.",
        'description':'A mysterious catalyst made of blackstone. It has an ominous crimson glow that seems to pulse in synchronization with the tremors from deep within the earth.'
      },

      'favonius-codex' : {
        'secondary stat' : 'Energy Recharge',
        'secondary stat value' : '10',
        'Special Ability': "Windfall",
        'Special Ability Description':"CRIT hits have a 60% chance to generate a small amount of Elemental Particles, which will regenerate 6 Energy for the character. Can only occur once every 12s.",
        'description':'A secret tome that belonged to the scholars of the Knights of Favonius. It describes the logic and power of elements and matter.'
      },

      'prototype-malice' : {
        'secondary stat' : 'HP',
        'secondary stat value' : '9',
        'Special Ability': "Gilding",
        'Special Ability Description':"Using an Elemental Burst regenerates 4 Energy every 2s for 6s. All party members will regenerate 4% HP every 2s for this duration.",
        'description':'A dully gilded catalyst secretly guarded in the Blackcliff Forge. It seems to glow with the very light from the sky.'
      },

      'solar-pearl' : {
        'secondary stat' : 'Crit Rate',
        'secondary stat value' : '6',
        'Special Ability': "Solar Shine",
        'Special Ability Description':"Normal Attack hits increase Elemental Skill and Elemental Burst DMG by 20% for 6s. Likewise, Elemental Skill or Elemental Burst hits increase Normal Attack DMG by 20% for 6s.",
        'description':'A dull, golden pearl made of an unknown substance that harbors the light of the sun and the moon, and pulses with a warm strength.'
      },

      'mappa-mare' : {
        'secondary stat' : 'Elemental Mastery',
        'secondary stat value' : '24',
        'Special Ability': "Infusion Scroll",
        'Special Ability Description':"Triggering an Elemental reaction grants a 8% Elemental DMG Bonus for 10s. Max 2 stacks.",
        'description':'A nautical chart featuring nearby currents and climates that somehow found its way into Liyue via foreign traders.'
      },

      'wine-and-song' : {
        'secondary stat' : 'Energy Recharge',
        'secondary stat value' : '6.7',
        'Special Ability': "Ever-Changing",
        'Special Ability Description':"Hitting an opponent with a Normal Attack decreases the Stamina consumption of Sprint or Alternate sprint by 14% for 5s. Additionally, using a Sprint or Alternate Sprint ability increases ATK by 20% for 5s.",
        'description':'A songbook from the bygone aristocratic era, whose composer has become forgotten. It chronicles the tale of a certain heroic outlaw.'
      },

      'eye-of-perception' : {
        'secondary stat' : 'ATK',
        'secondary stat value' : '12',
        'Special Ability': "Echo",
        'Special Ability Description':"Normal and Charged Attacks have a 50% chance to fire a Bolt of Perception, dealing 240% ATK as DMG. This bolt can bounce between opponents a maximum of 4 times. This effect can occur once every 12s.",
        'description':"A dim black glaze pearl that is said to have the power to reach the purity of one's heart."
      },

      'sacrificial-fragments' : {
        'secondary stat' : 'Elemental Mastery',
        'secondary stat value' : '48',
        'Special Ability': "Composed",
        'Special Ability Description':"After dealing damage to an opponent with an Elemental Skill, the skill has a 40% chance to end its own CD. Can only occur once every 30s.",
        'description':'A weathered script, the text of which is no longer legible. A cursed item eroded by the winds of time.'
      },

      'amber-catalyst' : {
        'secondary stat' : 'Elemental Mastery',
        'secondary stat value' : '16',
        'Special Ability': "Elemental Mastery",
        'Special Ability Description':"Normal Attack hits increase all Elemental DMG by 6% for 6s. Max 2 stacks.",
        'description':'A catalyst carved out of amber that gains a warm halo under the sun.'
      },

      'twin-nephrite' : {
        'secondary stat' : 'Crit Rate',
        'secondary stat value' : '3.4',
        'Special Ability': "Guerilla Tactic",
        'Special Ability Description':"Defeating an opponent increases Movement SPD and ATK by 12% for 15s.",
        'description':'A jade pendant formed by piecing together two jade stones.'
      },

      'otherworldly-story' : {
        'secondary stat' : 'Energy Recharge',
        'secondary stat value' : '8.5',
        'Special Ability': "Energy Shower",
        'Special Ability Description':"Each Elemental Orb or Particle collected restores 1% HP.",
        'description':'A cheap fantasy novel with no value whatsoever. Any claim that it possesses the power of catalysis is also pure fantasy.'
      },

      'thrilling-tales-of-dragon-slayers' : {
        'secondary stat' : 'HP',
        'secondary stat value' : '7.7',
        'Special Ability': "Heritage",
        'Special Ability Description':"When switching characters, the new character taking the field has their ATK increased by 24% for 10s. This effect can only occur once every 20s.",
        'description':'A fictional story of a band of five heroes who go off on a dragon hunt. It is poorly written and structurally incoherent. Its value lies in the many lessons that can be learned from failure.'
      },

      'magic-guide' : {
        'secondary stat' : 'Elemental Mastery',
        'secondary stat value' : '41',
        'Special Ability': "Bane of Storm and Tide",
        'Special Ability Description':"Increases DMG against opponents affected by Hydro or Electro by 12%.",
        'description':'Version 12. A reprint featuring corrections to Version 11 and brand-new additions based on recent developments.'
      },

      'emerald-orb' : {
        'secondary stat' : 'Elemental Mastery',
        'secondary stat value' : '20',
        'Special Ability': "Rapids",
        'Special Ability Description':"Upon causing a Vaporize, Electro-Charged, Frozen, or a Hydro-infused Swirl reaction, increases ATK by 20% for 12s.",
        'description':'A catalyst carved out of the hard jade from Jueyun Karst north of Liyue. Small, light, and durable, it is known more colloquially as the "jade ball."'
      },

      'pocket-grimoire' : {
        'secondary stat' : 'none',
        'secondary stat value' : 'none',
        'Special Ability': "none",
        'Special Ability Description':"none",
        'description':'A carefully compiled notebook featuring the essentials needed to pass a magic exam.'
      },

      'apprentices-notes' : {
        'secondary stat' : 'none',
        'secondary stat value' : 'none',
        'Special Ability': "none",
        'Special Ability Description':"none",
        'description':'Notes left behind by a top student. Many useful spells are listed, and the handwriting is beautiful.'
      },
    };
}

