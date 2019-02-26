#pragma semicolon 1

#define DEBUG

#define PLUGIN_AUTHOR "thubn"
#define PLUGIN_VERSION "0.00"

#include <sourcemod>
#include <cstrike>
#include <clientprefs>
#include "include/retakes.inc"
#include "retakes/generic.sp"

#pragma newdecls required

public Plugin myinfo = 
{
	name = "Taser allocator",
	author = PLUGIN_AUTHOR,
	description = "",
	version = PLUGIN_VERSION,
	url = ""
};

bool g_TaserChoice[MAXPLAYERS + 1];
Handle g_hTaserChoiceCookie = INVALID_HANDLE;
int players[MAXPLAYERS + 1];


public void OnPluginStart()
{
	g_hTaserChoiceCookie = RegClientCookie("retakes_taserchoice", "taser choice for ct and t", CookieAccess_Private);
}

public void OnClientConnected(int client) {
	g_TaserChoice[client] = false;
}


public Action OnClientSayCommand(int client, const char[] command, const char[] args) {
    char gunsChatCommands[][] = { "/taser", "taser", ".taser", "!taser"};
    for (int i = 0; i < sizeof(gunsChatCommands); i++) {
        if (strcmp(args[0], gunsChatCommands[i], false) == 0) {
        	
        	//set taser pref for client
        	g_TaserChoice[client] = !g_TaserChoice[client];
        	SetCookieBool(client, g_hTaserChoiceCookie, g_TaserChoice[client]);
        	PrintToChat(client, "Taser %i", g_TaserChoice[client]);
            break;
        }
    }

    return Plugin_Continue;
}

public void OnClientCookiesCached(int client) {
    if (IsFakeClient(client))
        return;
        
    g_TaserChoice[client] = GetCookieBool(client, g_hTaserChoiceCookie);
}

public void Retakes_OnWeaponsAllocated(ArrayList tPlayers, ArrayList ctPlayers, Bombsite bombsite){
	for (int i = 0; i < GetArraySize(tPlayers); i++){
			players[i] = GetArrayCell(tPlayers, i);
	}
	for (int i = 0; i < GetArraySize(ctPlayers); i++){
			players[i + GetArraySize(tPlayers)] = GetArrayCell(ctPlayers, i);
	}
	CreateTimer(0.5, Alloc);
}

public Action Alloc(Handle timer){
	
	for (int i = 0; i < MAXPLAYERS + 1; i++){
		int client = players[i];
		if(g_TaserChoice[client]){
				GivePlayerItem(client, "weapon_taser");
		}
	}
}
   