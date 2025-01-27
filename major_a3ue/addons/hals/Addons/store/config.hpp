/*
	Macro: ERROR_WITH_TITLE()

	Parameters:
	0: CLASSNAME - Classname of item
	1: PRICE - Default item price
	2: STOCK - Default item stock
__________________________________________________________________*/
#define ITEM(CLASSNAME, PRICE, STOCK)\
	class CLASSNAME {\
		price = PRICE;\
		stock = STOCK;\
	};

#define MAGAZINE_STOCK 200
#define LAUNCHER_STOCK 15
#define PISTOL_STOCK 50
#define RIFLE_STOCK 20
#define MZ_STOCK 50
#define NN_STOCK 50
#define PN_STOCK 25
#define MISC_STOCK 50

class cfgHALsStore 
{
	class categories 
	{
		#include "config\rksl_attachments.hpp"
		#include "config\tsp_breach.hpp"
		#include "config\tsp_melee.hpp"
		#include "config\majors_misc.hpp"
	};

	class stores 
	{
		class maja3ue_stock_rksl_attachments
		{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"opticsRksl"
			};
		};

		class maja3ue_stock_tsp_breach{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[]={
				"miscBreach"
			};
		};

		class maja3ue_stock_tsp_melee{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[]={
				"miscMelee"
			};
		};

		class maja3ue_stock_majors_misc{
			displayName = $STR_ARMS_DEALER_STORE;
			categories[] = {
				"miscMajor"
			};
		};
	};
};
