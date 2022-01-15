/* Initialize global events */
void PrepareEvents()	{
	HookEventEx(EVENT_PLAYER_DEATH, Suicide, EventHookMode_Pre);
	HookEventEx(EVENT_PLAYER_TEAM, UploadStuff);
	HookEventEx(EVENT_PLAYER_CHANGENAME, UploadStuff);
	HookEventEx(EVENT_PLAYER_CONNECT, Connected, EventHookMode_Pre);
	HookEventEx(EVENT_PLAYER_CONNECT_CLIENT, Connected, EventHookMode_Pre);
	HookEventEx(EVENT_PLAYER_DISCONNECT, Disconnected, EventHookMode_Pre);
}

/* Check if it's a suicide */
stock void Suicide(Event event, const char[] event_name, bool dontBroadcast)	{
	if(!IsValidStats())
		return;
	
	int client = GetClientOfUserId(event.GetInt(EVENT_STR_ATTACKER));	
	if(!Tklib_IsValidClient(client, true))
		return;
	
	int victim = GetClientOfUserId(event.GetInt(EVENT_STR_USERID));
	if(!IsSamePlayers(client, victim))
		return;
	
	char query[256];
	Session[client].Suicides++;
	Format(query, sizeof(query), "update `%s` set Suicides = Suicides+1 where SteamID='%s' and ServerID='%i'",
	playerlist, SteamID[client], ServerID.IntValue);
	db.Query(DBQuery_Callback, query);
}


/**
 *	If player changed team or name,
 *	this is a backup for some games using this event.
 */
stock void UploadStuff(Event event, const char[] event_name, bool dontBroadcast)	{
	OnClientSettingsChanged(GetClientOfUserId(event.GetInt(EVENT_STR_USERID)));
}

/**
 *	Acquire the playername and teamcoloured name.
 *	Need this because some games doesn't use "player_changename" event anymore (Could be the fact it's broken perhaps).
 */
public void OnClientSettingsChanged(int client)	{
	if(!PluginActive.BoolValue)
		return;
	
	if(!Tklib_IsValidClient(client, false, false, false))
		return;
	
	/* Too early to gain info, lets add a delay */
	CreateTimer(0.2, Timer_UploadStuff, client);
}

Action Timer_UploadStuff(Handle timer, int client)	{
	if(!Tklib_IsValidClient(client, false, false, false))	{
		KillTimer(timer);
		return	Plugin_Handled;
	}
	
	GetClientTeamString(client, Name[client], sizeof(Name[]));
	GetClientNameEx(client, Playername[client], sizeof(Playername[]));
	//PrintToServer("%N team %d", client, GetClientTeam(client));
	
	return	Plugin_Handled;
}

/**
 *	If connected messages are enabled, make sure to disable the ingame ones
 *	since otherwise we get double join and left messages.
 */
stock void Connected(Event event, const char[] event_name, bool dontBroadcast)	{
	event.BroadcastDisabled = (ConnectMsg.BoolValue && PluginActive.BoolValue);
}

stock void Disconnected(Event event, const char[] event_name, bool dontBroadcast)	{
	event.BroadcastDisabled = (ConnectMsg.BoolValue && PluginActive.BoolValue);	
	
	if(!PluginActive.BoolValue)
		return;
	
	/* Check active players */
	CheckActivePlayers();
	
	int client = GetClientOfUserId(event.GetInt(EVENT_STR_USERID));
	
	char reason[96];
	event.GetString(EVENT_STR_REASON, reason, sizeof(reason));
	if(IsFakeClient(client) && AllowBots.BoolValue)
		CPrintToChatAll("%s BOT %s was removed {grey}(%s)", Prefix, Name[client], reason);
	
	if(!Tklib_IsValidClient(client, true))
		return;
	
	for(int i = 1; i < MaxClients; i++)
		PlayerDamaged[i][client] = 0;
	
	if(ConnectMsg.BoolValue)	{
		int points = GetClientPoints(SteamID[client]);
		int position = GetClientPosition(SteamID[client]);
		CPrintToChatAll("%s %s (Pos #%i, %i points) has disconnected from %s {grey}(%s)", Prefix, Name[client], position, points, Country[client], reason);
		PrintToServer("%s %s (Pos #%i, %i points) has disconnected from %s", LogTag, Playername[client], position, points, Country[client]);
		
		UpdateLastConnectedState(SteamID[client]);
	}
	
	/* Clear the steamid. */
	SteamID[client] = NULL_STRING;
}