/**
 *	Fix the classnames & definition indexes to be correct. It's a mess.. So many weapons.. Please don't mind.
 *
 *	@param	weapon			The string to copy to.
 *	@param	maxlen			The maximum length of the string.
 *	@param	weapon_defindex	The weapon definition index to read.
 *	@param	format			The weapon classname to read.
 */
int TF2_FixWeaponClassname(char[] weapon, int maxlen, int weapon_defindex, const char[] format)	{
	char why[64];
	
	switch(weapon_defindex)	{
		case	0:		why = "weapon_bat";						//The Bat.
		case	1:		why = "weapon_bottle";					//The Bottle.
		case	2:		why = "weapon_fireaxe";					//The Fire Axe.
		case	3:		why = "weapon_kukri";					//The Kukri.
		case	4:		why = "weapon_knife";					//The Knife. (Butterfly knife for Spy.)
		case	5:		why = "weapon_fists";					//The Fists.
		case	6:		why = "weapon_shovel";					//The Shovel.
		case	7:		why = "weapon_wrench";					//The Wrench.
		case	8:		why = "weapon_bonesaw";					//The Bonesaw.
		case	9:		why = "weapon_shotgun";					//The Shotgun.
		case	10:		why = "weapon_shotgun";					//Same shotgun, different TFClass type.
		case	11:		why = "weapon_shotgun";					//Same shotgun, different TFClass type.
		case	12:		why = "weapon_shotgun";					//Same shotgun, different TFClass type.
		case	13:		why = "weapon_scattergun";				//The Scattergun.
		case	14:		why = "weapon_sniperrifle";				//The Sniper Rifle.
		case	15:		why = "weapon_minigun";					//The Minigun.
		case	16:		why = "weapon_smg";						//The SMG;
		case	17:		why = "weapon_syringegun";				//The Syringe Gun.
		case	18:		why = "weapon_rocketlauncher";			//The Rocket Launcher.
		case	19:		why = "weapon_grenadelauncher";			//The Grenade Launcher.
		case	20:		why = "weapon_stickybomblauncher";		//The StickyBomb Launcher.
		case	21:		why = "weapon_flamethrower";			//The Flamethrower.
		case	22:		why = "weapon_pistol";					//The Pistol.
		case	23:		why = "weapon_pistol";					//Same pistol, different TFClass Type.
		case	24:		why = "weapon_revolver";				//The Revolver.
		case	36:		why = "weapon_blutsauger";				//The Blutsauger.
		case	37:		why = "weapon_ubersaw";					//The Ubersaw.
		case	38:		why = "weapon_axtinguisher";			//The Axtinguisher.
		case	39:		why = "weapon_flaregun";				//The Flaregun.
		case	40:		why = "weapon_backburner";				//The Backburner.
		case	41:		why = "weapon_natascha";				//The Natascha.
		case	43:		why = "weapon_kgob";					//The Killer Gloves Of Boxing.
		case	44:		why = "weapon_sandman";					//The Sandman.
		case	45:		why = "weapon_forceanature";			//The Force-A-Nature.
		case	56:		why = "weapon_huntsman";				//The Huntsman.
		case	61:		why = "weapon_ambassador";				//The Ambassador.
		case	127:	why = "weapon_directhit";				//The Direct-Hit.
		case	128:	why = "weapon_equalizer";				//The Equalizer.
		case	130:	why = "weapon_scottishresistance";		//The Scottish Resistance.
		case	131:	why = "weapon_chargentarge";			//The Chargin' Targe.
		case	132:	why = "weapon_eyelander";				//The Eyelander.
		case	140:	why = "weapon_wrangler";				//The Wrangler.
		case	141:	why = "weapon_frontierjustice";			//The Frontier Justice.
		case	142:	why = "weapon_gunslinger";				//The Gunslinger.
		case	153:	why = "weapon_homewrecker";				//The Homewrecker.
		case	154:	why = "weapon_paintrain";				//The Pain Train.
		case	155:	why = "weapon_southernhospitality";		//The Southern Hospitality.
		case	160:	why = "weapon_lugermorph";				//The Lugermorph.
		case	161:	why = "weapon_bigkill";					//The Big Kill.
		case	169:	why = "weapon_goldenwrench";			//The Golden Wrench.
		case	171:	why = "weapon_tribalmansshiv";			//The Tribalman's Shiv.
		case	172:	why = "weapon_scotmansskullcutter";		//The Scotman's Skullcutter.
		case	173:	why = "weapon_vitasaw";					//The Vita-Saw.
		case	190:	why = "weapon_bat";						//Same as default Bat, used for strange, renamed & skinned versions.
		case	191:	why = "weapon_bottle";					//Same as default Bottle, used for strange, renamed & skinned versions.
		case	192:	why = "weapon_fireaxe";					//Same as default Fire Axe, used for strange, renamed & skinned versions.
		case	193:	why = "weapon_kukri";					//Same as default Kukri, used for strange, renamed & skinned versions.
		case	194:	why = "weapon_knife";					//Same as default Knife, used for australium, strange, renamed & skinned versions.
		case	195:	why = "weapon_fists";					//Same as default Fists, used for strange, renamed & skinned versions.
		case	196:	why = "weapon_shovel";					//Same as default Shovel, used for strange, renamed & skinned versions.
		case	197:	why = "weapon_wrench";					//Same as default Wrench, used for australium, strange, renamed & skinned versions.
		case	198:	why = "weapon_bonesaw";					//Same as default Bonesaw, used for strange, renamed & skinned versions.
		case	199:	why = "weapon_shotgun";					//Same as default Shotgun, used for strange, renamed & skinned versions.
		case	200:	why = "weapon_scattergun";				//Same as default Scattergun, used for strange, renamed & skinned versions.
		case	201:	why = "weapon_sniperrifle";				//Same as default Sniper Rifle, used for australium, strange, renamed & skinned versions.
		case	202:	why = "weapon_minigun";					//Same as default Minigun, used for australium, strange, renamed & skinned versions.
		case	203:	why = "weapon_smg";						//Same as default SMG, used for australium, strange, renamed & skinned versions.
		case	204:	why = "weapon_syringegun";				//Same as default Syringe gun, used for strange, renamed & skinned versions.
		case	205:	why = "weapon_rocketlauncher";			//Same as default Rocket Launcher, used for australium, strange, renamed & skinned versions.
		case	206:	why = "weapon_grenadelauncher";			//Same as default Grenade Launcher, used for australium, strange, renamed & skinned versions.
		case	207:	why = "weapon_stickybomblauncher";		//Same as default Stickybomb Launcher, used for australium, strange, renamed & skinned versions.
		case	208:	why = "weapon_flamethrower";			//Same as default Flamethrower, used for australium, strange, renamed & skinned versions.
		case	209:	why = "weapon_pistol";					//Same as default Pistol, used for strange, renamed & skinned versions.
		case	210:	why = "weapon_revolver";				//Same as default Revolver, used for strange, renamed &  skinned versions.
		case	214:	why = "weapon_powerjack";				//The Powerjack.
		case	215:	why = "weapon_degreaser";				//The Degreaser.
		case	220:	why = "weapon_shortstop";				//The Shortstop.
		case	221:	why = "weapon_holymackerel";			//The Holy Mackerel.
		case	224:	why = "weapon_letranger";				//The L'etranger.
		case	225:	why = "weapon_eternalreward";			//The Eternal Reward.
		case	228:	why = "weapon_blackbox";				//The Black Box.
		case	230:	why = "weapon_sydneysleeper";			//The Sydney Sleeper.
		case	232:	why = "weapon_bushwacka";				//The Bushwacka.
		case	237:	why = "weapon_rocketlauncher";			//The Rocket Jumper (Just because why not.)
		case	239:	why = "weapon_goru";					//The Gloves of Running Urgently.
		case	264:	why = "weapon_fryingpan";				//The Frying Pan.
		case	265:	why = "weapon_stickybomblauncher";		//The Sticky Jumper (I mean.. why? not? i guess?.)
		case	266:	why = "weapon_hhhh";					//The Horseless Headless Horsemann's Headtaker. (That's a long name, whew.)
		case	294:	why = "weapon_lugermorph";				//Same as the other Lugermorph, different TFClass type.
		case	298:	why = "weapon_ironcurtain";				//The Iron Curtain.
		case	304:	why = "weapon_amputator";				//The Amputator.
		case	305:	why = "weapon_crusaderscrossbow";		//The Crusader's Crossbow.
		case	307:	why = "weapon_ullapoolcaber";			//The Ullapool Caber.
		case	308:	why = "weapon_lochnload";				//The Loch-n-Load.
		case	310:	why = "weapon_warriorsspirit";			//The Warriors Spirit.
		case	312:	why = "weapon_brassbeast";				//The Brass Beast.
		case	317:	why = "weapon_candycane";				//The Candy Cane.
		case	325:	why = "weapon_bostonbasher";			//The Boston Basher.
		case	326:	why = "weapon_backscratcher";			//The Back Scratcher. (Isn't this one too harsh to be one?. /s)
		case	327:	why = "weapon_claidheamhmor";			//The Claidheamh Mór.
		case	329:	why = "weapon_jag";						//The Jag ('Jag' literally means 'me' in swedish).
		case	331:	why = "weapon_fistsofsteel";			//The Fists Of Steel.
		case	348:	why = "weapon_sharpenedvolcanofragment";//The Sharpened Volcano Fragment.
		case	349:	why = "weapon_sunonastick";				//The Sun-On-A-Stick (Does anybody really use this weapon?.)
		case	351:	why = "weapon_detonator";				//The Detonator.
		case	355:	why = "weapon_fanowar";					//The Fan O' War.
		case	356:	why = "weapon_conniverskunai";			//The Conniver's Kunai.
		case	357:	why = "weapon_halfzatoichi";			//The Half-Zatoichi.
		case	401:	why = "weapon_shahanshah";				//The Shahanshah.
		case	402:	why = "weapon_bazaarbargain";			//The Bazaar Bargain.
		case	404:	why = "weapon_persainpersuader";		//The Persain Persuader.
		case	406:	why = "weapon_splendidscreen";			//The Splendid Screen.
		case	412:	why = "weapon_overdose";				//The Overdose.
		case	413:	why = "weapon_solemnvow";				//The Solemn Vow.
		case	414:	why = "weapon_libertylauncher";			//The Liberty Launcher.
		case	415:	why = "weapon_reserveshooter";			//The Reserve Shooter.
		case	416:	why = "weapon_marketgardener";			//The Market Gardener.
		case	423:	why = "weapon_saxxy";					//The Saxxy.
		case	424:	why = "weapon_tomislav";				//The Tomislav.
		case	425:	why = "weapon_familybusiness";			//The Family Business.
		case	426:	why = "weapon_evictionnotice";			//The Eviction Notice.
		case	441:	why = "weapon_cowmangler5000";			//The Cow Mangler 5000.
		case	442:	why = "weapon_righteousbison";			//The Righeous Bison.
		case	444:	why = "weapon_mantreads";				//The Mantreads.
		case	447:	why = "weapon_disciplinaryaction";		//The Disciplinary Action.
		case	448:	why = "weapon_sodapopper";				//The Soda Popper.
		case	449:	why = "weapon_winger";					//The Winger.
		case	450:	why = "weapon_atomizer";				//The Atomizer.
		case	452:	why = "weapon_threeruneblade";			//The Three-Rune-Blade.
		case	457:	why = "weapon_postalpummeler";			//The Postal Pummeler.
		case	460:	why = "weapon_enforcer";				//The Enforcer.
		case	461:	why = "weapon_bigearner";				//The Big Earner.
		case	466:	why = "weapon_maul";					//The Maul.
		case	474:	why = "weapon_conscentiousobjector";	//The Conscentious Objector.
		case	482:	why = "weapon_nessiesnineiron";			//The Nessie's Nine Iron.
		case	513:	why = "weapon_original";				//The Original.
		case	525:	why = "weapon_diamondback";				//The Diamond Back.
		case	526:	why = "weapon_machina";					//The Machine.
		case	527:	why = "weapon_widowmaker";				//The Widowmaker.
		case	528:	why = "weapon_shortcircuit";			//The Short Circuit.
		case	572:	why = "weapon_unarmedcombat";			//The Unarmed Combat.
		case	574:	why = "weapon_wangaprick";				//The Wanga Prick.
		case	587:	why = "weapon_apocofists";				//The Apoco Fists.
		case	588:	why = "weapon_pomson6000";				//The Pomson 6000.
		case	589:	why = "weapon_eurekaeffect";			//The Eureka Effect.
		case	593:	why = "weapon_thirddegree";				//The Third Degree.
		case	594:	why = "weapon_phlogistinator";			//The Phlogistinator.
		case	595:	why = "weapon_manmelter";				//The Man Melter.
		case	609:	why = "weapon_scottishhandshake";		//The Scottish Handshake.
		case	638:	why = "weapon_sharpdresser";			//The Sharp Dresser.
		case	648:	why = "weapon_wrapassassin";			//The Wrap Assassin.
		case	649:	why = "weapon_spycicle";				//The Spycicle.
		case	654:	why = "weapon_minigun";					//The Festive Minigun.
		case	656:	why = "weapon_holidaypunch";			//The Holiday Punch.
		case	658:	why = "weapon_rocketlauncher";			//The Festive Rocket Launcher.
		case	659:	why = "weapon_flamethrower";			//The Festive Flamethrower.
		case	660:	why = "weapon_bat";						//The Festive Bat.
		case	661:	why = "weapon_stickybomblauncher";		//The Festive StickyBomb Launcher.
		case	662:	why = "weapon_wrench";					//The Festive Wrench.
		case	664:	why = "weapon_sniperrifle";				//The Festive Sniper Rifle.
		case	665:	why = "weapon_knife";					//The Festive Knife.
		case	669:	why = "weapon_scattergun";				//The Festive Scattergun.
		case	727:	why = "weapon_blackrose";				//The Blackrose.
		case	739:	why = "weapon_lollichop";				//The Lollichop.
		case	740:	why = "weapon_scorchshot";				//The Shorch Shot.
		case	741:	why = "weapon_rainblower";				//The Rainblower.
		case	751:	why = "weapon_cleanerscarbine";			//The Cleaner's Carbine.
		case	752:	why = "weapon_hitmansheatmaker";		//The Hitman's Heatmaker.
		case	772:	why = "weapon_babyfacesblaster";		//The Baby Face's Blaster.
		case	773:	why = "weapon_prettyboyspocketpistol";	//The Pretty Boy's Pocket Pistol.
		case	775:	why = "weapon_escapeplan";				//The Escape Plan.
		case	792:	why = "weapon_sniperrifle";				//The Silver Botkiller Mk. I Sniper Rifle.
		case	793:	why = "weapon_minigun";					//The Silver Botkiller Mk. I Minigun.
		case	795:	why = "weapon_wrench";					//The Silver Botkiller Mk. I Wrench.
		case	797:	why = "weapon_stickybomblauncher";		//The Silver Botkiller Mk. I StickyBomb Launcher.
		case	798:	why = "weapon_flamethrower";			//The Silver Botkiller Mk. I Flamethrower.
		case	799:	why = "weapon_scattergun";				//The Silver Botkiller Mk. I Scattergun.
		case	800:	why = "weapon_rocketlauncher";			//The Silver Botkiller Mk. I Rocket Launcher.
		case	801:	why = "weapon_sniperrifle";				//The Gold Botkiller Mk. I Sniper Rifle.
		case	802:	why = "weapon_minigun";					//The Gold Botkiller Mk. I Minigun.
		case	804:	why = "weapon_wrench";					//The Gold Botkiller Mk. I Wrench.
		case	806:	why = "weapon_stickybomblauncher";		//The Gold Botkiller Mk. I StickyBomb Launcher.
		case	807:	why = "weapon_flamethrower";			//The Gold Botkiller Mk. I Flamethrower.
		case	808:	why = "weapon_scattergun";				//The Gold Botkiller Mk. I Scattergun.
		case	809:	why = "weapon_rocketlauncher";			//The Gold Botkiller Mk. I Rocket Launcher.
		case	811:	why = "weapon_huolongheater";			//The Huo-Long Heater.
		case	812:	why = "weapon_flyingguillotine";		//The Flying Guillotine.
		case	813:	why = "weapon_neonannihilator";			//The Neon Annhiliator.
		case	832:	why = "weapon_huolongheater";			//The Genuine Huo-Long Heater.
		case	833:	why = "weapon_flyingguillotine";		//The Genuine Guillotine.
		case	834:	why = "weapon_neonannihilator";			//The Genuine Neon Annihilator.
		case	850:	why = "weapon_minigun";					//The MvM Minigun Deflector.
		case	851:	why = "weapon_awperhand";				//The AWPer Hand.
		case	880:	why = "weapon_freedomstaff";			//The Freedom Staff.
		case	881:	why = "weapon_sniperrifle";				//The Rust Botkiller Mk. I Sniper Rifle.
		case	882:	why = "weapon_minigun";					//The Rust Botkiller Mk. I Minigun.
		case	884:	why = "weapon_wrench";					//The Rust Botkiller Mk. I Wrench.
		case	886:	why = "weapon_stickybomblauncher";		//The Rust Botkiller Mk. I StickyBomb Launcher.
		case	887:	why = "weapon_flamethrower";			//The Rust Botkiller Mk. I Flamethrower
		case	888:	why = "weapon_scattergun";				//The Rust Botkiller Mk. I Scattergun.
		case	889:	why = "weapon_rocketlauncher";			//The Rust Botkiller Mk. I Rocket Launcher.
		case	890:	why = "weapon_sniperrifle";				//The Blood Botkiller Mk. I Sniper Rifle.
		case	891:	why = "weapon_minigun";					//The Blood Botkiller Mk. I Minigun.
		case	893:	why = "weapon_wrench";					//The Blood Botkiller Mk. I Wrench.
		case	895:	why = "weapon_stickybomblauncher";		//The Blood Botkiller Mk. I StickyBomb Launcher.
		case	896:	why = "weapon_flamethrower";			//The Blood Botkiller Mk. I Flamethrower
		case	897:	why = "weapon_scattergun";				//The Blood Botkiller Mk. I Scattergun.
		case	898:	why = "weapon_rocketlauncher";			//The Blood Botkiller Mk. I Rocket Launcher.
		case	899:	why = "weapon_sniperrifle";				//The Carbonado Botkiller Mk. I Sniper Rifle.
		case	900:	why = "weapon_minigun";					//The Carbonado Botkiller Mk. I Minigun.
		case	902:	why = "weapon_wrench";					//The Carbonado Botkiller Mk. I Wrench.
		case	904:	why = "weapon_stickybomblauncher";		//The Carbonado Botkiller Mk. I StickyBomb Launcher.
		case	905:	why = "weapon_flamethrower";			//The Carbonado Botkiller Mk. I Flamethrower
		case	906:	why = "weapon_scattergun";				//The Carbonado Botkiller Mk. I Scattergun.
		case	907:	why = "weapon_rocketlauncher";			//The Carbonado Botkiller Mk. I Rocket Launcher.
		case	908:	why = "weapon_sniperrifle";				//The Diamond Botkiller Mk. I Sniper Rifle.
		case	909:	why = "weapon_minigun";					//The Diamond Botkiller Mk. I Minigun.
		case	911:	why = "weapon_wrench";					//The Diamond Botkiller Mk. I Wrench.
		case	913:	why = "weapon_stickybomblauncher";		//The Diamond Botkiller Mk. I StickyBomb Launcher.
		case	914:	why = "weapon_flamethrower";			//The Diamond Botkiller Mk. I Flamethrower
		case	915:	why = "weapon_scattergun";				//The Diamond Botkiller Mk. I Scattergun.
		case	916:	why = "weapon_rocketlauncher";			//The Diamond Botkiller Mk. I Rocket Launcher.
		case	939:	why = "weapon_batouttahell";			//The Bat Outta Hell.
		case	954:	why = "weapon_memorymaker";				//The Memory Maker.
		case	957:	why = "weapon_sniperrifle";				//The Silver Botkiller Mk. II Sniper Rifle.
		case	958:	why = "weapon_minigun";					//The Silver Botkiller Mk. II Minigun.
		case	960:	why = "weapon_wrench";					//The Silver Botkiller Mk. II Wrench.
		case	962:	why = "weapon_stickybomblauncher";		//The Silver Botkiller Mk. II StickyBomb Launcher.
		case	963:	why = "weapon_flamethrower";			//The Silver Botkiller Mk. II Flamethrower
		case	964:	why = "weapon_scattergun";				//The Silver Botkiller Mk. II Scattergun.
		case	965:	why = "weapon_rocketlauncher";			//The Silver Botkiller Mk. II Rocket Launcher.
		case	966:	why = "weapon_sniperrifle";				//The Gold Botkiller Mk. II Sniper Rifle.
		case	967:	why = "weapon_minigun";					//The Gold Botkiller Mk. II Minigun.
		case	969:	why = "weapon_wrench";					//The Gold Botkiller Mk. II Wrench.
		case	971:	why = "weapon_stickybomblauncher";		//The Gold Botkiller Mk. II StickyBomb Launcher.
		case	972:	why = "weapon_flamethrower";			//The Gold Botkiller Mk. II Flamethrower
		case	973:	why = "weapon_scattergun";				//The Gold Botkiller Mk. II Scattergun.
		case	974:	why = "weapon_rocketlauncher";			//The Gold Botkiller Mk. II Rocket Launcher.
		case	996:	why = "weapon_loosecannon";				//The Loose Cannon.
		case	997:	why = "weapon_rescueranger";			//The Rescue Ranger.
		case	999:	why = "weapon_holymackerel";			//The Festive Holy Mackerel.
		case	1000:	why = "weapon_axtinguisher";			//The Festive Axtinguisher.
		case	1003:	why = "weapon_ubersaw";					//The Festive Ubersaw.
		case	1004:	why = "weapon_frontierjustice";			//The Festive Frontier Justice.
		case	1005:	why = "weapon_huntsman";				//The Festive Huntsman.
		case	1006:	why = "weapon_ambassador";				//The Festive Ambassador.
		case	1007:	why = "weapon_grenadelauncher";			//The Festive Grenade Launcher.
		case	1013:	why = "weapon_hamshank";				//The Ham Shank.
		case	1071:	why = "weapon_goldenfryingpan";			//The Golden Frying Pan.
		case	1078:	why = "weapon_forceanature";			//The Festive Force-A-Nature.
		case	1079:	why = "weapon_crusaderscrossbow";		//The Festive Crusader's Crossbow.
		case	1081:	why = "weapon_flaregun";				//The Festive Flare Gun.
		case	1082:	why = "weapon_eyelander";				//The Festive Eyelander.
		case	1084:	why = "weapon_goru";					//The Festive Gloves Of Running Urgently.
		case	1085:	why = "weapon_blackbox";				//The Festive Black Box.
		case	1092:	why = "weapon_fortifiedcompound";		//The Fortified Compound.
		case	1098:	why = "weapon_classic";					//The Classic.
		case	1099:	why = "weapon_tideturner";				//The Tide Turner.
		case	1100:	why = "weapon_breadbite";				//The Bread Bite.
		case	1103:	why = "weapon_backscatter";				//The Back Scatter.
		case	1104:	why = "weapon_airstrike";				//The Air Strike.
		case	1123:	why = "weapon_necrosmasher";			//The Necro Smasher.
		case	1127:	why = "weapon_crossingguard";			//The Crossing Guard.
		case	1141:	why = "weapon_shotgun";					//The Festive Shotgun.
		case	1142:	why = "weapon_revolver";				//The Festive Revolver.
		case	1144:	why = "weapon_chargintarge";			//The Festive Chargin' Targe.
		case	1446:	why = "weapon_backburner";				//The Festive Backburner.
		case	1149:	why = "weapon_smg";						//The Festive SMG.
		case	1150:	why = "weapon_quickiebomblauncher";		//The QuickieBomb Launcher.
		case	1151:	why = "weapon_ironbomber";				//The Iron Bomber.
		case	1153:	why = "weapon_panicattack";				//The Panic Attack.
		case	1178:	why = "weapon_dragonsfury";				//The Dragon's Fury.
		case	1179:	why = "weapon_thermalthruster";			//The Thermal Thruster.
		case	1181:	why = "weapon_hothand";					//The Hot Hand.
		case	1184:	why = "weapon_goru";					//The MvM Gloves Of Running Urgently.
		case	30474:	why = "weapon_nostromonapalmer";		//The Nostromo Napalmer.
		case	30665:	why = "weapon_shootingstar";			//The Shooting Star.
		case	30666:	why = "weapon_capper";					//The C.A.P.P.E.R.
		case	30667:	why = "weapon_batsaber";				//The Batsaber.
		case	30668:	why = "weapon_gigarcounter";			//The Gigarcounter.
		case	30758:	why = "weapon_prinnymachete";			//The Prinny Machete.
		default: Format(why, sizeof(why), format);
	}
	
	strcopy(weapon, maxlen, why);
}