MIL_3_Tfile_Hdr_ 150A 140A modeler 9 50CB1F21 50CB3371 5 s-cwc-pc204 bgebreme 0 0 none none 0 0 none 54420CCD 8269 0 0 0 0 0 0 21b7 3                                                                                                                                                                                                                                                                                                                                                                                           ��g�      @  r  v  >  B  N�  vn  vr  {�  {�  |  �a  �e  N�   	   Packet Interarrival Time   �������      seconds   �      constant (1.0)      ����      ����         bernoulli (mean)      bernoulli (mean)      $binomial (num_samples, success_prob)      $binomial (num_samples, success_prob)      chi_square (mean)      chi_square (mean)      constant (mean)      constant (mean)      erlang (scale, shape)      erlang (scale, shape)      exponential (mean)      exponential (mean)      extreme (location, scale)      extreme (location, scale)      fast_normal (mean, variance)      fast_normal (mean, variance)      gamma (scale, shape)      gamma (scale, shape)      geometric (success_prob)      geometric (success_prob)      laplace (mean, scale)      laplace (mean, scale)      logistic (mean, scale)      logistic (mean, scale)      lognormal (mean, variance)      lognormal (mean, variance)      normal (mean, variance)      normal (mean, variance)      pareto (location, shape)      pareto (location, shape)      poisson (mean)      poisson (mean)      power function (shape, scale)      power function (shape, scale)      rayleigh (mean)      rayleigh (mean)      triangular (min, max)      triangular (min, max)      uniform (min, max)      uniform (min, max)      uniform_int (min, max)      uniform_int (min, max)      weibull (shape, scale)      weibull (shape, scale)      scripted (filename)      scripted (filename)         �Specifies the distribution name and arguments to be used for generating random outcomes for times between successive packet generations.       �While selecting a distribution, replace the arguments within parenthesis (e.g., mean, variance, location, etc.) with the desired numerical values.       �For the special "scripted" distribution, specify a filename (*.csv or *.gdf) containing the values required as outcomes. Values will be picked from this file in cyclic order.   oms_dist_configure    oms_dist_conf_dbox_click_handler   $oms_dist_conf_dbox_new_value_handler���������Z             Packet Size   �������      bits   �      constant (1024)      ����      ����         bernoulli (mean)      bernoulli (mean)      $binomial (num_samples, success_prob)      $binomial (num_samples, success_prob)      chi_square (mean)      chi_square (mean)      constant (mean)      constant (mean)      erlang (scale, shape)      erlang (scale, shape)      exponential (mean)      exponential (mean)      extreme (location, scale)      extreme (location, scale)      fast_normal (mean, variance)      fast_normal (mean, variance)      gamma (scale, shape)      gamma (scale, shape)      geometric (success_prob)      geometric (success_prob)      laplace (mean, scale)      laplace (mean, scale)      logistic (mean, scale)      logistic (mean, scale)      lognormal (mean, variance)      lognormal (mean, variance)      normal (mean, variance)      normal (mean, variance)      pareto (location, shape)      pareto (location, shape)      poisson (mean)      poisson (mean)      power function (shape, scale)      power function (shape, scale)      rayleigh (mean)      rayleigh (mean)      triangular (min, max)      triangular (min, max)      uniform (min, max)      uniform (min, max)      uniform_int (min, max)      uniform_int (min, max)      weibull (shape, scale)      weibull (shape, scale)      scripted (filename)      scripted (filename)      None      None         �Specifies the distribution name and arguments to be used for generating random outcomes for the size of generated packets (specified in bits).       �While selecting a distribution, replace the arguments within parenthesis (e.g., mean, variance, location, etc.) with the desired numerical values.       �For the special "scripted" distribution, specify a filename (*.csv or *.gdf) containing the values required as outcomes. Values will be picked from this file in cyclic order.   oms_dist_configure    oms_dist_conf_dbox_click_handler   $oms_dist_conf_dbox_new_value_handler���������Z             
Start Time   �������      secs      @$         10.0              ����              ����         10.0   @$      ����      Infinity   ��      ����         �Specifies the simulation time in seconds when the source will start its traffic generation. Setting the value to "Infinity" will simply disable the source. �Z             	Stop Time   �������      secs      ��         Infinity              ����              ����         Infinity   ��      ����         �Specifies the simulation time in seconds when the source will stop its traffic generation. Setting the value to "Infinity" will make the source generate traffic until the end of the simulation.�Z             Group number    �������    ����          ����          ����          ����         0       ����      1      ����      2      ����      3      ����       �Z             Mac Address Destination    �������    ����      ����   Round Robin          ����          ����         Round Robin   ��������         �Put here the destination MAC address to communicate with. To enter a MAC address, you must assign a MAC address to each nodes. In the case you select round robin, the source will create some packets for each nodes of the same group.�Z             Start time shift   �������      seconds                 None              ����              ����         None           ����         =Value to shift the start time of each source of several nodes�Z             Predefined Profiles    �������    ����       ����   None          ����          ����         None   ��������      ECG       ����      Blood Analysis      ����      System & Control      ����      Status & Alarm      ����         kIf this attribute is defined, it will load automatically the interarrival time and the size of the packets.�Z             Traffic intensity   �������      Erlang               ����              ����              ����           �Z                 	   begsim intrpt         
   ����   
   doc file            	nd_module      endsim intrpt         
   ����   
   failure intrpts            disabled      intrpt interval         ԲI�%��}����      priority              ����      recovery intrpts            disabled      subqueue                     count    ���   
   ����   
      list   	���   
          
      super priority             ����          R   0/* Object ID of the surrounding module.						 */   Objid	\own_id;       =/* Time when this source will start its packet generation	 */   =/* activities.												                                 */   double	\start_time;       =/* Time when this source will stop its packet generation 	 */   =/* activities.												                                 */   double	\stop_time;       8/* PDF used to determine the interarrival times of			 */   8/* generated packets.										                       */   (OmsT_Dist_Handle	\interarrival_dist_ptr;       </* PDF used to determine the sizes of generated packets.	 */   "OmsT_Dist_Handle	\pksize_dist_ptr;       6/* Event handle for the arrival of next packet.				 */   Evhandle	\next_pk_evh;       =/* Time between the generation of the last packet and the	 */   =/* next packet.												                                */   double	\next_intarr_time;       @/* Statistic handle for "Traffic Sent (bits/sec)" statistic.	 */   Stathandle	\bits_sent_hndl;       C/* Statistic handle for "Traffic Sent (packets/sec)" statistic.	 */   Stathandle	\packets_sent_hndl;       </* Statistic handle for "Packet Size (bits)" statistic.		 */   Stathandle	\packet_size_hndl;       >/* Statistic handle for "Packet Interaarival Time (secs)"		 */   >/* statistic.													                                  */   Stathandle	\interarrivals_hndl;       /* round robin parameters */   Wpan_RR_Param	\round_robin;       /* Group number of the wpan */   int	\lr_wpan_group;       >/* Statistic handle for "Traffic Sent (Packets)" statistic. */    Stathandle	\nb_packet_sent_hndl;       B/* Statistic handle for "Traffic Received (Packets)" statistic. */   Stathandle	\nb_packet_rcv_hndl;       C/* Statistic handle for "Traffic Received (bits/sec)" statistic. */   Stathandle	\bits_rcvd_hndl;       /* Name of the name */   char	\lr_wpan_node_name[64];       /* Statistic vector */   Wpan_Ss_Stat	\statistic;       4/* Option: destination MAC address of the packets */    int	\mac_destination_preference;       G/* Table of the destination MAC address in the case of a Round Robin */   int *	\mac_address_table;       //* Remind the last packet ID (customized ID) */   int	\last_wpan_packet_id;       3/* value to shift the start time of each devices */   double	\start_time_shift;       '/* Mac address of the current device */   int	\own_mac_address;       double	\new_variable;       int	\G;       int	\N;       double	\lambda;          */* Variables used in the "init" state.		*/   char		interarrival_str [128];   char		size_str [128];   //int			lr_wpan_profile;       +/* Variables used in state transitions.		*/   int			intrpt_code;   6   /* Include files.					*/   #include	<oms_dist_support.h>   "#include	"lr_wpan_support_15_4a.h"   #include	"lr_wpan_stat_write.h"        /* Special attribute values.		*/    #define		SSC_INFINITE_TIME		-1.0       /* Interrupt code values.			*/   %#define		EMERGENCY_DATA_SSC_START			0   (#define		EMERGENCY_DATA_SSC_GENERATE			1   %#define		EMERGENCY_DATA_SSC_STOP				2       #/* Node configuration constants.	*/   *#define		EMERGENCY_DATA_SSC_STRM_TO_LOW		0       "/* Macro definitions for state		*/   /* transitions.						*/   J#define		START				(INTRPT_SELF && intrpt_code == EMERGENCY_DATA_SSC_START)   K#define		DISABLED			(INTRPT_SELF && intrpt_code == EMERGENCY_DATA_SSC_STOP)   H#define		STOP				(INTRPT_SELF && intrpt_code == EMERGENCY_DATA_SSC_STOP)   U#define		PACKET_GENERATE		(INTRPT_SELF && intrpt_code == EMERGENCY_DATA_SSC_GENERATE)       =#define		ODB_GEN_PRINT_MESSAGE(a)	if (ODB_GENERATOR_ENABLED)\   ,	printf ("%s Generator (%d): %.9f s: %s\n",\   .	lr_wpan_node_name, own_id, op_sim_time (), a)           R=850e3;           -/* structure for the round-robin mechanism */   typedef struct {   :	int index;		// current subqueue index to store the packet   -	int nb_element;	// total number of subqueues   } Wpan_RR_Param;       ,/* strucure for the statistics collection */   typedef struct {   	int emergency_pkt_rcvd;   	int emergency_bits_rcvd;   	int emergency_Pkt_Sent;   	int emergency_Bits_Sent;   	double emergency_pkt_delay;   } Wpan_Ss_Stat;       #int lr_wpan_bulk_emergency_data_id;   5double lr_wpan_emergency_data_start_time_shift = 0.0;       /* Function prototypes.				*/   ,static void		lr_wpan_ss_pkt_generate (void);   $static void		lr_wpan_rr_init (void);   (static void		lr_wpan_ss_pkt_recv (void);   ,static void		lr_wpan_ss_collect_stat (void);     static void   lr_wpan_ss_pkt_generate (void)   {   	Packet*				pkptr;   	double				pksize;   2	int					address; // = mac_destination_preference;       G	/** This function creates a packet based on the packet generation		**/   L	/** specifications of the source model and sends it to the lower layer.	**/   	FIN (ss_packet_generate ());       &	address = mac_destination_preference;   	   	/* debugging */   <	ODB_GEN_PRINT_MESSAGE ("Sent a packet to the lower layer");   	   *	/* Generate a packet size outcome.					*/   =	pksize = (double) ceil (oms_dist_outcome (pksize_dist_ptr));   	   1	/* Create a packet with the specified format.	*/   0	pkptr = op_pk_create_fmt ("lr_wpan_bulk_data");   	   R	//fprintf (fp, "\tSgmt generated:\t\tdata segment generated in the MAC layer\n");   	   &	op_pk_total_size_set (pkptr, pksize);   	   	   	/* complete the address */   	if (address == -1)   		{   1		/* in this case, we must apply a round robin */   4		address = mac_address_table[round_robin.index ++];   .		round_robin.index %= round_robin.nb_element;   		}   	   O	if (op_pk_nfd_set_int32 (pkptr, "Address", address) == OPC_COMPCODE_FAILURE ||   X		op_pk_nfd_set_int32 (pkptr, "Src address", own_mac_address) == OPC_COMPCODE_FAILURE ||   ^		op_pk_nfd_set_int32 (pkptr, "ID", lr_wpan_bulk_emergency_data_id++) == OPC_COMPCODE_FAILURE)   Z		lr_wpan_mac_error ("ss_packet_generate:", "Unable to set the packet address.", OPC_NIL);   	   1	/* Update the packet generation statistics.			*/   (	op_stat_write (packets_sent_hndl, 1.0);   (	op_stat_write (packets_sent_hndl, 0.0);   1	op_stat_write (bits_sent_hndl, (double) pksize);   %	op_stat_write (bits_sent_hndl, 0.0);   3	op_stat_write (packet_size_hndl, (double) pksize);   6	op_stat_write (interarrivals_hndl, next_intarr_time);   	   	/* More statistics */   *	op_stat_write (nb_packet_sent_hndl, 1.0);   	    	statistic.emergency_Pkt_Sent++;   /	statistic.emergency_Bits_Sent += (int) pksize;       9	/* Send the packet via the stream to the lower layer.	*/   4	op_pk_send (pkptr, EMERGENCY_DATA_SSC_STRM_TO_LOW);       	FOUT;   }	           /*    * Function:	lr_wpan_rr_init    */       static void   lr_wpan_rr_init (void)   {   	Wpan_Node_Param * element;   	int list_size;   	int nb_element = 0;   	int i; // loop variable   0	Objid node_objid; // = op_topo_parent (own_id);   	   	   "	FIN (lr_wpan_subq_allocation ());   	   &	node_objid = op_topo_parent (own_id);   			   "	/* read the MAC address fields */   V	op_ima_obj_attr_get (own_id, "Mac Address Destination", &mac_destination_preference);   	   7	op_ima_obj_attr_get (own_id, "Traffic intensity", &G);   	   2	N=(op_topo_object_count(OPC_OBJTYPE_PROC) - 1)/2;   	   	//printf("N= %d\n", N);   	   			   6	/* counting the number of device in the same group */   "	if (wpan_node_param_list == NULL)   I		lr_wpan_mac_error ("lr_wpan_rr_init:", "No device register.", OPC_NIL);   	else   6		list_size = op_prg_list_size (wpan_node_param_list);   	   ;	/* allocate some space memory for the mac address table */   I	mac_address_table = (int *) op_prg_mem_alloc (list_size * sizeof (int));   	   	for (i = 0; i<list_size; i++)   		{   .		/* access the element in the ith position */   G		if ((element = op_prg_list_access (wpan_node_param_list, i)) == NULL)   ]			lr_wpan_mac_error ("lr_wpan_rr_init:", "Cannot access the topology parameters.", OPC_NIL);   		   .		/* counting the element in the same group */   l		if (!strcmp(element->type, "wpan") && element->group == lr_wpan_group && element->parent_id != node_objid)   			{   >			/* complete the table and increase the number of element */   :			mac_address_table[nb_element++] = element->mac_address;   			}   		}   	   !	/* control the number of wpan */   	if (nb_element <= 0)   M		lr_wpan_mac_error ("lr_wpan_rr_init:", "No association is made.", OPC_NIL);   	   %	round_robin.nb_element = nb_element;   	round_robin.index = 0;   	   	/* get our own MAC address */   5	own_mac_address = wpan_get_mac_address (node_objid);   	   	FOUT;   }           /*     * Function:	lr_wpan_ss_pkt_recv    */       static void   lr_wpan_ss_pkt_recv (void)   {   	Packet * pkptr;   	double pksize;   	int id_wpan_packet;   	char name[64];   	int src_mac_address;   	int pos_index;   	Wpan_Node_Param * element;   		   	FIN (lr_wpan_ss_pkt_recv ());   	   	/* debugging */   B	ODB_GEN_PRINT_MESSAGE ("Received a packet from the lower layer");   	   	/* get the packet */   '	pkptr = op_pk_get (op_intrpt_strm ());   	   !	/* get the size of the packet */   '	pksize = op_pk_total_size_get (pkptr);   	   	/* write some statistics */   )	op_stat_write (nb_packet_rcv_hndl, 1.0);   1	op_stat_write (bits_rcvd_hndl, (double) pksize);   %	op_stat_write (bits_rcvd_hndl, 0.0);   	   #    statistic.emergency_pkt_rcvd++;   /	statistic.emergency_bits_rcvd += (int) pksize;   P	statistic.emergency_pkt_delay += op_sim_time () - op_pk_stamp_time_get (pkptr);   		   	/* get the packet ID */   .	op_pk_nfd_get (pkptr, "ID", &id_wpan_packet);   	   !	/* get the source MAC address */   8	op_pk_nfd_get (pkptr, "Src address", &src_mac_address);   	   J	/* search the information about the source module in the list of nodes */   C	if ((pos_index = wpan_search_mac_address (src_mac_address)) == -1)   c		lr_wpan_mac_error ("lr_wpan_ss_pkt_recv:", "Cannot access the source node parameters.", OPC_NIL);   		   	/* get the information */   @	element = op_prg_list_access (wpan_node_param_list, pos_index);   	   !	/* update the share statistic */   	element->share_statistic ++;   	   B	if (last_wpan_packet_id && id_wpan_packet == last_wpan_packet_id)   		{   5		/* get the name of the source node of the packet */   Z		op_ima_obj_attr_get_str (op_topo_parent (op_pk_stamp_mod_get(pkptr)), "name", 64, name);   		   A		printf ("|------------------------------------------------\n");   ]		printf ("| The packet %d was already received by %s\n", id_wpan_packet, lr_wpan_node_name);   T		printf ("| Creation time of the packet: %.12f s\n", op_pk_stamp_time_get (pkptr));   5		printf ("| Current time: %.12f\n", op_sim_time ());   '		printf ("| Source node: %s\n", name);   A		printf ("|------------------------------------------------\n");   		   		/* set a breakpoint */   		op_prg_odb_bkpt ("wpan_id");   		}       	/* update the last packet */   &	last_wpan_packet_id = id_wpan_packet;   	   	/* destroy the packet */   	op_pk_destroy (pkptr);   	   	FOUT;   }           /*   $ * Function:	lr_wpan_ss_collect_stat    *   9 * Description:	collect data at the end of the simulation    *    * No parameter    */       static void   lr_wpan_ss_collect_stat (void)   {   	FILE * fp;   $	char report_name[64], date_str[32];   	Boolean exist;   	double delay = -1.0;   	double emergency_delay = -1.0;   	time_t date;   	int pos_index;   	Wpan_Node_Param * element;   	   	   	FIN (lr_wpan_collect_stat ());   	   	/* get the date of the day */   	time (&date);   )	sprintf (date_str, "%s", ctime (&date));   		   D	/* search the information about this module in the list of nodes */   C	if ((pos_index = wpan_search_mac_address (own_mac_address)) == -1)   c		lr_wpan_mac_error ("lr_wpan_ss_pkt_recv:", "Cannot access the curent node parameters.", OPC_NIL);   		   	/* get the information */   @	element = op_prg_list_access (wpan_node_param_list, pos_index);   	   	/* start printing report */   	/* get the report name */   M	sprintf (report_name, "%s_emergency_data_generator.txt", lr_wpan_node_name);   	   5	fp = lr_wpan_open_report_file (report_name, &exist);       	if (!exist)   		{   N		fprintf (fp, "\t*** Simple source of the node %s ***\n", lr_wpan_node_name);   2		fprintf (fp, "\tCreation date: %s\n", date_str);   �		fprintf (fp, "Total packets sent, Packets well done, Total bits sent, Total packet rcvd, Total bits rcvd, Higher layer delay, Simulation time, last update\n");   		}           	   0	/* compute the delay for the packet received */       "	if (statistic.emergency_pkt_rcvd)   Z		emergency_delay = statistic.emergency_pkt_delay / (double) statistic.emergency_pkt_rcvd;   	   �	fprintf (fp, "%s, %s, %s, %s, %s, %s, %s, %s", integer_to_string(statistic.emergency_Pkt_Sent, strlen ("Total emergency packets sent")),   N		//integer_to_string(element->share_statistic, strlen ("Packets well done")),   Y		integer_to_string(statistic.emergency_Bits_Sent, strlen ("Total emergency bits sent")),   Z		integer_to_string(statistic.emergency_pkt_rcvd, strlen ("Total emergency packet rcvd")),   Y		integer_to_string(statistic.emergency_bits_rcvd, strlen ("Total emergency bits rcvd")),   D		double_to_string (emergency_delay, strlen ("Higher layer delay")),   @		double_to_string (op_sim_time (), strlen ("Simulation time")),   		date_str);   	   	fclose (fp);        	   	FOUT;   }                                        Z            
   Init   
       
   �       /* Debugging */   /ODB_GEN_PRINT_MESSAGE ("Enter the Init state");       D/* At this initial state, we read the values of source attributes	*/   E/* and schedule a selt interrupt that will indicate our start time	*/   &/* for packet generation.											*/       9/* Obtain the object id of the surrounding module.					*/   own_id = op_id_self ();           C/* Read the values of the packet generation parameters, i.e. the	*/   6/* attribute values of the surrounding module.						*/       M// op_ima_obj_attr_get (own_id,				 "Predefined Profiles", &lr_wpan_profile);       // switch (lr_wpan_profile)   	// {   	// case 0:   "		// /* Set the profile for ECG */   3		// sprintf (interarrival_str,	"constant (0.25)");   .		// sprintf (size_str, 			"constant (3984)");   
	// break;   	   	// case 1:   -		// /* Set the profile for Blood Analysis */   2		// sprintf (interarrival_str,	"constant (1.0)");   .		// sprintf (size_str, 			"constant (1456)");   
	// break;   	   	// case 2:   /		// /* Set the profile for System & Control */   2		// sprintf (interarrival_str,	"constant (1.0)");   -		// sprintf (size_str, 			"constant (760)");   
	// break;   	   	// case 3:   -		// /* Set the profile for Status & Alarm */   1		// sprintf (interarrival_str,	"constant (60)");   -		// sprintf (size_str, 			"constant (632)");   
	// break;   	   	// case -1:   M		// /* if the no predefined profile is selected, read the manual settings */   H		// op_ima_obj_attr_get (own_id, "Packet Size",              size_str);   		   !		// //lambda=(G*R)/(N*size_str);   V        // //op_ima_obj_attr_set (own_id, "Packet Interarrival Time", 1/lambda); wrong   		   �	    // op_ima_obj_attr_get (own_id, "Packet Interarrival Time", interarrival_str); printf("Source module: Inter time=%s\n", interarrival_str);   		   
	// break;   	// }   Cop_ima_obj_attr_get (own_id, "Packet Size",              size_str);   		   		//lambda=(G*R)/(N*size_str);   S        //op_ima_obj_attr_set (own_id, "Packet Interarrival Time", 1/lambda); wrong   		   �op_ima_obj_attr_get (own_id, "Packet Interarrival Time", interarrival_str); printf("Source module: Inter time=%s\n", interarrival_str);   		   	       Jop_ima_obj_attr_get (own_id,				 "Start Time",               &start_time);   Iop_ima_obj_attr_get (own_id,				 "Stop Time",                &stop_time);   Eop_ima_obj_attr_get (own_id, 				 "Group number",			 &lr_wpan_group);   Pop_ima_obj_attr_get_str (op_topo_parent(own_id), "name", 64, lr_wpan_node_name);                       C/* to randomize the "start time" of the first packeet generation */   if(start_time < 0.001)   	{   =	start_time = (double) (0.001*((int) op_dist_uniform(100) ));   	}    else //randomize all start times   	{   J	start_time = start_time + (double) (0.001*((int) op_dist_uniform(100) ));   	}           $if (start_time != SSC_INFINITE_TIME)   	{   	/* get the start time shift */   I	op_ima_obj_attr_get_dbl (own_id, "Start time shift", &start_time_shift);   	   !	/* compute the new start time */   7	start_time += lr_wpan_emergency_data_start_time_shift;   =	lr_wpan_emergency_data_start_time_shift += start_time_shift;   	}           %/* initialize the statistic vector */   "statistic.emergency_pkt_rcvd 	= 0;   "statistic.emergency_bits_rcvd	= 0;   !statistic.emergency_Pkt_Sent	= 0;   "statistic.emergency_Bits_Sent	= 0;   $statistic.emergency_pkt_delay	= 0.0;       ?/* Load the PDFs that will be used in computing the packet			*/   1/* interarrival times and packet sizes.								*/   Einterarrival_dist_ptr = oms_dist_load_from_string (interarrival_str);   =pksize_dist_ptr       = oms_dist_load_from_string (size_str);       +/* set a priority to interupt self event */   Fop_intrpt_priority_set (OPC_INTRPT_SELF, EMERGENCY_DATA_SSC_START, 1);           E/* Make sure we have valid start and stop times, i.e. stop time is	*/   +/* not earlier than start time.										*/   Bif ((stop_time <= start_time) && (stop_time != SSC_INFINITE_TIME))   	{   @	/* Stop time is earlier than start time. Disable the source.	*/    	start_time = SSC_INFINITE_TIME;       -	/* Display an appropriate warning.								*/   X	op_prg_odb_print_major ("Warning from simple packet generator model (simple_source):",    W							"Although the generator is not disabled (start time is set to a finite value),",   I							"a stop time that is not later than the start time is specified.",   ,							"Disabling the generator.", OPC_NIL);   	}       E/* Schedule a self interrupt that will indicate our start time for	*/   @/* packet generation activities. If the source is disabled,			*/   C/* schedule it at current time with the appropriate code value.		*/   $if (start_time == SSC_INFINITE_TIME)   	{   C	op_intrpt_schedule_self (op_sim_time (), EMERGENCY_DATA_SSC_STOP);   	}   else   	{   +	/* Schedule the first packet to be sent */   C	op_intrpt_schedule_self (start_time, EMERGENCY_DATA_SSC_GENERATE);   	   $	/* event to go to the idle state */   D	op_intrpt_schedule_self (op_sim_time (), EMERGENCY_DATA_SSC_START);   	       B	/* In this case, also schedule the interrupt when we will stop	*/   @	/* generating packets, unless we are configured to run until	*/   )	/* the end of the simulation.									*/   $	if (stop_time != SSC_INFINITE_TIME)   		{   ?		op_intrpt_schedule_self (stop_time, EMERGENCY_DATA_SSC_STOP);   		}   	}       -/* initialize the ID of the WPAN bulk data */   #lr_wpan_bulk_emergency_data_id = 0;   last_wpan_packet_id = 0;       D/* Register the statistics that will be maintained by this model.	*/   obits_sent_hndl     	= op_stat_reg ("Generator.Traffic Sent (bits/sec)",			OPC_STAT_INDEX_NONE, OPC_STAT_LOCAL);   qpackets_sent_hndl   = op_stat_reg ("Generator.Traffic Sent (packets/sec)",		OPC_STAT_INDEX_NONE, OPC_STAT_LOCAL);   upacket_size_hndl    = op_stat_reg ("Generator.Packet Size (bits)",              OPC_STAT_INDEX_NONE, OPC_STAT_LOCAL);   uinterarrivals_hndl  = op_stat_reg ("Generator.Packet Interarrival Time (secs)", OPC_STAT_INDEX_NONE, OPC_STAT_LOCAL);       /* More statistics */   nnb_packet_sent_hndl	= op_stat_reg ("Generator.Traffic Sent (packets)",			OPC_STAT_INDEX_NONE, OPC_STAT_LOCAL);   pnb_packet_rcv_hndl	= op_stat_reg ("Generator.Traffic Received (packets)",		OPC_STAT_INDEX_NONE, OPC_STAT_LOCAL);   nbits_rcvd_hndl		= op_stat_reg ("Generator.Traffic Received (bits/sec)",		OPC_STAT_INDEX_NONE, OPC_STAT_LOCAL);   
       
   	   /* Debugging */   ,ODB_GEN_PRINT_MESSAGE ("Start the RR Init");       %/* initialize the WPAN round robin */   lr_wpan_rr_init ();       F/* Determine the code of the interrupt, which is used in evaluating	*/   +/* state transition conditions.										*/    intrpt_code = op_intrpt_code ();   
           ����             pr_state        J            
   Idle   
       
       
       
      F/* Determine the code of the interrupt, which is used in evaluating	*/   +/* state transition conditions.										*/   if (INTRPT_SELF)   !	intrpt_code = op_intrpt_code ();   
           ����             pr_state        J  �          
   stop   
       
      /* Debugging */   3ODB_GEN_PRINT_MESSAGE ("Enter the \"Stop\" state");       C/* When we enter into the "stop" state, it is the time for us to	*/   E/* stop generating traffic. We simply cancel the generation of the	*/   F/* next packet and go into a silent mode by not scheduling anything	*/   /* else.															*/   *if (op_ev_valid (next_pk_evh) == OPC_TRUE)   	{   	op_ev_cancel (next_pk_evh);   	}       
                     
   ����   
          pr_state        J   Z          
   Generate   
       
      /* Debugging */   7ODB_GEN_PRINT_MESSAGE ("Enter the \"Generate\" state");        /* generate and send a packet */   lr_wpan_ss_pkt_generate ();   
       
      A/* At the enter execs of the "generate" state we schedule the		*/   */* arrival of the next packet.										*/   <next_intarr_time = oms_dist_outcome (interarrival_dist_ptr);       G/* Make sure that interarrival time is not negative. In that case it */   #/* will be set to 0.												 */   if (next_intarr_time <0)   	{   	next_intarr_time = 0;   	}       lnext_pk_evh      = op_intrpt_schedule_self (op_sim_time () + next_intarr_time, EMERGENCY_DATA_SSC_GENERATE);       
       
   ����   
          pr_state          	              �        v    .               tr_0          
   START   
       
����   
       
@U U����   
          ����                       pr_transition                �  m      m  "  5  �             tr_1          
   DISABLED   
       ����          
   ����   
          ����                       pr_transition              *  ]     I  )  I  �             tr_2          
   STOP   
       ����          
   ����   
          ����                       pr_transition                 �     D   �  D   o          
   tr_3   
       
   PACKET_GENERATE   
       
