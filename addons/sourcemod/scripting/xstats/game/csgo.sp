/**
 *	Initialize: Counter-Strike Global Offensive.
 */
void PrepareGame_CSGO()	{
	//Weapon cvars
	Cvars.Weapon[CSGO_Weapon_Deagle]		= CreateConVar("xstats_points_weapon_deagle",	"5", "XStats: CS:GO - Points given when killing with Deagle.", _, true);
	Cvars.Weapon[CSGO_Weapon_Glock]			= CreateConVar("xstats_points_weapon_glock",	"5", "XStats: CS:GO - Points given when killing with Glock.", _, true);
	Cvars.Weapon[CSGO_Weapon_Ak47]			= CreateConVar("xstats_points_weapon_ak47",		"5", "XStats: CS:GO - Points given when killing with Ak47.", _, true);
	Cvars.Weapon[CSGO_Weapon_Aug]			= CreateConVar("xstats_points_weapon_aug",		"5", "XStats: CS:GO - Points given when killing with Aug.", _, true);
	Cvars.Weapon[CSGO_Weapon_AWP]			= CreateConVar("xstats_points_weapon_awp",		"5", "XStats: CS:GO - Points given when killing with Awp.", _,true, 0.0);
	Cvars.Weapon[CSGO_Weapon_Famas]			= CreateConVar("xstats_points_weapon_famas",	"5", "XStats: CS:GO - Points given when killing with Famas.", _, true);
	Cvars.Weapon[CSGO_Weapon_G3SG1]			= CreateConVar("xstats_points_weapon_g3sg1",	"5", "XStats: CS:GO - Points given when killing with G3sg1.", _, true);
	Cvars.Weapon[CSGO_Weapon_GalilAR]		= CreateConVar("xstats_points_weapon_galilar",	"5", "XStats: CS:GO - Points given when killing with Galilar.", _, true);
	Cvars.Weapon[CSGO_Weapon_M249]			= CreateConVar("xstats_points_weapon_m249",		"5", "XStats: CS:GO - Points given when killing with M249.", _, true);
	Cvars.Weapon[CSGO_Weapon_M4A4]			= CreateConVar("xstats_points_weapon_m4a4",		"5", "XStats: CS:GO - Points given when killing with M4a4.", _, true);
	Cvars.Weapon[CSGO_Weapon_Mac10]			= CreateConVar("xstats_points_weapon_mac10",	"5", "XStats: CS:GO - Points given when killing with Mac10.", _, true);
	Cvars.Weapon[CSGO_Weapon_P90]			= CreateConVar("xstats_points_weapon_p90",		"5", "XStats: CS:GO - Points given when killing with P90.", _, true);
	Cvars.Weapon[CSGO_Weapon_MP5]			= CreateConVar("xstats_points_weapon_mp5",		"5", "XStats: CS:GO - Points given when killing with MP5.", _, true);
	Cvars.Weapon[CSGO_Weapon_UMP45]			= CreateConVar("xstats_points_weapon_ump45",	"5", "XStats: CS:GO - Points given when killing with UMP45.", _, true);
	Cvars.Weapon[CSGO_Weapon_XM1014]		= CreateConVar("xstats_points_weapon_xm1014",	"5", "XStats: CS:GO - Points given when killing with XM1014.", _, true);
	Cvars.Weapon[CSGO_Weapon_Bizon]			= CreateConVar("xstats_points_weapon_bizon",	"5", "XStats: CS:GO - Points given when killing with Bizon.", _, true);
	Cvars.Weapon[CSGO_Weapon_MAG7]			= CreateConVar("xstats_points_weapon_mag7",		"5", "XStats: CS:GO - Points given when killing with MAG-7", _, true);
	Cvars.Weapon[CSGO_Weapon_Negev]			= CreateConVar("xstats_points_weapon_negev",	"5", "XStats: CS:GO - Points given when killing with Negev.", _, true);
	Cvars.Weapon[CSGO_Weapon_SawedOff]		= CreateConVar("xstats_points_weapon_sawedoff",	"5", "XStats: CS:GO - Points given when killing with Sawed-Off.", _, true);
	Cvars.Weapon[CSGO_Weapon_Tec9]			= CreateConVar("xstats_points_weapon_tec9",		"5", "XStats: CS:GO - Points given when killing with Tec9.", _, true);
	Cvars.Weapon[CSGO_Weapon_Taser]			= CreateConVar("xstats_points_weapon_taser",	"5", "XStats: CS:GO - Points given when killing with Taser.", _, true);
	Cvars.Weapon[CSGO_Weapon_P2000]			= CreateConVar("xstats_points_weapon_hkp2000",	"5", "XStats: CS:GO - Points given when killing with P2000.", _, true);
	Cvars.Weapon[CSGO_Weapon_MP7]			= CreateConVar("xstats_points_weapon_mp7",		"5", "XStats: CS:GO - Points given when killing with MP7.", _, true);
	Cvars.Weapon[CSGO_Weapon_MP9]			= CreateConVar("xstats_points_weapon_mp9",		"5", "XStats: CS:GO - Points given when killing with MP9.", _, true);
	Cvars.Weapon[CSGO_Weapon_Nova]			= CreateConVar("xstats_points_weapon_nova",		"5", "XStats: CS:GO - Points given when killing with Nova.", _, true);
	Cvars.Weapon[CSGO_Weapon_P250]			= CreateConVar("xstats_points_weapon_p250",		"5", "XStats: CS:GO - Points given when killing with P250.", _, true);
	Cvars.Weapon[CSGO_Weapon_Scar20]		= CreateConVar("xstats_points_weapon_scar20",	"5", "XStats: CS:GO - Points given when killing with Scar-20.", _, true);
	Cvars.Weapon[CSGO_Weapon_SG556]			= CreateConVar("xstats_points_weapon_sg556",	"5", "XStats: CS:GO - Points given when killing with SG556.", _, true);
	Cvars.Weapon[CSGO_Weapon_SSG08]			= CreateConVar("xstats_points_weapon_ssg08",	"5", "XStats: CS:GO - Points given when killing with Scout.", _, true);
	Cvars.Weapon[CSGO_Knife_CT]				= CreateConVar("xstats_points_weapon_knife",	"5", "XStats: CS:GO - Points given when killing with Knife.", _, true);
	Cvars.Weapon[CSGO_Knife_Gold]			= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Grenade_Flashbang]	= CreateConVar("xstats_points_weapon_flashbang",	"5", "XStats: CS:GO - Points given when killing with Flashbang.", _, true);
	Cvars.Weapon[CSGO_Grenade_HEGrenade]	= CreateConVar("xstats_points_weapon_hegrenade",	"5", "XStats: CS:GO - Points given when killing with HE Grenade.", _, true);
	Cvars.Weapon[CSGO_Grenade_SmokeGrenade]	= CreateConVar("xstats_points_weapon_smokegrenade",	"5", "XStats: CS:GO - Points given when killing with Smokegrenade", _, true);
	Cvars.Weapon[CSGO_Grenade_Molotov]		= CreateConVar("xstats_points_weapon_molotov",		"5", "XStats: CS:GO - Points given when killing with Molotov.", _, true);
	Cvars.Weapon[CSGO_Grenade_Decoy]		= CreateConVar("xstats_points_weapon_decoy",		"5", "XStats: CS:GO - Points given when killing with Decoy.", _, true);
	Cvars.Weapon[CSGO_Grenade_Incendiary]	= CreateConVar("xstats_points_weapon_incendiary",	"5", "XStats: CS:GO - Points given when killing with Incendiary.", _, true);
	Cvars.Weapon[CSGO_Grenade_TAGrenade]	= CreateConVar("xstats_points_weapon_tagrenade",	"5", "XStats: CS:GO - Points given when killing with Tactical Awareness Grenade. (lol)", _, true);
	Cvars.Weapon[CSGO_Grenade_BreachCharge]	= CreateConVar("xstats_points_weapon_breachcharge",	"5", "XStats: CS:GO - Points given when killing with Breach Charge. (:D)", _, true);
	Cvars.Weapon[CSGO_Weapon_C4]			= CreateConVar("xstats_points_weapon_c4",		"5", "Xstats: CS:GO - Points given when killing with C4.", _, true);
	Cvars.Weapon[CSGO_Knife_T]				= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Weapon_M4A1_S]		= CreateConVar("xstats_points_weapon_m4a1_silencer",	"5", "XStats: CS:GO - Points given when killing with M4A1-S.", _, true);
	Cvars.Weapon[CSGO_Weapon_USP_S]			= CreateConVar("xstats_points_weapon_usp_silencer",		"5", "XStats: CS:GO - Points given when killing with USP-S", _, true);
	Cvars.Weapon[CSGO_Weapon_CZ75_A]		= CreateConVar("xstats_points_weapon_cz75a",			"5", "XStats: CS:GO - Points given when killing with CZ75-A", _, true);
	Cvars.Weapon[CSGO_Weapon_Revolver]		= CreateConVar("xstats_points_weapon_revolver",			"5", "XStats: CS:GO - Points given when killing with Revolver.", _, true);
	Cvars.Weapon[CSGO_Knife_Ghost]			= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Bayonet]		= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Classic]		= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Flip]			= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Gut]			= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Karambit]		= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_M9_Bayonet]		= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Huntsman]		= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Falchion]		= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Bowie]			= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Butterfly]		= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_ButtPlugs]		= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Paracord]		= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Survival]		= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Ursus]			= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Navaja]			= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Nomad]			= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Stiletto]		= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Talon]			= Cvars.Weapon[CSGO_Knife_CT];
	Cvars.Weapon[CSGO_Knife_Skeleton]		= Cvars.Weapon[CSGO_Knife_CT];
	
	/* Events */
	
	/* Deaths */
	HookEventEx(EVENT_PLAYER_DEATH, Player_Death_CSGO, EventHookMode_Pre);
	
	/* Other Deaths */
	HookEventEx(EVENT_OTHER_DEATH, Other_Death_CSGO, EventHookMode_Pre);
	
	/* Config file */
	AutoExecConfig(true, "csgo.xstats.plugin");
}

