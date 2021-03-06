#include <multicolors>
#include <xstats>
#include <geoip>
#include <updater>
#pragma semicolon 1
#pragma newdecls required
#pragma tabsize 0

/* XStats is a multi-game statistical tracking plugin, influenced by gameMe & HLStatsX. */
#define Version "0.01a_02c"

public Plugin myinfo = {
	name = "XStats - Statistical Multi-Tracker",
	author = _tklib_author,
	description = "XStats - Track kills, maps, kill events, achievements, etc.",
	version = Version,
	url = _tklib_author_url
}

/* Core */
XStatsDatabase DB;
XStatsForwards Forward;
XStatsCvars Cvars;
XStatsGlobal Global;
XStatsConnectSound Sound[2];

/* Session */
XStatsPlayer Player[MAXPLAYERS+1];
XStatsPanel StatsPanel[MAXPLAYERS+1];
XStatsSession Session[MAXPLAYERS+1];
XStatsSession TotalStats[MAXPLAYERS+1];
XStatsKillMsg KillMsg[MAXPLAYERS+1];

/* Includes. */
#include "xstats/cvars.sp" /* Console variables */
#include "xstats/assister.sp" /* Experimental Assister */
#include "xstats/database.sp" /* Database */
#include "xstats/game.sp" /* Game */
#include "xstats/forwards.sp" /* Forwards */
#include "xstats/functions.sp" /* Function callbacks */
#include "xstats/commands.sp" /* Commands */
#include "xstats/natives.sp" /* Natives */
#include "xstats/updater.sp" /* Updater Support */
#include "xstats/events.sp" /* Global Events */
#include "xstats/sounds.sp" /* Player Connect Sound */
//#include	"xstats/achievements.sp" /* Achievements */

public void OnPluginStart()	{
	//Prepare.
	PrepareDatabase(true);
	PrepareForwards(); /* Forwards */
	PrepareCvars(); /* Console variables */
	PrepareGame(); /* Game stats */
	PrepareCommands(); /* Commands */
	PrepareUpdater(); /* Updater support */
	PrepareEvents(); /* Global events */
	PrepareSounds(); /* Connect sounds */
	
	//Translation.
	LoadTranslations("xstats.phrases");
	
	CPrintToChatAll("{orange}XStats version {lightgreen}%s {orange}loaded", Version);
	
	/* Incase the plugin were launched manually or perhaps started (?)*/
	CheckPlayersPluginStart();
}