/**
 *	Prepare database.
 */
void PrepareDB_DODS()	{
	char query[8192];
	int len = 0;
	
	len += Format(query[len], sizeof(query)-len, "create table if not exists `playerlist_dods`");
	len += Format(query[len], sizeof(query)-len, "(");
	len += Format(query[len], sizeof(query)-len, "`ServerID`							int(16) not null default '1' comment 'Servers unique ID',");
	len += Format(query[len], sizeof(query)-len, "`Points`								int(32) not null default '1000',");
	len += Format(query[len], sizeof(query)-len, "`LastConnected`						int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`LastConnectedServerID`				int(32) not null default '1' comment 'Last server id player were on.',");
	len += Format(query[len], sizeof(query)-len, "`PlayTime`							int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`Playername`						varchar(64) not null default '',");
	len += Format(query[len], sizeof(query)-len, "`SteamID`							varchar(64) not null default '',");
	len	+= Format(query[len], sizeof(query)-len, "`IPAddress`						varchar(64) not null default '',");
	len += Format(query[len], sizeof(query)-len, "`Kills`								int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`Deaths`								int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`Assists`								int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`Suicides`							int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`DamageDone`							int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`Dominations`							int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`Revenges`							int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`MidAirKills`							int(32) not null default '0',");
	((len += Format(query[len], sizeof(query)-len, "`Kills_weapon_hegrenade`				int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "primary key (`SteamID`)");
	len += Format(query[len], sizeof(query)-len, ")");
	db.Query(DBQuery_DB, query, 1);
	
	//Reset for new query.
	query = NULL_STRING;
	len = 0;
	
	len += Format(query[len], sizeof(query)-len, "create table if not exists `kill_log_dods`");
	len += Format(query[len], sizeof(query)-len, "(");
	len += Format(query[len], sizeof(query)-len, "`ID`									int(32) not null auto_increment,");
	len += Format(query[len], sizeof(query)-len, "`Playername`						varchar(64) not null default '',");
	len += Format(query[len], sizeof(query)-len, "`SteamID`							varchar(64) not null default '',");
	len += Format(query[len], sizeof(query)-len, "`Victim_Playername`				varchar(64) not null default '',");
	len += Format(query[len], sizeof(query)-len, "`Victim_SteamID`					varchar(64) not null default '',");
	len += Format(query[len], sizeof(query)-len, "`Assister_Playername`				varchar(64) not null default '',");
	len += Format(query[len], sizeof(query)-len, "`Assister_SteamID`				varchar(64) not null default '',");
	len += Format(query[len], sizeof(query)-len, "`Timestamp`						timestamp	not null default current_timestamp,");
	len += Format(query[len], sizeof(query)-len, "`Weapon`							varchar(64) not null default '',");
	len += Format(query[len], sizeof(query)-len, "`MidAirKills`							int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "primary key (`ID`)");
	len += Format(query[len], sizeof(query)-len, ")");
	db.Query(DBQuery_DB, query, 2);
	
	query = NULL_STRING;
	len = 0;
	
	len += Format(query[len], sizeof(query)-len, "create table if not exists `maps_log_dods`");
	len += Format(query[len], sizeof(query)-len, "(");
	len += Format(query[len], sizeof(query)-len, "`ServerID`						int(32) not null default '1',");
	len += Format(query[len], sizeof(query)-len, "`MapName`						varchar(64) not null default '',");
	len += Format(query[len], sizeof(query)-len, "`PlayTime`						int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`Kills`							int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`Deaths`							int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`Assists`							int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`Suicides`						int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`Headshots`						int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`Noscopes`						int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`Dominations`						int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`Revenges`						int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "`MidAirKills`						int(32) not null default '0',");
	len += Format(query[len], sizeof(query)-len, "primary key (`ServerID`)");
	len += Format(query[len], sizeof(query)-len, ")");
	db.Query(DBQuery_DB, query, 4);
}

/**
 *	Initialize: Counter-Strike Source.
 */
void PrepareGame_DODS()	{
	//Weapon cvars
	//Weapon[CSS_Weapon_Deagle]	= CreateConVar("xstats_points_weapon_deagle",	"5", "XStats: CSS - Points given when killing with Deagle.", _, true);
	
	/* Events */
	HookEventEx(EVENT_PLAYER_DEATH, Player_Death_DODS, EventHookMode_Pre);
}

stock void Player_Death_DODS(Event event, const char[] event_name, bool dontBroadcast)	{
	if(!IsValidStats())
		return;
	
	char weapon[64];
	event.GetString(EVENT_STR_WEAPON, weapon, sizeof(weapon));
	
	if(StrEqual(weapon, "world")
	|| StrEqual(weapon, "player"))
		return;
	
	int client = GetClientOfUserId(event.GetInt(EVENT_STR_ATTACKER));
	if(!Tklib_IsValidClient(client, true))
		return;
	
	if(IsValidAbuse(client))
		return;

	int victim = GetClientOfUserId(event.GetInt(EVENT_STR_USERID));
	if(!Tklib_IsValidClient(client))
		return;
	
	if(IsFakeClient(victim) && !AllowBots.BoolValue)
		return;
	
	if(IsSamePlayers(client, victim) || IsSameTeam(client, victim))
		return;
	
	Format(weapon, sizeof(weapon), "weapon_%s", weapon);
	int defindex = CSS_GetWeaponDefindex(weapon);
	
	if(Weapon[defindex] == null)	{
		PrintToServer("%s weapon \"%s\" (%i defindex) has invalid cvar handle, stopping event from further errors.", logprefix, weapon, defindex);
		return;
	}
	
	/* Make sure the midair is unchecked for grenade kills. */
	bool grenadekill = (StrEqual(weapon, "weapon_flashbang")
	|| StrEqual(weapon, "weapon_smokegrenade")
	|| StrEqual(weapon, "weapon_hegrenade"));
	
	int assist = GetClientOfUserId(GetLatestAssister(victim, client));
	int points = Weapon[defindex].IntValue;
	bool midair = (!grenadekill && IsClientMidAir(client));
	bool headshot = event.GetBool(EVENT_STR_HEADSHOT);
	bool dominated = event.GetBool(EVENT_STR_DOMINATED);
	bool revenge = event.GetBool(EVENT_STR_REVENGE);
	bool noscope = ((StrEqual(weapon, "weapon_sg550")
	|| StrEqual(weapon, "weapon_g3sg1")
	|| StrEqual(weapon, "weapon_scout")
	|| StrEqual(weapon, "weapon_awp")) && !CS_IsWeaponZoomedIn(GetClientActiveWeapon(client)));
	bool knifekill = (StrContains(weapon, "knife", false) != -1); /* Support custom plugins */
	bool c4kill = (StrContains(weapon, "c4", false) != -1);
	
	if(Debug.BoolValue)	{
		PrintToServer("//===== Player_Death_CSS =====//");
		PrintToServer("client: %i", client);
		PrintToServer("victim: %i", victim);
		PrintToServer("assist: %i", assist);
		PrintToServer("defindex: %i", defindex);
		PrintToServer("weapon: \"%s\"", weapon);
		PrintToServer(" ");
		PrintToServer("midair: %s", Bool[midair]),
		PrintToServer("headshot: %s", Bool[headshot]);
		PrintToServer("dominated: %s", Bool[dominated]);
		PrintToServer("revenge: %s", Bool[revenge]);
		PrintToServer("noscope: %s", Bool[noscope]);
		PrintToServer("knifekill: %s", Bool[knifekill]);
		PrintToServer("grenadekill: %s", Bool[grenadekill]);
		PrintToServer("c4kill: %s", Bool[c4kill]);
		PrintToServer(" ");
		PrintToServer("points: %i", points);
	}
	
	AssistedKill(assist, client, victim);
	VictimDied(victim);
	
	char query[1024];
	
	Session[client].Kills++;
	Format(query, sizeof(query), "update `%s` set Kills = Kills+1 where SteamID='%s'", playerlist, SteamID[client]);
	db.Query(DBQuery_Callback, query);
	
	Format(query, sizeof(query), "update `%s` set Kills_%s = Kills_%s+1 where SteamID='%s'", playerlist, weapon, weapon, SteamID[client]);
	db.Query(DBQuery_Callback, query);
	
	if(headshot)	{
		Session[client].Headshots++;
		Format(query, sizeof(query), "update `%s` set Headshots = Headshots+1 where SteamID='%s'", playerlist, SteamID[client]);
		db.Query(DBQuery_Callback, query);
		
		if(Debug.BoolValue)	{
			PrintToServer(" ");
			PrintToServer("Headshot");
		}
	}
	
	if(dominated)	{
		Session[client].Dominations++;
		Format(query, sizeof(query), "update `%s` set Dominations = Dominations+1 where SteamID='%s'", playerlist, SteamID[client]);
		db.Query(DBQuery_Callback, query);
		
		if(Debug.BoolValue)	{
			PrintToServer(" ");
			PrintToServer("Dominated");
		}
	}
	
	if(revenge)	{
		Session[client].Revenges++;
		Format(query, sizeof(query), "update `%s` set Revenges = Revenges+1 where SteamID='%s'", playerlist, SteamID[client]);
		db.Query(DBQuery_Callback, query);
		
		if(Debug.BoolValue)	{
			PrintToServer(" ");
			PrintToServer("Revenge");
		}
	}
	
	if(noscope)	{
		Session[client].Noscopes++;
		Format(query, sizeof(query), "update `%s` set Noscopes = Noscopes+1 where SteamID='%s'", playerlist, SteamID[client]);
		db.Query(DBQuery_Callback, query);
		
		if(Debug.BoolValue)	{
			PrintToServer(" ");
			PrintToServer("Noscope");
		}
	}
	
	if(midair)	{
		Session[client].MidAirKills++;
		Format(query, sizeof(query), "update `%s` set MidAirKills = MidAirKills+1 where SteamID='%s' and ServerID='%i'",
		playerlist, SteamID[client], ServerID.IntValue);
		db.Query(DBQuery_Callback, query);
		
		if(Debug.BoolValue)	{
			PrintToServer(" ");
			PrintToServer("MidAir Kill");
		}
	}
	
	if(knifekill)	{
		Session[client].KnifeKills++;
		Format(query, sizeof(query), "update `%s` set KnifeKills = KnifeKills+1 where SteamID='%s' and ServerID='%i'",
		playerlist, SteamID[client], ServerID.IntValue);
		db.Query(DBQuery_Callback, query);
		
		if(Debug.BoolValue)	{
			PrintToServer(" ");
			PrintToServer("Knife Kill");
		}
	}
	
	if(grenadekill)	{
		Session[client].GrenadeKills++;
		Format(query, sizeof(query), "update `%s` set GrenadeKills = GrenadeKills+1 where SteamID='%s' and ServerID='%i'",
		playerlist, SteamID[client], ServerID.IntValue);
		db.Query(DBQuery_Callback, query);
	}
	
	if(c4kill)	{
		Session[client].BombKills++;
		Format(query, sizeof(query), "update `%s` set BombKills = BombKills+1 where SteamID='%s' and ServerID='%i'",
		playerlist, SteamID[client], ServerID.IntValue);
		db.Query(DBQuery_Callback, query);
	}
	
	if(points > 0)	{
		AddSessionPoints(client, points);
		Format(query, sizeof(query), "update `%s` set Points = Points+%i", playerlist, points);
		db.Query(DBQuery_Callback, query);
		
		int points_client = GetClientPoints(SteamID[client]);
		
		char buffer[256];
		if(midair && noscope && headshot)
		{
			Format(buffer, sizeof(buffer), "{default}%t {default}%t{default}", Kill_Type[2], Kill_Type[0]);
		}
		else if(midair && noscope)
		{
			Format(buffer, sizeof(buffer), "{default}%t {default}%t{default}", Kill_Type[4], Kill_Type[0]);
		}
		else if(midair && headshot)
		{
			Format(buffer, sizeof(buffer), "{default}%t {default}%t{default}", Kill_Type[3], Kill_Type[0]);
		}
		else if(noscope && headshot)
		{
			Format(buffer, sizeof(buffer), "{default}%t{default}", Kill_Type[2]);
		}
		else if(noscope)
		{
			Format(buffer, sizeof(buffer), "{default}%t{default}", Kill_Type[4]);
		}
		else if(headshot)
		{
			Format(buffer, sizeof(buffer), "{default}%t{default}", Kill_Type[3]);
		}
		else if(midair)
		{
			Format(buffer, sizeof(buffer), "{default}%t{default}", Kill_Type[0]);
		}
		else if(grenadekill)
		{
			Format(buffer, sizeof(buffer), "{default}%t{default}", Kill_Type[11]);
		}
		
		switch(IsValidString(buffer))	{
			case	true:	CPrintToChat(client, "%s %t", Prefix, "Special Kill Event", Name[client], points_client, points, Name[victim], buffer);
			case	false:	CPrintToChat(client, "%s %t", Prefix, "Default Kill Event", Name[client], points_client, points, Name[victim]);
		}
	}
	
	if(!IsFakeClient(victim))	{
		char log[2048];
		int len = 0;
		len += Format(log[len], sizeof(log)-len, "insert into `%s`", kill_log);
		len += Format(log[len], sizeof(log)-len, "(ServerID, Time, Playername, SteamID, Victim_Playername, Victim_SteamID, Assister_Playername, Assister_SteamID, Weapon, Headshot, Noscope)");
		len += Format(log[len], sizeof(log)-len, "values");
		len += Format(log[len], sizeof(log)-len, "('%i', '%i', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%i', '%i')",
		ServerID.IntValue, GetTime(), Playername[client], SteamID[client], Playername[victim], SteamID[victim], Playername[assist], SteamID[assist], weapon, headshot, noscope);
		db.Query(DBQuery_Kill_Log, log);
	}
}