/* Deaths */
stock void Player_Death_CSGO(Event event, const char[] event_name, bool dontBroadcast)	{
	if(!IsValidStats())
		return;
	
	char weapon[64];
	event.GetString(EVENT_STR_WEAPON, weapon, sizeof(weapon));
	if(StrEqual(weapon, "world")
	|| StrEqual(weapon, "player")) {
		XStats_DebugText(false, "//===== XStats Debug Log: Player_Death_CSGO =====//");
		XStats_DebugText(false, "Detected invalid killer \"%s\", ignoring to prevent issues..\n", weapon);
		return; //Since it's not a valid killer, lets end here.
	}
	
	/* Another method but is not used.
	Entity planted_c4 = Entity_Invalid;
	while((planted_c4 = Entity.FindByClassname(planted_c4, "planted_c4")) != Entity_Invalid)	{
		if(planted_c4.IsValid() && planted_c4.Owner > 0)
			client = planted_c4.Owner;
	}
	*/
	
	int client = StrEqual(weapon, "planted_c4") ? m_hLastBombPlanter : GetClientOfUserId(event.GetInt(EVENT_STR_ATTACKER));
	int victim = GetClientOfUserId(event.GetInt(EVENT_STR_USERID));
	
	if(!Tklib_IsValidClient(client, true) || !Tklib_IsValidClient(victim))
		return;
	
	if(IsValidAbuse(client) || IsSamePlayers(client, victim) || IsSameTeam(client, victim) || IsFakeClient(victim) && !Cvars.AllowBots.BoolValue)
		return;
	
	/* Fix the weapon entity prefix */
	Format(weapon, sizeof(weapon), "weapon_%s", weapon);
	
	if(StrEqual(weapon, "weapon_breachcharge_projectile"))
		weapon = "weapon_breachcharge";
	if(StrContains(weapon, "weapon_planted_c4") != -1)
		weapon = "weapon_c4";
	
	/* Since 'inferno' applies for Incendiary and Molotov. */
	if(StrEqual(weapon, "weapon_inferno")) {
		switch(m_hLastFirebombGrenade[client])	{
			case CSGO_Grenade_Molotov: weapon = "weapon_molotov";
			case CSGO_Grenade_Incendiary: weapon = "weapon_incgrenade";
		}
	}
	
	/* Make sure the midair is unchecked for grenade kills. */
	bool grenadekill = (StrEqual(weapon, "weapon_molotov")
	|| StrEqual(weapon, "weapon_incgrenade")
	|| StrEqual(weapon, "weapon_flashbang")
	|| StrEqual(weapon, "weapon_decoy")
	|| StrEqual(weapon, "weapon_hegrenade")
	|| StrEqual(weapon, "weapon_frag")
	|| StrEqual(weapon, "weapon_tagrenade")
	|| StrEqual(weapon, "weapon_snowball")); /* Not really a grenade but whatever, just for some specific stuff */
	
	int assist = GetClientOfUserId(event.GetInt(EVENT_STR_ASSISTER));
	int defindex = CSGO_GetWeaponDefindex(weapon);
	//int penetrated = event.GetInt(EVENT_STR_PENETRATED);
	bool midair = IsClientMidAir(client);
	bool headshot = event.GetBool(EVENT_STR_HEADSHOT);
	bool dominated = event.GetBool(EVENT_STR_DOMINATED);
	bool revenge = event.GetBool(EVENT_STR_REVENGE);
	bool noscope = event.GetBool(EVENT_STR_NOSCOPE);
	bool thrusmoke = event.GetBool(EVENT_STR_THRUSMOKE);
	bool attackerblind = event.GetBool(EVENT_STR_ATTACKERBLIND);
	bool knifekill = (StrContains(weapon, "knife", false) != -1); /* Support custom plugins */
	bool bombkill = ((StrContains(weapon, "c4", false) != -1) || StrContains(weapon, "breachcharge") != -1);
	//bool collateral = (penetrated > 0);
	
	if(Cvars.Weapon[defindex] == null)	{
		XStats_DebugText(false, "weapon \"%s\" (%i defindex) has invalid cvar handle, stopping event from further errors.\n", weapon, defindex);
		return;
	}
	
	if(StrEqual(weapon, "weapon_knife", false)) {
		char clsname[][] = {"","","weapon_knife_t","weapon_knife_ct"};
		strcopy(weapon, sizeof(weapon), clsname[CS_GetClientTeam(client)]);
		//Make the knife to its respected team. T player with default knife -> weapon_knife_t. ct player with default knife -> weapon_knife_ct.
	}
	
	if(StrEqual(weapon, "weapon_m4a1", false)) {
		weapon = "weapon_m4a4";
		//It's proper name. M4A4 is not a M4A1, it's just leftover from CS:S.
	}
	
	int points = Cvars.Weapon[defindex].IntValue;
	
	/* Debug */
	XStats_DebugText(false, "//===== XStats Debug Log: Player_Death_CSGO =====//");
	XStats_DebugText(false, "client: %s (index %i, userid %i)", Player[client].Playername, client, Player[client].UserID);
	XStats_DebugText(false, "victim: %s (index %i, userid %i)", Player[victim].Playername, victim, Player[victim].UserID);
	XStats_DebugText(false, "assist: %s (index %i, userid %i)", Tklib_IsValidClient(assist) ? Player[assist].Playername : "No assister", assist, Player[assist].UserID);
	XStats_DebugText(false, "defindex: %i", defindex);
	XStats_DebugText(false, "weapon: \"%s\"\n", weapon);
	XStats_DebugText(false, "midair: %s", Bool[midair]);
	XStats_DebugText(false, "headshot: %s", Bool[headshot]);
	XStats_DebugText(false, "dominated: %s", Bool[dominated]);
	XStats_DebugText(false, "revenge: %s", Bool[revenge]);
	XStats_DebugText(false, "noscope: %s", Bool[noscope]);
	XStats_DebugText(false, "thrusmoke: %s", Bool[thrusmoke]);
	XStats_DebugText(false, "attackerblind: %s", Bool[attackerblind]);
	XStats_DebugText(false, "grenadekill: %s", Bool[grenadekill]);
	XStats_DebugText(false, "bombkill: %s\n", Bool[bombkill]);
	XStats_DebugText(false, "Points %i\n", points);
	
	/* Kill msg stuff */
	KillMsg[client].MidAirKill = midair;
	KillMsg[client].SmokeKill = thrusmoke;
	KillMsg[client].HeadshotKill = headshot;
	KillMsg[client].NoscopeKill = noscope;
	KillMsg[client].GrenadeKill = grenadekill;
	KillMsg[client].BombKill = bombkill;
	KillMsg[client].BlindedKill = attackerblind;
	
	PrepareOnDeathForward(client, victim, assist, weapon, defindex);
	AssistedKill(assist, client, victim);
	VictimDied(victim);
	
	char query[1024];
	
	Session[client].Kills++;
	Format(query, sizeof(query), "update `%s` set Kills = Kills+1 where SteamID='%s' and ServerID='%i'",
	Global.playerlist, Player[client].SteamID, Cvars.ServerID.IntValue);
	DB.Threaded.Query(DBQuery_Callback, query);
	
	Format(query, sizeof(query), "update `%s` set %s = %s+1 where SteamID='%s' and ServerID='%i'",
	Global.weapons, weapon, weapon, Player[client].SteamID, Cvars.ServerID.IntValue);
	DB.Threaded.Query(DBQuery_Callback, query);
	
	if(headshot) {
		Session[client].Headshots++;
		Format(query, sizeof(query), "update `%s` set Headshots = Headshots+1 where SteamID='%s' and ServerID='%i'",
		Global.playerlist, Player[client].SteamID, Cvars.ServerID.IntValue);
		DB.Threaded.Query(DBQuery_Callback, query);
		
		XStats_DebugText(false, "Headshot\n");
	}
	
	if(dominated) {
		Session[client].Dominations++;
		Format(query, sizeof(query), "update `%s` set Dominations = Dominations+1 where SteamID='%s' and ServerID='%i'",
		Global.playerlist, Player[client].SteamID, Cvars.ServerID.IntValue);
		DB.Threaded.Query(DBQuery_Callback, query);
		
		XStats_DebugText(false, "Dominated\n");
	}
		
	if(revenge)	{
		Session[client].Revenges++;
		Format(query, sizeof(query), "update `%s` set Revenges = Revenges+1 where SteamID='%s' and ServerID='%i'",
		Global.playerlist, Player[client].SteamID, Cvars.ServerID.IntValue);
		DB.Threaded.Query(DBQuery_Callback, query);
		
		XStats_DebugText(false, "Revenge\n");
	}
	
	if(noscope) {
		Session[client].Noscopes++;
		Format(query, sizeof(query), "update `%s` set Noscopes = Noscopes+1 where SteamID='%s' and ServerID='%i'",
		Global.playerlist, Player[client].SteamID, Cvars.ServerID.IntValue);
		DB.Threaded.Query(DBQuery_Callback, query);
		
		XStats_DebugText(false, "Noscope\n");
	}
	
	if(thrusmoke) {
		Session[client].SmokeKills++;
		Format(query, sizeof(query), "update `%s` set ThruSmokes = ThruSmokes+1 where SteamID='%s' and ServerID='%i'",
		Global.playerlist, Player[client].SteamID, Cvars.ServerID.IntValue);
		DB.Threaded.Query(DBQuery_Callback, query);
		
		XStats_DebugText(false, "Thru smoke\n");
	}
	
	if(knifekill) {
		Session[client].KnifeKills++;
		Format(query, sizeof(query), "update `%s` set KnifeKills = KnifeKills+1 where SteamID='%s' and ServerID='%i'",
		Global.playerlist, Player[client].SteamID, Cvars.ServerID.IntValue);
		DB.Threaded.Query(DBQuery_Callback, query);
		
		XStats_DebugText(false, "Knife Kill\n");
	}
	
	if(grenadekill) {
		Session[client].GrenadeKills++;
		Format(query, sizeof(query), "update `%s` set GrenadeKills = GrenadeKills+1 where SteamID='%s' and ServerID='%i'",
		Global.playerlist, Player[client].SteamID, Cvars.ServerID.IntValue);
		DB.Threaded.Query(DBQuery_Callback, query);
		
		XStats_DebugText(false, "Grenade kill\n");
	}
	
	if(bombkill) {
		Session[client].BombKills++;
		Format(query, sizeof(query), "update `%s` set BombKills = BombKills+1 where SteamID='%s' and ServerID='%i'",
		Global.playerlist, Player[client].SteamID, Cvars.ServerID.IntValue);
		DB.Threaded.Query(DBQuery_Callback, query);
		
		XStats_DebugText(false, "Bomb kill\n");
	}
	
	if(points > 0) {
		AddSessionPoints(client, points);
		Format(query, sizeof(query), "update `%s` set Points = Points+%i where SteamID='%s' and ServerID='%i'",
		Global.playerlist, points, Player[client].SteamID, Cvars.ServerID.IntValue);
		DB.Threaded.Query(DBQuery_Callback, query);
		
		PrepareKillMessage(client, victim, points);
		
		if(!IsFakeClient(victim)) {
			char log[2048];
			int len = 0;
			len += Format(log[len], sizeof(log)-len, "insert into `%s`", Global.kill_log);
			len += Format(log[len], sizeof(log)-len, "(ServerID, Time, Playername, SteamID, Victim_Playername, Victim_SteamID, Assister_Playername, Assister_SteamID, Weapon, Headshot, Noscope, ThruSmoke, BlindedKill)");
			len += Format(log[len], sizeof(log)-len, "values");
			len += Format(log[len], sizeof(log)-len, "('%i', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%i', '%i', '%i', '%i')",
			Cvars.ServerID.IntValue, GetTime(), Player[client].Playername, Player[client].SteamID, Player[victim].Playername, Player[victim].SteamID, Player[assist].Playername, Player[assist].SteamID, weapon, headshot, noscope, thrusmoke, attackerblind);
			DB.Threaded.Query(DBQuery_Kill_Log, log);
			
			XStats_DebugText(false, "Inserting (ServerID, Time, Playername, SteamID, Victim_Playername, Victim_SteamID, Assister_Playername, Assister_SteamID, Weapon, Headshot, Noscope, ThruSmoke, BlindedKill) values ('%i', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%i', '%i', '%i', '%i') into %s",
			Cvars.ServerID.IntValue, GetTime(), Player[client].Playername, Player[client].SteamID, Player[victim].Playername, Player[victim].SteamID, Player[assist].Playername, Player[assist].SteamID, weapon, headshot, noscope, thrusmoke, attackerblind, Global.kill_log);
		}
	}
}