����   
       
   ����   
          ����                       pr_transition              V   �     S   l  S   �          
   tr_7   
       ����          ����          
@U U����   
          ����                       pr_transition      	        X  �     V  �  V  �  V            
   tr_9   
       ����          ����          
    ����   
          ����                       pr_transition      
          C     W    z  U  �    Z            
   tr_8   
       
   INTRPT_STRM   
       
   lr_wpan_ss_pkt_recv ()   
       
@U U����   
          ����                       pr_transition              �   �     c  	  �    x   �  U   �          
   tr_11   
       
   END_SIM   
       
����   
       
@U U����   
          ����                       pr_transition                 W   �      M   �   1   �   {   �   c   �          
   tr_12   
       
   END_SIM   
       ����          
@U U����   
          ����                       pr_transition                   Packet Interarrival Time (secs)          &The time interval in seconds that is     "separating successive arrivals of    "packets produced by this source. 
   	Generator    bucket/default total/sample mean   linear        ԲI�%��}   Packet Size (bits)          'Size of the packets that are generated    by this source.
   	Generator    bucket/default total/sample mean   linear        ԲI�%��}   Traffic Received (bits/sec)          'Total size of packets in bits that are    received from lower layer by    this source in one second.       	Generator   bucket/default total/max value   linear        ԲI�%��}   Traffic Received (packets)           Total number of packets received   	Generator   bucket/default total/max value   linear        ԲI�%��}   Traffic Sent (bits/sec)          'Total size of packets in bits that are    %generated and sent to lower layer by    this source in one second.
   	Generator   bucket/default total/sum_time   linear        ԲI�%��}   Traffic Sent (packets)          Total number of packets sent   	Generator   bucket/default total/max value   linear        ԲI�%��}   Traffic Sent (packets/sec)          (Total number of packets per second that    &are generated and sent to lower layer    by this source. 
   	Generator   bucket/default total/sum_time   linear        ԲI�%��}          BER   Binomial   oms_dist_support   oms_string_support          lr_wpan_bulk_data   (   General Process Description:        ----------------------------        IThe simple_source process model is implemented to replace "ideal source"    Imodule type, which is not supported starting with OPNET 7.0 release. The    Amodel simply generates packets and forwards them to lower layer.    JInterarrival time, size and format of the packets are determined based on    Hthe model attribute values. Similarly simulation times when the process    Iwill start and stop its packet generation activities are also determined    ,by user specifications via model attributes.               Packet Formats:       ---------------       =Unformatted or formatted packets based on user configuration.                ICI Interfaces:        ---------------       3The simple_source model does not use any ICI model.                       Restrictions:       -------------        K* Connection with the lower layer is hardcoded as "Stream 0" in the header    8block under the constant definition for SSC_STRM_TO_LOW.       =* This model is not implemented to handle any packet arrival.        