/* Other Deaths */
stock void Other_Death_CSGO(Event event, const char[] event_name, bool dontBroadcast)	{
	int client = GetClientOfUserId(event.GetInt("attacker"));
	if(!Tklib_IsValidClient(client, true))
		return;
	
	int entity = event.GetInt("otherid");
	if(!IsValidEntity(entity))
		return;
	
	char classname[128], weapon[4][128];
	event.GetString("othertype", classname, sizeof(classname));
	event.GetString("weapon", weapon[0], sizeof(weapon[]));
	event.GetString("weapon_itemid", weapon[1], sizeof(weapon[]));
	event.GetString("weapon_fauxitemid", weapon[2], sizeof(weapon[]));
	event.GetString("weapon_originalowner_xuid", weapon[3], sizeof(weapon[]));
	bool headshot = event.GetBool("headshot");
	int penetrated = event.GetInt("penetrated");
	bool noscope = event.GetBool("noscope");
	bool thrusmoke = event.GetBool("thrusmoke");
	bool attackerblind = event.GetBool("attackerblind");
	
	/* Chicken Kill */
	if(StrEqual(classname, "chicken", false))
		Session[client].ChickenKills++;
	
	XStats_DebugText(false, "//===== XStats Debug Log: Other_Death_CSGO =====//");
	XStats_DebugText(false, "Client: %N", client);
	XStats_DebugText(false, "Entity index: %d", entity);
	XStats_DebugText(false, "Entity Classname: \"%s\"\n", classname);
	XStats_DebugText(false, "Weapon: \"%s\"", weapon[0]);
	XStats_DebugText(false, "Weapon ID: \"%s\"", weapon[1]);
	XStats_DebugText(false, "Weapon Faux ID: \"%s\"", weapon[2]);
	XStats_DebugText(false, "Weapon Original Owner xuid: \"%s\"\n", weapon[3]);
	XStats_DebugText(false, "Headshot: %s", Bool[headshot]);
	XStats_DebugText(false, "Penetrated: %i", penetrated);
	XStats_DebugText(false, "Noscope: %s", Bool[noscope]);
	XStats_DebugText(false, "Through Smoke: %s", Bool[thrusmoke]);
	XStats_DebugText(false, "Attacker was blind: %s\n", Bool[attackerblind]);
}