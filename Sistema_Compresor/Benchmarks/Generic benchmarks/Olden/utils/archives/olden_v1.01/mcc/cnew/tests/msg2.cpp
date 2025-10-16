# 1 "msg.c" 

























# 1 "./msg.h" 1
























# 1 "./future-cell.h" 1




































typedef unsigned long word_t;


extern void __Steal();

typedef struct fc_impl {
    
    unsigned int       modmask[2];
    struct fc_int *next;
         
         
    word_t  returnPC;
    word_t  fp;
    word_t      dummy;   
} future_cell_impl;

typedef struct fc_int {
    future_cell_impl impl;
    word_t	value;		
  } future_cell_int;

typedef struct fc_pointer {
    future_cell_impl impl;
    word_t	*value;		
  } future_cell_pointer;

typedef struct fc_float {
    future_cell_impl impl;
    float       value;	
  } future_cell_float;

typedef struct fc_double {
    future_cell_impl impl;
    double      value;
  } future_cell_double;

extern future_cell_int *__TopFutureStk();
extern future_cell_int *__PopFutureStk();
extern void __InitRegs();

# 102 "./future-cell.h" 
















# 26 "./msg.h" 2





























# 59 "./msg.h" 


extern void __RpcStub();
extern void __RpcReply();
extern void __RpcStolen();

typedef struct mcb {
  void *address;
  int size;
  short from;
  short bufnum;
  int next;
} MCB;


extern void __MsgDispatch ();
extern void __CallMsgSend (
);
extern void __CallMsgRecv ();
extern void __ReturnMsgRecv ();
extern void __send_msg();
extern void __recv_msg();
extern void __TransmitDone();
extern void __WriteDone();
extern void __SetRpcb();
extern void __clear_msgbuf();
extern void __update_frame();
extern void __setYourRport();
extern void __free_retbuf();
extern void __RpcReceive1();
extern void __RpcReceive2();
extern void __RpcReceive3();
extern void ClearStatsHandler();
extern void __WaitForWrites();

extern int __PanicFlag,NumMisses,NumPageMisses,NumRpcs;
extern int NumMigrations,__SentWrite;
extern unsigned int __ModifiedMask[2];

extern int __done,__value,BufferInUse,__YourRport,__RpcList,__OurRport;

extern MCB __MCBs[512];
extern int __FreeMCB,__MigMCB,__RetMCB,__StopMCB,__MigBufMCB,__FreeRetMsg;
extern int __QueueNotEmpty;
extern int __TransferDone,ThreadCount;
extern int __WritesSent[128],__WritesReceived[128];

typedef struct 
{
  word_t rettype;
  future_cell_int *fcp;
  word_t ret[3];
  int next;
} rpc_reply;
extern rpc_reply __RpcReplyMsgs[200];
extern int __RpcReplies,__FreeRpcReply;
typedef word_t frame_t[4];  
			    









































typedef struct {
  word_t nodeId; 
  word_t returnPC; 
  word_t savedFP; 
  word_t p; 
  word_t retsize; 
  word_t frameSzB; 
  word_t argsize; 
  word_t modmask[2];
} refmsg_t;



typedef struct 
{
  unsigned char rettype;
  unsigned char argc;
  unsigned short from;
} rpcinfo;

typedef struct 
{
  rpcinfo info;
  word_t PC;
  future_cell_int *fcp;
  word_t argv[7];
  int next;
} rpcmsg;

extern rpcmsg __RpcMsgs[300];
extern int __FreeRpcMsg;
extern int __CurRpcMsg;
# 201 "./msg.h" 




































typedef struct {	    
    word_t	fp;	
    word_t	locs[6];	
    word_t	returnVal;	
    word_t	retsize;
    word_t      framesz;
    word_t      argsize;
    word_t      modmask[2];
    word_t      next_retmsg; 
    word_t      flreturn[2];
    word_t      retstruct[60];
  } retmsg_t;

typedef union {
    double align;
    retmsg_t retmsg;
  } aligned_retmsg;
extern aligned_retmsg __retmsgs[300];
# 272 "./msg.h" 






typedef union {
  char	    buf[ 8192];
  refmsg_t    ref;
  retmsg_t    ret;
  double align_me;
} msg_t;

extern msg_t msg;




struct CacheLine {
int values[16];
};

struct entry2 {
  unsigned int tag;
  void *page_ptr;
  unsigned int valid;
  struct entry2 *next;
};



extern struct CacheLine *__InUse;
extern struct entry2 __PageTable[1024];
extern int __SomethingCached;
extern int Attempts;
extern int Misses,ConflictMisses;
extern void req1handler2();
extern void rep1handler2();
extern void rep2handler2();
extern void rep3handler2();
extern void rep4handler2();
extern void writehandler();
extern void writehandlerD();
extern void atomicinchandler();
extern void increplhandler();







# 27 "msg.c" 2
# 1 "./call-stub.h" 1









































































# 84 "./call-stub.h" 











# 28 "msg.c" 2
# 1 "./mem-ref.h" 1








































# 45 "./mem-ref.h" 


extern int __NumNodes,__NDim;
extern unsigned int __MyNodeId;		
extern void __Migrate();
extern void chatting();
extern int SPMDInit();






extern char *mymalloc();


extern void *LOCAL();
extern void *MLOCAL();




# 71 "./mem-ref.h" 







extern void __Suspend ();

# 1 "./future-cell.h" 1

























# 111 "./future-cell.h" 







# 81 "./mem-ref.h" 2




# 91 "./mem-ref.h" 




# 29 "msg.c" 2
# 1 "./future-cell.h" 1

























# 111 "./future-cell.h" 







# 30 "msg.c" 2


# 1 "/usr/include/cm/cmmd.h" 1

















































# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1










































extern int cmmd_safety_level;


















# 81 "/usr/include/cm/cmmd/cmmd_lang_support.h" 





















# 104 "/usr/include/cm/cmmd/cmmd_lang_support.h" 





# 111 "/usr/include/cm/cmmd/cmmd_lang_support.h" 




# 118 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

typedef long int LONGLONG_INT;
typedef long unsigned LONGLONG_UINT;



# 51 "/usr/include/cm/cmmd.h" 2
# 1 "/usr/include/cm/cmmd/cmmd_constants.h" 1






















































# 1 "/usr/include/cm/cmmd/amx_constants.h" 1






































































# 56 "/usr/include/cm/cmmd/cmmd_constants.h" 2






# 1 "/usr/include/cm/cmmd/pr_constants.h" 1


















































# 1 "/usr/include/cm/cmmd/amx_constants.h" 1






































# 70 "/usr/include/cm/cmmd/amx_constants.h" 

# 52 "/usr/include/cm/cmmd/pr_constants.h" 2























# 77 "/usr/include/cm/cmmd/pr_constants.h" 






















































# 63 "/usr/include/cm/cmmd/cmmd_constants.h" 2
































# 1 "/usr/include/cm/cmmd/mp_constants.h" 1



























































# 96 "/usr/include/cm/cmmd/cmmd_constants.h" 2











# 1 "/usr/include/cm/cmmd/cn_constants.h" 1















































































# 108 "/usr/include/cm/cmmd/cmmd_constants.h" 2




















































# 52 "/usr/include/cm/cmmd.h" 2
# 1 "/usr/include/cm/cmmd/cmmd_types.h" 1

























# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 27 "/usr/include/cm/cmmd/cmmd_types.h" 2

typedef int CMMD_mcb;
typedef int CMMD_combiner_t;
typedef int CMMD_scan_direction_t;
typedef int CMMD_segment_mode_t;
typedef int CMMD_scan_inclusion_t;


# 1 "/usr/include/cm/cmmd/amx.h" 1
























# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 26 "/usr/include/cm/cmmd/amx.h" 2
# 1 "/usr/include/cm/cmmd/amx_constants.h" 1






































# 70 "/usr/include/cm/cmmd/amx_constants.h" 

# 27 "/usr/include/cm/cmmd/amx.h" 2
# 1 "/usr/include/cm/cmmd/amx_prototypes.h" 1

















































































































# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 115 "/usr/include/cm/cmmd/amx_prototypes.h" 2

# 118 "/usr/include/cm/cmmd/amx_prototypes.h" 










extern int CMAML_get_ldr
    ();

extern int CMAML_get_rdr
    ();

extern int CMAML_get_ldr_first
    ();

extern int CMAML_get_rdr_first
    ();

extern void CMAML_poll
    ();

extern void CMAML_dispatch
    ();

extern void CMAML_reply_poll
    ();

extern void CMAML_request_poll
    ();

extern void CMAML_wait
    ();

extern void CMAML_poll_wait
    ();

extern void CMAML_poll_while_lt_info
    ();

extern void CMAML_poll_until_gte
    ();

extern void CMAML_poll_while_lt
    ();

extern void CMAML_request
    ();

extern void CMAML_request_tohost
    ();

extern void CMAML_reply
    ();

extern void CMAML_reply_tohost
    ();

extern void CMAML_rpc
    ();

extern void CMAML_rpc_tohost
    ();

extern int CMAML_cp_long_am_nwords
    ();

extern int CMAML_pn_long_am_nwords
    ();




extern void CMAML_rpc_arrpop0
    ();
extern void CMAML_rpc_arrpop1
    ();
extern void CMAML_rpc_arrpop2
    ();

extern void CMAML_rpc_arrpop0_tohost
    ();
extern void CMAML_rpc_arrpop1_tohost
    ();
extern void CMAML_rpc_arrpop2_tohost
    ();

extern void CMAML_rpc_va
    ();
extern void CMAML_rpc_va_tohost
    ();

extern void CMAML_rpc_vapop
    ();
extern void CMAML_rpc_vapop_tohost
    ();






extern void CMAML_reply_arrpop0
    ();
extern void CMAML_reply_arrpop1
    ();
extern void CMAML_reply_arrpop2
    ();

extern void CMAML_reply_arrpop0_tohost
    ();
extern void CMAML_reply_arrpop1_tohost
    ();
extern void CMAML_reply_arrpop2_tohost
    ();

extern void CMAML_reply_va
    ();
extern void CMAML_reply_va_tohost
    ();

extern void CMAML_reply_vapop
    ();
extern void CMAML_reply_vapop_tohost
    ();






extern void CMAML_request_arrpop0
    ();
extern void CMAML_request_arrpop1
    ();
extern void CMAML_request_arrpop2
    ();

extern void CMAML_request_arrpop0_tohost
    ();
extern void CMAML_request_arrpop1_tohost
    ();
extern void CMAML_request_arrpop2_tohost
    ();

extern void CMAML_request_va
    ();
extern void CMAML_request_va_tohost
    ();

extern void CMAML_request_vapop
    ();
extern void CMAML_request_vapop_tohost
    ();



extern int CMAML_pop
    ();
extern int CMAML_popd
    ();



extern void CMAML_popn
    ();
extern void CMAML_popnd
    ();



extern int CMAML_poptofirst
    ();
extern int CMAML_poptofirstd
    ();

extern char *CMAML_poptofirst_ra
    ();
extern double *CMAML_poptofirst_ra_d
    ();

extern int CMAML_poptofirst_rla
    ();
extern int CMAML_poptofirst_rla_d
    ();


extern int CMAML_n_to_pop
    ();

extern void CMAML_print_profile_counters ();

extern void CMAML_save_ctrlregs
    ();

extern void CMAML_restore_ctrlregs
    ();

extern void CMAML_save_dataregs
    ();

extern void CMAML_restore_dataregs
    ();

extern void CMAML_save_fpuregs
    ();

extern void CMAML_restore_fpuregs
    ();

extern int CMAML_get_byte_limit
    ();

extern int *CMAML_get_NodeHandlerList
    ();

extern int *CMAML_get_HostHandlerList
    ();

extern int CMAML_get_node_hlist_size
  ();

extern int CMAML_get_host_hlist_size
  ();

extern void CMAML_set_node_hlist
    ();

extern void CMAML_set_host_hlist
    ();

extern void CMAML_resize_partition
    ();

extern void CMAML_init
    ();

extern void CMAML_detailed_init
    ();

extern int CMAML_enable_interrupts
    ();

extern int CMAML_disable_interrupts
    ();

extern int CMAML_interrupt_status
    ();

extern int CMAML_inside_interrupt_handler
    ();

extern int CMAML_set_ldr_handler
    ();

extern int CMAML_set_rdr_handler
    ();

extern int CMAML_allocate_tag
    ();

extern int CMAML_allocate_this_tag
    ();

extern int CMAML_free_tag
    ();

extern int CMAML_allocate_rport
    ();

extern int cmaml_allocate_system_rport
    ();

extern int cmaml_system_rport
    ();

extern int CMAML_allocate_this_rport
    ();

extern int CMAML_free_rport
    ();

extern int cmaml_free_system_rport
    ();

extern int CMAML_number_of_free_rports
    ();

extern int CMAML_number_of_rports
    ();

extern int CMAML_number_of_free_sports
    ();

extern int CMAML_number_of_sports
    ();

extern int CMAML_allocate_sport
    ();

extern int cmaml_allocate_system_sport
    ();

extern int CMAML_allocate_this_sport
    ();

extern int CMAML_free_sport
    ();

extern int cmaml_free_system_sport
    ();

extern void *CMAML_get_rport_addr
    ();

extern void *CMAML_get_rport_addri
    ();

extern int CMAML_get_rport_byte_counter
    ();

extern int CMAML_get_rport_total_nbytes
    ();

extern int CMAML_get_rport_esize
    ();

extern int CMAML_get_rport_estride
    ();

extern int CMAML_get_rport_ecount
    ();

extern int CMAML_get_rport_allocated
    ();

extern void (*CMAML_get_rport_handler
    ())();

extern void *CMAML_get_rport_handler_arg2
    ();

extern void CMAML_set_rport_addr
    ();

extern void CMAML_set_rport_byte_counter
    ();

extern void CMAML_set_rport_total_nbytes
    ();

extern void CMAML_set_rport_esize
    ();

extern void CMAML_set_rport_estride
    ();

extern void CMAML_set_rport_ecount
    ();

extern void CMAML_set_rport_allocated
    ();

extern void CMAML_set_rport_handler
    ();

extern void CMAML_set_rport_handler_arg2
    ();

extern int CMAML_get_sport_recv_pn
    ();

extern void *CMAML_get_sport_addr
    ();

extern void *CMAML_get_sport_addri
    ();

extern void *CMAML_get_sport_descriptor
    ();

extern int CMAML_get_sport_type
    ();

extern int CMAML_get_sport_esize
    ();

extern int CMAML_get_sport_estride
    ();

extern int CMAML_get_sport_ecount
    ();

extern void *CMAML_get_sport_recv_addr
    ();

extern void *CMAML_get_sport_recv_addri
    ();

extern int CMAML_get_sport_recv_esize
    ();

extern int CMAML_get_sport_recv_estride
    ();

extern int CMAML_get_sport_recv_ecount
    ();

extern int CMAML_get_sport_recv_portno
    ();

extern int CMAML_get_sport_allocated
    ();

extern int CMAML_get_sport_max_bytes
    ();

extern void (*CMAML_get_sport_handler
    ())();

extern void *CMAML_get_sport_handler_arg2
    ();

extern void CMAML_set_sport_recv_pn
    ();

extern void CMAML_set_sport_addr
    ();

extern void CMAML_set_sport_descriptor
    ();

extern void CMAML_set_sport_type
    ();

extern void CMAML_set_sport_esize
    ();

extern void CMAML_set_sport_estride
    ();

extern void CMAML_set_sport_ecount
    ();

extern void CMAML_set_sport_recv_addr
    ();

extern void CMAML_set_sport_recv_esize
    ();

extern void CMAML_set_sport_recv_estride
    ();

extern void CMAML_set_sport_recv_ecount
    ();

extern void CMAML_set_sport_recv_portno
    ();

extern void CMAML_set_sport_allocated
    ();

extern void CMAML_set_sport_max_bytes
    ();

extern void CMAML_set_sport_handler
    ();

extern void CMAML_set_sport_handler_arg2
    ();

extern void CMAML_save_dp_state
    ();

extern void CMAML_restore_dp_state
    ();

extern int CMAML_scopy 
# 605 "/usr/include/cm/cmmd/amx_prototypes.h" 
();

extern int CMAML_pcopy 
# 614 "/usr/include/cm/cmmd/amx_prototypes.h" 
();

extern char *CMAML_malloc
    ();

extern int CMAML_free
    ();







extern char *CMAML_processor_str
    ();
extern char *CMAML_pn__processor_str
    ();
extern char *CMAML_cp_processor_str
    ();

extern char *CMAML_ni_str
    ();
extern char *CMAML_pn_ni_str
    ();
extern char *CMAML_cp_ni_str
    ();

extern char *CMAML_intf_str
    ();
extern char *CMAML_pn_intf_str
    ();
extern char *CMAML_cp_intf_str
    ();

extern int CMAML_pn_cp_length
    ();
extern int CMAML_pn_cp_length
    ();








# 28 "/usr/include/cm/cmmd/amx.h" 2


# 36 "/usr/include/cm/cmmd/cmmd_types.h" 2
# 1 "/usr/include/cm/cmmd/pr.h" 1




























# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 30 "/usr/include/cm/cmmd/pr.h" 2
# 1 "/usr/include/cm/cmmd/pr_types.h" 1
























typedef void (*cmpr_handler_t)();










typedef int (*CMPR_matching_function_t) 
# 41 "/usr/include/cm/cmmd/pr_types.h" 
();

typedef int (*CMPR_fortran_matching_function_t) 
# 48 "/usr/include/cm/cmmd/pr_types.h" 
();


# 31 "/usr/include/cm/cmmd/pr.h" 2
# 1 "/usr/include/cm/cmmd/pr_constants.h" 1















































# 130 "/usr/include/cm/cmmd/pr_constants.h" 

# 32 "/usr/include/cm/cmmd/pr.h" 2
# 1 "/usr/include/cm/cmmd/pr_prototypes.h" 1
















































































# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 82 "/usr/include/cm/cmmd/pr_prototypes.h" 2

# 86 "/usr/include/cm/cmmd/pr_prototypes.h" 














extern cmpr_handler_t *CMPR_c_get_NodeHandlerList
    ();

extern cmpr_handler_t *CMPR_c_get_HostHandlerList
    ();

extern cmpr_handler_t *CMPR_m_get_NodeHandlerList
    ();

extern cmpr_handler_t *CMPR_m_get_HostHandlerList
    ();

extern int CMPR_m_get_node_hlist_size
  ();

extern int CMPR_m_get_host_hlist_size
  ();

extern int CMPR_c_get_node_hlist_size
  ();

extern int CMPR_c_get_host_hlist_size
  ();

extern int CMPR_c_p_open_send_channel
    
# 133 "/usr/include/cm/cmmd/pr_prototypes.h" 
();

extern int CMPR_c_s_open_send_channel
    
# 143 "/usr/include/cm/cmmd/pr_prototypes.h" 
();

extern int CMPR_c_close_send_channel
    ();

extern int CMPR_c_write_channel
    ();

extern int CMPR_c_p_open_receive_channel
    
# 160 "/usr/include/cm/cmmd/pr_prototypes.h" 
();

extern int CMPR_c_s_open_receive_channel
    
# 170 "/usr/include/cm/cmmd/pr_prototypes.h" 
();

extern int CMPR_c_reset_channel
    ();

extern int CMPR_c_close_receive_channel
    ();

extern int CMPR_c_channel_readable_p
    ();

extern int CMPR_c_channel_sendable_p
    ();

extern int CMPR_c_all_send_channels_free
    ();

extern int CMPR_c_all_recv_channels_free
    ();





extern void CMPR_resize_partition
    ();

extern void CMPR_init
    ();

extern int CMPR_get_mcb_state
    ();

extern int CMPR_get_recv_channel_state
    ();

extern int CMPR_get_send_channel_state
    ();

extern int CMPR_get_mcb_dest
    ();

extern int CMPR_send_get_mcb_dest
    ();

extern int CMPR_send_get_channel_dest
    ();

extern int CMPR_get_mcb_length
    ();

extern int CMPR_send_get_mcb_length
    ();

extern int CMPR_send_get_cmessage_length
    ();

extern void *CMPR_get_mcb_buffer
    ();

extern void *CMPR_send_get_mcb_send_buffer
    ();

extern void *CMPR_send_get_send_buffer
    ();

extern int CMPR_recv_get_mcb_length
    ();

extern int CMPR_recv_get_cmessage_length
    ();

extern void *CMPR_recv_get_recv_buffer
    ();

extern cmpr_handler_t CMPR_get_mcb_user_handler
    ();

extern cmpr_handler_t CMPR_send_get_mcb_user_handler
    ();

extern cmpr_handler_t CMPR_send_get_user_handler
    ();

extern int CMPR_get_mcb_user_tag
    ();

extern int CMPR_send_get_mcb_user_tag
    ();

extern int CMPR_send_get_channel_user_tag
    ();

extern int CMPR_get_mcb_user_handler_arg
    ();

extern int CMPR_send_get_mcb_user_handler_arg
    ();

extern int CMPR_send_get_user_handler_arg
    ();

extern int CMPR_mcb_ptp_p
    ();

extern int CMPR_send_ptp_p
    ();

extern int CMPR_recv_get_mcb_user_tag
    ();

extern int CMPR_recv_get_channel_user_tag
    ();

extern int CMPR_recv_get_mcb_source
    ();

extern int CMPR_recv_get_channel_source
    ();

extern cmpr_handler_t CMPR_get_mcb_user_handler
    ();

extern cmpr_handler_t CMPR_recv_get_mcb_user_handler
    ();

extern cmpr_handler_t CMPR_recv_get_user_handler
    ();

extern int CMPR_get_mcb_user_handler_arg
    ();

extern int CMPR_recv_get_mcb_user_handler_arg
    ();

extern int CMPR_recv_get_user_handler_arg
    ();

extern int CMPR_recv_ptp_p
    ();

extern void CMPR_mcb_set_autoclose
    ();

extern void CMPR_send_channel_set_autoclose
    ();

extern void CMPR_recv_channel_set_autoclose
    ();

extern int CMPR_send_channels_available();

extern int CMPR_recv_channels_available();

extern  char *CMPR_error_string
    ();






extern int CMPR_m_s_open_for_receive
    
# 341 "/usr/include/cm/cmmd/pr_prototypes.h" 
();

extern int CMPR_m_p_open_for_receive
    
# 353 "/usr/include/cm/cmmd/pr_prototypes.h" 
();

extern int CMPR_m_receive_pending
    
# 358 "/usr/include/cm/cmmd/pr_prototypes.h" 
();

extern int CMPR_m_free_mcb
    ();

extern int CMPR_m_free_send_mcb
    ();

extern int CMPR_m_free_recv_mcb
    ();

extern int CMPR_m_s_open_for_send
    
# 378 "/usr/include/cm/cmmd/pr_prototypes.h" 
();

extern int CMPR_m_p_open_for_send
    
# 390 "/usr/include/cm/cmmd/pr_prototypes.h" 
();

extern int CMPR_mcb_done_p
    ();

extern int CMPR_m_send_done_p
    ();

extern int CMPR_m_recv_done_p
    ();

extern int CMPR_m_all_sends_done_p
    ();

extern int CMPR_m_all_recvs_done_p
    ();





# 33 "/usr/include/cm/cmmd/pr.h" 2



















# 37 "/usr/include/cm/cmmd/cmmd_types.h" 2
# 1 "/usr/include/cm/cmmd/mp.h" 1
















































# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 50 "/usr/include/cm/cmmd/mp.h" 2
# 1 "/usr/include/cm/cmmd/pr.h" 1

























# 51 "/usr/include/cm/cmmd/pr.h" 

# 51 "/usr/include/cm/cmmd/mp.h" 2
# 1 "/usr/include/cm/cmmd/mp_constants.h" 1


































# 59 "/usr/include/cm/cmmd/mp_constants.h" 

# 52 "/usr/include/cm/cmmd/mp.h" 2
# 1 "/usr/include/cm/cmmd/mp_types.h" 1


































typedef int CMMP_mcb;


# 53 "/usr/include/cm/cmmd/mp.h" 2
# 1 "/usr/include/cm/cmmd/mp_prototypes.h" 1






































































































# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 104 "/usr/include/cm/cmmd/mp_prototypes.h" 2

# 108 "/usr/include/cm/cmmd/mp_prototypes.h" 











extern void CMMP_poll ();
extern void CMMP_init ();
extern void CMMP_init_detailed ();
extern void CMMP_resize_partition ();





extern int CMMP_send_block 
# 134 "/usr/include/cm/cmmd/mp_prototypes.h" 
();
extern int CMMP_sys_send_block 
# 141 "/usr/include/cm/cmmd/mp_prototypes.h" 
();
extern int CMMP_send_noblock 
# 148 "/usr/include/cm/cmmd/mp_prototypes.h" 
();
extern CMMP_mcb CMMP_send_async 
# 157 "/usr/include/cm/cmmd/mp_prototypes.h" 
();
extern int CMMP_receive_block 
# 164 "/usr/include/cm/cmmd/mp_prototypes.h" 
();
extern int CMMP_sys_receive_block 
# 171 "/usr/include/cm/cmmd/mp_prototypes.h" 
();
extern CMMP_mcb CMMP_receive_async 
# 180 "/usr/include/cm/cmmd/mp_prototypes.h" 
();
extern int CMMP_send_and_receive 
# 193 "/usr/include/cm/cmmd/mp_prototypes.h" 
();




extern int CMMP_send_channel_status
    ();
extern int CMMP_receive_channel_status
    ();
extern int CMMP_open_send_channel
    
# 209 "/usr/include/cm/cmmd/mp_prototypes.h" 
();
extern int CMMP_open_receive_channel
    
# 217 "/usr/include/cm/cmmd/mp_prototypes.h" 
();
extern int CMMP_close_send_channel
    ();
extern int CMMP_close_receive_channel
    ();
extern int CMMP_reset_channel
    ();
extern int CMMP_write_channel
    ();
extern int CMMP_is_channel_readable
    ();
extern int CMMP_is_channel_writable
    ();
extern int CMMP_all_channels_free
    ();
extern void CMMP_all_channels_free_wait
    ();





extern void CMMP_free_mcb ();
extern int CMMP_msg_done ();
extern void CMMP_msg_wait ();
extern int CMMP_all_sends_done ();
extern int CMMP_all_receives_done ();
extern int CMMP_all_msgs_done ();
extern void CMMP_all_msgs_wait ();
extern int CMMP_msg_pending ();
extern CMMP_mcb CMMP_mcb_pending ();
extern int CMMP_bytes_received ();
extern int CMMP_sys_bytes_received ();
extern int CMMP_bytes_sent ();
extern int CMMP_sys_bytes_sent ();
extern int CMMP_msg_sender ();
extern int CMMP_sys_msg_sender ();
extern int CMMP_msg_tag ();
extern int CMMP_sys_msg_tag ();
extern int CMMP_mcb_node ();
extern int CMMP_mcb_source ();
extern int CMMP_mcb_dest ();
extern int CMMP_mcb_tag ();
extern int CMMP_mcb_len ();
extern int CMMP_mcb_bytes ();
extern int CMMP_available_sends();
extern int CMMP_available_receives();
extern  char *CMMP_error_string ();
extern void *CMMP_mcb_buffer ();
extern int CMMP_mcb_status ();





# 54 "/usr/include/cm/cmmd/mp.h" 2
# 1 "/usr/include/cmsys/dp.h" 1


#pragma ident "$Id: dp.h,v 1.43 1993/08/19 17:40:27 taylor Exp $ Copyright (c) Thinking Machines Corp. 1991-1992"

























































































































































































































































































































































































































			

			

			

			


















































































































































































































































































































































































































































































































































































































































































































































                           



























































































































































































# 55 "/usr/include/cm/cmmd/mp.h" 2



# 38 "/usr/include/cm/cmmd/cmmd_types.h" 2
# 1 "/usr/include/cm/cmmd/cn.h" 1





















# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 23 "/usr/include/cm/cmmd/cn.h" 2

# 1 "/usr/include/cm/cmmd/cn_types.h" 1





















typedef int CMCN_combiner_t;
typedef int CMCN_scan_direction_t;
typedef int CMCN_segment_mode_t;
typedef int CMCN_scan_inclusion_t;


# 25 "/usr/include/cm/cmmd/cn.h" 2
# 1 "/usr/include/cm/cmmd/cn_constants.h" 1
























# 79 "/usr/include/cm/cmmd/cn_constants.h" 

# 26 "/usr/include/cm/cmmd/cn.h" 2
# 1 "/usr/include/cm/cmmd/cn_prototypes.h" 1













































# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 47 "/usr/include/cm/cmmd/cn_prototypes.h" 2

# 50 "/usr/include/cm/cmmd/cn_prototypes.h" 






extern void CMCN_init ();

extern void CMCN_resize_partition
    ();

extern int CMCN_reset_partition_size
  ();

extern void CMCN_sync_host_with_nodes
    ();

extern void CMCN_bc_from_host
    ();

extern void CMCN_distrib_to_nodes
    ();

extern void CMCN_gather_from_nodes
    ();

extern int CMCN_reduce_from_nodes_int
    ();

extern unsigned CMCN_reduce_from_nodes_uint
    ();

extern LONGLONG_INT CMCN_reduce_from_nodes_lint
    ();

extern LONGLONG_UINT CMCN_reduce_from_nodes_luint
    ();

extern double CMCN_reduce_from_nodes_float
    ();

extern double CMCN_reduce_from_nodes_double
    ();

extern void CMCN_reduce_from_nodes_v
    
# 96 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern void CMCN_bc_from_host_v
    ();

extern void CMCN_sync_with_host
    ();

extern void CMCN_receive_bc_from_host
    ();

extern void CMCN_receive_bc_from_node
    ();

extern void CMCN_receive_element_from_host
    ();

extern void CMCN_concat_elements_to_host
    ();

extern void CMCN_concat_with_nodes
    ();

extern int CMCN_reduce_to_host_int
    ();

extern int CMCN_scan_done ();
extern int CMCN_reduce_done ();

extern unsigned CMCN_reduce_to_host_uint
    ();

extern LONGLONG_INT CMCN_reduce_to_host_lint
    ();

extern LONGLONG_UINT CMCN_reduce_to_host_luint
    ();

extern double CMCN_reduce_to_host_float
    ();

extern double CMCN_reduce_to_host_double
    ();

extern void CMCN_bc_to_nodes
    ();

extern unsigned CMCN_scan_uint
    
# 145 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern LONGLONG_INT CMCN_scan_lint
    
# 149 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern LONGLONG_UINT CMCN_scan_luint
    
# 153 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern int CMCN_reduce_int
    ();

extern LONGLONG_INT CMCN_reduce_lint
    ();

extern LONGLONG_UINT CMCN_reduce_luint
    ();

extern void CMCN_reduce_int_start
    ();

extern int CMCN_reduce_int_finish
    ();

extern void CMCN_reduce_lint_start
    ();

extern LONGLONG_INT CMCN_reduce_lint_finish
    ();

extern unsigned CMCN_reduce_uint
    ();

extern void CMCN_reduce_luint_start
    ();

extern LONGLONG_UINT CMCN_reduce_luint_finish
    ();

extern void CMCN_reduce_uint_start
    ();

extern unsigned CMCN_reduce_uint_finish
    ();

extern double CMCN_reduce_double
    ();

extern void CMCN_reduce_double_start
    ();

extern double CMCN_reduce_double_finish
    ();

extern unsigned CMCN_segmented_reduce_uint
    
# 203 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern void CMCN_scan_double_v
    
# 208 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern void cmcn_scan_float_v
    
# 213 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern double CMCN_reduce_float
    ();

extern void CMCN_reduce_float_start
    ();

extern double CMCN_reduce_float_finish
    ();

extern void CMCN_scan_int_start
    
# 228 "/usr/include/cm/cmmd/cn_prototypes.h" 
();
extern int CMCN_scan_int_finish
    
# 233 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern void CMCN_scan_lint_start
    
# 239 "/usr/include/cm/cmmd/cn_prototypes.h" 
();
extern LONGLONG_INT CMCN_scan_lint_finish
    
# 244 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern void CMCN_scan_uint_start
    
# 250 "/usr/include/cm/cmmd/cn_prototypes.h" 
();
extern unsigned CMCN_scan_uint_finish
    
# 255 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern void CMCN_scan_luint_start
    
# 261 "/usr/include/cm/cmmd/cn_prototypes.h" 
();
extern LONGLONG_UINT CMCN_scan_luint_finish
    
# 266 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern double CMCN_scan_double
    
# 270 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern void CMCN_scan_double_start
    
# 274 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern double CMCN_scan_double_finish
    
# 278 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern double CMCN_scan_float
    
# 282 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern void CMCN_scan_float_start
    
# 286 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern double CMCN_scan_float_finish
    
# 290 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern void CMCN_reduce_v
    ();

extern void CMCN_reduce_to_host_v
    
# 297 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern void CMCN_scan_v
    
# 302 "/usr/include/cm/cmmd/cn_prototypes.h" 
();

extern void CMCN_receive_bc_from_host_v
    ();

extern void CMCN_sync_with_nodes
    ();




# 27 "/usr/include/cm/cmmd/cn.h" 2


# 39 "/usr/include/cm/cmmd/cmmd_types.h" 2
# 1 "/usr/include/cm/cmmd/util.h" 1

















# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 19 "/usr/include/cm/cmmd/util.h" 2

# 1 "/usr/include/cm/cmmd/util_prototypes.h" 1




























































# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 62 "/usr/include/cm/cmmd/util_prototypes.h" 2













extern int cmaml_vu_p;
extern int cmaml_sparc_p;
extern int cmaml_cypress_p;
extern int cmaml_viking_p;
extern int cmaml_18_word_ni_p;
extern int cmaml_5_word_ni_p;
extern int cmaml_mbus_ni_p;
extern int cmaml_sbus_ni_p;





















extern void CMUTIL_set_errno
  ();

extern int CMUTIL_get_errno
  ();

extern void CMUTIL_initialize_dpctrlregs
  ();

extern void CMUTIL_resize_partition
  ();

extern int CMUTIL_self_address
    ();

extern int CMUTIL_partition_size
    ();

extern int CMUTIL_host_node
    ();

extern int CMUTIL_get_dpspill_area 
    ();

extern void CMUTIL_allocate_dp_context_area 
    ();



extern int CMUTIL_error_set_jmpret
     ();
extern void CMUTIL_error_unsetjmp
    ();
extern int CMUTIL_error_is_jmp_enabled
    ();
extern int CMUTIL_error_jmpret
    ();
extern void CMUTIL_error_longjmp
    ();
extern char *CMUTIL_error_message
    ();

extern void CMUTIL_set_error_handler 
    ();

extern void CMUTIL_error 
    ();

extern void CMUTIL_internal_error 
    ();

extern void CMUTIL_warning 
    ();

extern int CMUTIL_node_timer_start 
    ();

extern int CMUTIL_node_timer_stop 
    ();

extern int CMUTIL_node_timer_clear 
    ();

extern double CMUTIL_node_timer_elapsed 
    ();

extern double CMUTIL_node_timer_busy 
    ();

extern double CMUTIL_node_timer_idle 
    ();

extern void CMUTIL_enable_safety ();
extern void CMUTIL_disable_safety ();




# 21 "/usr/include/cm/cmmd/util.h" 2


# 40 "/usr/include/cm/cmmd/cmmd_types.h" 2

typedef CMPR_matching_function_t CMMD_matching_function_t;
typedef CMPR_fortran_matching_function_t CMMD_fortran_matching_function_t;



# 53 "/usr/include/cm/cmmd.h" 2
# 1 "/usr/include/cm/cmmd/cmmd_master.h" 1








































































































































# 151 "/usr/include/cm/cmmd/cmmd_master.h" 


# 155 "/usr/include/cm/cmmd/cmmd_master.h" 


# 159 "/usr/include/cm/cmmd/cmmd_master.h" 


# 163 "/usr/include/cm/cmmd/cmmd_master.h" 








extern int CMMD_enable_interrupts
    ();

extern int CMMD_disable_interrupts		
    ();

extern int CMMD_interrupt_status
    ();

extern int CMMD_inside_interrupt_handler
    ();





extern void CMMD_free_mcb
    ();

extern int CMMD_msg_done
    ();

extern void CMMD_msg_wait
    ();

extern int CMMD_all_sends_done
    ();

extern int CMMD_all_receives_done
    ();

extern int CMMD_all_msgs_done
    ();

extern void CMMD_all_msgs_wait
    ();

extern int CMMD_msg_pending
    ();

extern CMMD_mcb CMMD_mcb_pending
    ();

extern int CMMD_mcb_len
    ();

extern int CMMD_mcb_bytes
    ();

extern int CMMD_mcb_tag
    ();

extern int CMMD_mcb_node
    ();

extern int CMMD_mcb_source
    ();

extern int CMMD_mcb_dest
    ();

extern void *CMMD_mcb_buffer
    ();

extern int CMMD_available_sends();

extern int CMMD_available_receives();

extern  char *CMMD_error_string
    ();

extern void CMMD_poll
    ();

extern  char *CMMD_version();





extern int CMMD_bytes_sent
    ();

extern int CMMD_bytes_received
    ();

extern int CMMD_msg_sender
    ();

extern int CMMD_msg_tag
    ();





extern int CMMD_open_send_channel 
# 270 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_open_receive_channel 
# 275 "/usr/include/cm/cmmd/cmmd_master.h" 
();


extern int CMMD_send_channel_status
    ();

extern int CMMD_receive_channel_status
    ();

extern int CMMD_close_send_channel
    ();

extern int CMMD_close_receive_channel
    ();

extern int CMMD_reset_channel
    ();

extern int CMMD_write_channel
    ();





extern int CMMD_is_channel_readable
    ();

extern int CMMD_is_channel_writable
    ();

extern int CMMD_all_channels_free
    ();

extern void CMMD_all_channels_free_wait
    ();




extern CMMD_matching_function_t CMMD_set_msg_matching_fcn
    ();

extern CMMD_matching_function_t CMMD_set_msg_matching_fcn_ 
    ();

extern void CMMD_error
    ();




extern int CMMD_send 
# 330 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_send_block 
# 335 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_receive 
# 340 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_receive_block 
# 345 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_send_noblock 
# 350 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_send_async 
# 357 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_receive_async 
# 364 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_send_and_receive 
# 373 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_swap 
# 379 "/usr/include/cm/cmmd/cmmd_master.h" 
();


extern int CMMD_send_v 
# 387 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_send_block_v 
# 394 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_receive_v 
# 401 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_receive_block_v 
# 408 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_send_noblock_v 
# 415 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_send_async_v 
# 424 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_receive_async_v 
# 433 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_send_and_receive_v 
# 446 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_swap_v 
# 456 "/usr/include/cm/cmmd/cmmd_master.h" 
();







extern void CMMD_sync_host_with_nodes
    ();

extern void CMMD_sync_with_host
    ();

extern void CMMD_sync_with_nodes
    ();





extern int CMMD_set_global_or
    ();

extern int CMMD_get_global_or
    ();

extern void CMMD_distrib_to_nodes
    ();

extern void CMMD_gather_from_nodes
    ();

extern int CMMD_reduce_from_nodes_int
    ();

extern unsigned CMMD_reduce_from_nodes_uint
    ();

extern double CMMD_reduce_from_nodes_double
    ();

extern void CMMD_reduce_from_nodes_v
    
# 501 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern void CMMD_bc_from_host_v
    
# 505 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern void CMMD_bc_from_host
    ();

extern void CMMD_receive_bc_from_host
    ();

extern void CMMD_receive_bc_from_node
    ();

extern void CMMD_receive_element_from_host
    ();

extern void CMMD_concat_elements_to_host
    ();

extern void CMMD_concat_with_nodes
    ();

extern void CMMD_bc_to_nodes
    ();

extern int CMMD_reduce_to_host_int
    ();

extern unsigned CMMD_reduce_to_host_uint
    ();

extern double CMMD_reduce_to_host_double
    ();

extern int CMMD_scan_int
    
# 542 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern LONGLONG_INT CMMD_scan_lint
    
# 549 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern LONGLONG_UINT CMMD_scan_luint
    
# 556 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern unsigned CMMD_scan_uint
    
# 563 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern double CMMD_scan_double
    
# 570 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_reduce_int
    ();

extern LONGLONG_INT CMMD_reduce_lint
    ();

extern LONGLONG_UINT CMMD_reduce_luint
    ();

extern unsigned CMMD_reduce_uint
    ();

extern double CMMD_reduce_double
    ();

extern void CMMD_scan_int_start
    
# 592 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern void CMMD_scan_uint_start
    
# 599 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern void CMMD_scan_lint_start
    
# 606 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern void CMMD_scan_luint_start
    
# 613 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern void CMMD_scan_double_start
    
# 620 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_scan_done ();
extern int CMMD_reduce_done ();

extern void CMMD_sync_with_nodes_start ();

extern void CMMD_sync_with_nodes_finish ();

extern int CMMD_sync_done ();

extern void CMMD_reduce_int_start
    ();

extern void CMMD_reduce_uint_start
    ();

extern void CMMD_reduce_lint_start
    ();

extern void CMMD_reduce_luint_start
    ();

extern void CMMD_reduce_double_start
    ();

extern int CMMD_scan_int_finish
    
# 651 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern unsigned CMMD_scan_uint_finish
    
# 658 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern LONGLONG_INT CMMD_scan_lint_finish
    
# 665 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern LONGLONG_UINT CMMD_scan_luint_finish
    
# 672 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern double CMMD_scan_double_finish
    
# 679 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern int CMMD_reduce_int_finish
    ();

extern unsigned CMMD_reduce_uint_finish
    ();

extern LONGLONG_INT CMMD_reduce_lint_finish
    ();

extern LONGLONG_UINT CMMD_reduce_luint_finish
    ();

extern double CMMD_reduce_double_finish
    ();

extern unsigned CMMD_segmented_reduce_uint
    
# 700 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern void CMMD_reduce_to_host_v
    
# 704 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern void CMMD_scan_v
    
# 711 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern void CMMD_reduce_v
    
# 715 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern void CMMD_receive_bc_from_host_v
    
# 719 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern double CMMD_reduce_float
    ();
extern void CMMD_reduce_float_start
    ();
extern double CMMD_reduce_float_finish
    ();

extern double CMMD_scan_float
    
# 733 "/usr/include/cm/cmmd/cmmd_master.h" 
();
extern void CMMD_scan_float_start
    
# 739 "/usr/include/cm/cmmd/cmmd_master.h" 
();
extern double CMMD_scan_float_finish
    
# 745 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern void CMMD_scan_double_v
    
# 750 "/usr/include/cm/cmmd/cmmd_master.h" 
();

extern double CMMD_reduce_from_nodes_float
    ();

extern double CMMD_reduce_to_host_float
    ();





extern int CMMD_host_node 
    ();

extern int CMMD_self_address 
    ();

extern int CMMD_partition_size 
    ();

extern int CMMD_node_timer_start 
    ();

extern int CMMD_node_timer_stop 
    ();

extern int CMMD_node_timer_clear 
    ();

extern double CMMD_node_timer_elapsed 
    ();

extern double CMMD_node_timer_busy 
    ();

extern double CMMD_node_timer_idle 
    ();

extern int CMMD_get_errno
    ();

extern void CMMD_enable
    ();

extern int CMMD_is_enabled
    ();

extern void CMMD_suspend 
    ();

extern int CMMD_is_suspended 
    ();

extern void CMMD_resume 
    ();

extern void CMMD_host_reinit_partic
  ();

extern void CMMD_node_reinit_partic
  ();

extern int CMMD_reset_partition_size
    ();

extern void CMMD_enable_safety
    ();

extern void CMMD_disable_safety
    ();




# 988 "/usr/include/cm/cmmd/cmmd_master.h" 

# 54 "/usr/include/cm/cmmd.h" 2
# 1 "/usr/include/cm/cmmd/util.h" 1














# 22 "/usr/include/cm/cmmd/util.h" 

# 55 "/usr/include/cm/cmmd.h" 2
# 1 "/usr/include/cm/cmmd/amx.h" 1





















# 29 "/usr/include/cm/cmmd/amx.h" 

# 56 "/usr/include/cm/cmmd.h" 2
# 1 "/usr/include/cm/cmmd/pr.h" 1

























# 51 "/usr/include/cm/cmmd/pr.h" 

# 57 "/usr/include/cm/cmmd.h" 2
# 1 "/usr/include/cm/cmmd/mp.h" 1













































# 56 "/usr/include/cm/cmmd/mp.h" 


# 58 "/usr/include/cm/cmmd.h" 2
# 1 "/usr/include/cm/cmmd/cn.h" 1


















# 28 "/usr/include/cm/cmmd/cn.h" 

# 59 "/usr/include/cm/cmmd.h" 2
# 1 "/usr/include/cm/cmmd/io.h" 1

































# 1 "/usr/include/stdio.h" 1
# 3 "/usr/include/stdio.h" 






extern	struct	_iobuf {
	int	_cnt;
	unsigned char *_ptr;
	unsigned char *_base;
	int	_bufsiz;
	short	_flag;
	char	_file;		
} _iob[];




















# 40 "/usr/include/stdio.h" 


























extern int	_filbuf();
extern int	_flsbuf();
extern struct _iobuf	*fopen();
extern struct _iobuf	*fdopen();
extern struct _iobuf	*freopen();
extern struct _iobuf	*popen();
extern struct _iobuf	*tmpfile();
extern long	ftell();
extern char	*fgets();
extern char	*gets();
extern char	*sprintf();
extern char	*ctermid();
extern char	*cuserid();
extern char	*tempnam();
extern char	*tmpnam();

# 123 "/usr/include/stdio.h" 
# 138 "/usr/include/stdio.h" 





# 145 "/usr/include/stdio.h" 

# 35 "/usr/include/cm/cmmd/io.h" 2
# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 36 "/usr/include/cm/cmmd/io.h" 2
# 1 "/usr/include/cm/cmmd/io_constants.h" 1































# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 33 "/usr/include/cm/cmmd/io_constants.h" 2









































# 37 "/usr/include/cm/cmmd/io.h" 2
# 1 "/usr/include/cm/cmmd/io_types.h" 1
































# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 34 "/usr/include/cm/cmmd/io_types.h" 2

typedef enum {
  CMMD_local = 0,
  CMMD_independent = 1,
  CMMD_sync_bc = 2,
  CMMD_sync_seq = 3,
  CMMD_system = 4
  } CMMD_file_mode_t;




typedef unsigned int CMMD_server_id_t;
typedef unsigned int CMMD_service_id_t;









typedef struct {
  CMMD_server_id_t server_id;
  CMMD_service_id_t service_id;
  int requesting_node;
  int body_length;
  char *body;
  int pad;			
} CMMD_service_request_t;


# 38 "/usr/include/cm/cmmd/io.h" 2
# 1 "/usr/include/cm/cmmd/io_prototypes_internal.h" 1




















































































# 1 "/usr/include/sys/stdtypes.h" 1













typedef	int		sigset_t;	

typedef	unsigned int	speed_t;	
typedef	unsigned long	tcflag_t;	
typedef	unsigned char	cc_t;		
typedef	int		pid_t;		

typedef	unsigned short	mode_t;		
typedef	short		nlink_t;	

typedef	long		clock_t;	
typedef	long		time_t;		

typedef	int		size_t;		
typedef int		ptrdiff_t;	

typedef	unsigned short	wchar_t;	

# 34 "/usr/include/sys/stdtypes.h" 

typedef	char *		malloc_t;	



# 86 "/usr/include/cm/cmmd/io_prototypes_internal.h" 2
# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 87 "/usr/include/cm/cmmd/io_prototypes_internal.h" 2
# 1 "/usr/include/sys/time.h" 1









# 12 "/usr/include/sys/time.h" 








struct timeval {
	long	tv_sec;		
	long	tv_usec;	
};

struct timezone {
	int	tz_minuteswest;	
	int	tz_dsttime;	
};

# 33 "/usr/include/sys/time.h" 



































struct	itimerval {
	struct	timeval it_interval;	
	struct	timeval it_value;	
};



# 1 "/usr/include/time.h" 1



# 6 "/usr/include/time.h" 



# 1 "/usr/include/sys/stdtypes.h" 1










# 31 "/usr/include/sys/stdtypes.h" 
# 38 "/usr/include/sys/stdtypes.h" 

# 10 "/usr/include/time.h" 2



struct	tm {
	int	tm_sec;
	int	tm_min;
	int	tm_hour;
	int	tm_mday;
	int	tm_mon;
	int	tm_year;
	int	tm_wday;
	int	tm_yday;
	int	tm_isdst;
	char	*tm_zone;
	long	tm_gmtoff;
};


extern	struct tm *gmtime(), *localtime();
extern	char *asctime(), *ctime();
extern	void tzset(), tzsetwall();
extern  int dysize();
extern  time_t timelocal(), timegm();
extern  int strftime();
extern long clock();
extern long mktime();
extern time_t time();
# 51 "/usr/include/time.h" 


# 55 "/usr/include/time.h" 


# 76 "/usr/include/sys/time.h" 2


# 80 "/usr/include/sys/time.h" 


# 88 "/usr/include/cm/cmmd/io_prototypes_internal.h" 2

# 1 "/usr/include/cm/cm_param.h" 1














static char rcsid_cm_param[] = "$Id: cm_param.h,v 1.61 1992/08/20 17:14:00 taylor Exp $";


# 1 "/usr/include/cm/cm_fs.h" 1
















static char rcsid_cm_fs[] = "$Id: cm_fs.h,v 1.23 1992/02/12 14:16:20 taylor Exp $";
















# 19 "/usr/include/cm/cm_param.h" 2
















# 38 "/usr/include/cm/cm_param.h" 








































# 80 "/usr/include/cm/cm_param.h" 

# 83 "/usr/include/cm/cm_param.h" 












































































typedef short	IOBUSID;





# 90 "/usr/include/cm/cmmd/io_prototypes_internal.h" 2





extern int 		CMMD_set_open_mode ();
extern CMMD_file_mode_t CMMD_get_open_mode ();
extern int 		CMMD_fset_io_mode   ();
extern CMMD_file_mode_t CMMD_fget_io_mode          ();
extern double          dseek	      ();
extern double          dtell  	       	();
extern double          dlength 		();
extern int		dftruncate	();

extern int             CMMD_physical_write     ();
extern int             CMMD_physical_read      ();
extern int 	       CMMD_physical_blocking  ();

extern int 		CMMD_set_io_mode	 	();
extern CMMD_file_mode_t CMMD_get_io_mode 		();


extern struct _iobuf          *CMMD_global_fopen  ();
extern int           CMMD_global_open    ();
extern int 	     CMMD_global_creat	 ();
extern int	     CMMD_global_socket	 ();




extern void CMMD_io_server ();

extern void CMMD_request_service 
# 125 "/usr/include/cm/cmmd/io_prototypes_internal.h" 
();

extern void CMMD_install_server 
# 129 "/usr/include/cm/cmmd/io_prototypes_internal.h" 
();

extern void CMMD_terminate_server ();
     
extern void CMMD_remove_server_routine ();

extern void CMMD_terminate_all_servers ();

extern void CMMD_install_default_servers ();

extern void CMMD_describe_servers ();

extern int CMMD_poll_for_services ();

extern void CMMD_service_loop ();

extern void CMMD_no_such_service_error ();     

extern void *CMMD_get_stack_pointer ();

extern int CMMD_set_stack_pointer ();

extern void *CMMD_global_get_stack_pointer ();

extern int CMMD_global_set_stack_pointer ();

extern void CMMD_global_suspend_servers ();

extern void CMMD_set_cpsi_misc_message_handler ();

extern void CMMD_enable_host();

extern int CMMD_chkpnt_me ();

extern void cmmd_gettimeofday_init 
# 164 "/usr/include/cm/cmmd/io_prototypes_internal.h" 
();
extern void cmmd_io_init_fd ();
extern void cmmd_io_init_fd_tables();

extern  char *CMMD_sys_errlist ();
extern void (*cmmdi_node_sig_ptr)();
extern void cmmdi_node_sig_handler ();


extern IOBUSID cmmd_get_cmio_busid ();
extern int cmmd_set_cmio_busid ();
extern int cmmd_get_cmio_busids ();


extern char *cmmd_get_current_io_buffer ();
extern int cmmd_get_current_io_size ();
extern int cmmd_set_maximum_buffer_size () ;
extern int cmmd_set_io_buffer ();


extern int CMMD_get_rearrange_size ();
extern int CMMD_set_rearrange_size ();
extern int CMMD_max_rearrange_size ();


# 39 "/usr/include/cm/cmmd/io.h" 2
# 1 "/usr/include/cm/cmmd/io_variables_internal.h" 1





























extern int cmmdi_k_table_size;


# 40 "/usr/include/cm/cmmd/io.h" 2


# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 43 "/usr/include/cm/cmmd/io.h" 2

struct cmmdigio_hdr {
  int addr;
  char *dest;
  char *source;
  int  n_packets;
};



# 61 "/usr/include/cm/cmmd/io.h" 



# 60 "/usr/include/cm/cmmd.h" 2
# 1 "/usr/include/cm/cmmd/boot.h" 1

















# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 19 "/usr/include/cm/cmmd/boot.h" 2

# 1 "/usr/include/cm/cmmd/boot_prototypes.h" 1





































# 1 "/usr/include/cm/cmmd/cmmd_lang_support.h" 1






































# 101 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 108 "/usr/include/cm/cmmd/cmmd_lang_support.h" 
# 123 "/usr/include/cm/cmmd/cmmd_lang_support.h" 

# 39 "/usr/include/cm/cmmd/boot_prototypes.h" 2

extern void CMBOOT_enable 
    ();

extern int CMBOOT_is_enabled 
    ();

extern void CMBOOT_suspend 
    ();

extern void CMBOOT_resume 
    ();

extern int CMBOOT_is_suspended 
    ();

extern void CMBOOT_host_reinit_partic
  ();

extern void CMBOOT_node_reinit_partic
  ();


# 21 "/usr/include/cm/cmmd/boot.h" 2


# 61 "/usr/include/cm/cmmd.h" 2


# 33 "msg.c" 2


extern void printrefmsg();
extern void __Overflow();
extern void __OverflowRPC();
extern void __RpcContinue();
extern void __MigrateReturn (word_t sp, retmsg_t *msg);
msg_t msg;
aligned_retmsg __retmsgs[300];
static aligned_retmsg incomingretmsg;



unsigned int __ModifiedMask[2] = {0,0};
int __SomethingCached = 0;

int BufferInUse = 0;
int ThreadCount = 0;
int NumMigrations = 0,NumRpcs = 0,NumMisses = 0,NumPageMisses = 0;
int __PanicFlag = 0;
MCB __MCBs[512];
int __FreeMCB,__MigMCB,__RetMCB,__StopMCB,__QueueNotEmpty,__MigBufMCB;
int __OurRport,__YourRport,__RpcList;
rpcmsg __RpcMsgs[300];
int __TransferDone,__FreeRetMsg,__FreeRpcMsg,__CurRpcMsg;
int __FreeRpcReply,__RpcReplies;
rpc_reply __RpcReplyMsgs[200];

void __RpcFree(mcb)
     int mcb;
{
  CMAML_disable_interrupts();
  __RpcMsgs[mcb].next = __FreeRpcMsg;
  __FreeRpcMsg = mcb;
  CMAML_enable_interrupts();
}

void __InitMsg() 
{
  int i;
  for (i=0; i<512-1; i++) 
    {
      __MCBs[i].next = i+1;
    }
  for (i=0; i<300-1; i++)
    {
      __retmsgs[i].retmsg.next_retmsg = i+1;
    }
  for (i=0; i<300-1; i++)
    {
      __RpcMsgs[i].next = i+1;
    }
  for (i=0; i<200-1; i++)
    {
      __RpcReplyMsgs[i].next = i+1;
    }
  __RpcReplyMsgs[200-1].next = -1;  
  __RpcMsgs[300-1].next = -1;
  __retmsgs[300-1].retmsg.next_retmsg = -1;
  __MCBs[512-1].next = -1;
  __FreeRpcReply = 0;
  __FreeRpcMsg = 0;
  __FreeMCB = 0;
  __FreeRetMsg = 0;
  __MigBufMCB = __RpcList = __RpcReplies = __MigMCB = 
    __RetMCB = __StopMCB = -1;
  __QueueNotEmpty = 0;
  __OurRport = CMAML_allocate_rport();
  CMAML_set_rport_handler(__OurRport,__TransmitDone);
  NumMigrations = 0;
}

void __GetMessage(from,addr,sz,dest)
     int from,sz;
     void *addr,*dest;
{
  int nodeId = __MyNodeId;
  
  __TransferDone = 0;
  CMAML_set_rport_addr(__OurRport,dest);
  CMAML_set_rport_byte_counter(__OurRport,sz);
  
  if (from>=__NumNodes) __Olden_panic("Receive from %d?!?\n",from);
  CMAML_request(from,__send_msg,addr,sz,__OurRport,nodeId);
  CMAML_disable_interrupts();
  CMAML_poll_while_lt(&__TransferDone,1);
  CMAML_enable_interrupts();
}

  

void __MsgDispatch(not_assert_fs_empty,fp,fnptr)
     int not_assert_fs_empty;
     char *fp, *fnptr;
{
  int from,size;
  void *addr;
  
  


  if (!not_assert_fs_empty) if (!(!__TopFutureStk())) __Olden_panic("MSG: Assertion failed!\n");

  
  while(1) 
    {
      future_cell_int *fc;
      int mcb;

      if (__PanicFlag) __Olden_panic("Panic flag set %d\n",__PanicFlag);
      
      fc = __PopFutureStk();
      if (fc!=0) 
        {
          

              




          if (ThreadCount > 200) 
            {
              
              NORETURN(0,fc,fp,__Overflow);
            }
          else 
            {
              __GoExpress();
              
              NORETURN(0,fc,fp,fnptr,__Steal);
            }
        }
      
      if (__RetMCB != -1) 
        {
          int retbuf;
          
          
          
          CMAML_disable_interrupts();
          mcb = __RetMCB;
          from = (int) __MCBs[mcb].from;
          retbuf = (int) __MCBs[mcb].bufnum;
          addr = __MCBs[mcb].address;
          size = __MCBs[mcb].size;
          __RetMCB = __MCBs[mcb].next;
          __MCBs[mcb].next = __FreeMCB;
          __FreeMCB = mcb;
          __QueueNotEmpty--;
          CMAML_enable_interrupts();
          __GetMessage(from,addr,size,&(incomingretmsg.retmsg));
          CMAML_request(from,__free_retbuf,retbuf);
          __SlowLane();
          NORETURN(0,&(incomingretmsg.retmsg),0,__ReturnMsgRecv);
          
        }
      if (__RpcReplies != -1)
        {
          future_cell_int *fcp;
          word_t rettype,ret1,ret2;

          
          CMAML_disable_interrupts();
          mcb = __RpcReplies;
          __RpcReplies = __RpcReplyMsgs[mcb].next;
          fcp = __RpcReplyMsgs[mcb].fcp;
          rettype = __RpcReplyMsgs[mcb].rettype;
          ret1 = __RpcReplyMsgs[mcb].ret[0];
          ret2 = __RpcReplyMsgs[mcb].ret[1];
          __RpcReplyMsgs[mcb].next = __FreeRpcReply;
          __FreeRpcReply = mcb;
          __QueueNotEmpty--;
          CMAML_enable_interrupts();
          __SlowLane();
          NORETURN(0,fcp,rettype,ret1,ret2,__RpcReply);
          
        }
      
      if (__RpcList != -1)
        {
          
          CMAML_disable_interrupts();
          mcb = __RpcList;
          __RpcList = __RpcMsgs[mcb].next;
          __QueueNotEmpty--;
          CMAML_enable_interrupts();

          
          __ModifiedMask[0] = 0;
          __ModifiedMask[1] = 0;
          
          __ClearCache2();
          NORETURN(0,&(__RpcMsgs[mcb]),mcb,__RpcStub);
          
        }          
      if (__MigMCB != -1) 
        {
          
          
          CMAML_disable_interrupts();
          mcb = __MigMCB;
          __MigMCB = __MCBs[mcb].next;
          from = (int) __MCBs[mcb].from;
          addr = __MCBs[mcb].address;
          size = __MCBs[mcb].size;
          __MCBs[mcb].next = __FreeMCB;
          __FreeMCB = mcb;
          __QueueNotEmpty--;
          CMAML_enable_interrupts();
          NORETURN(0,from,addr,size,0,__CallMsgRecv);
        }
      if (__MigBufMCB != -1) 
        {
          
          
          CMAML_disable_interrupts();
          mcb = __MigBufMCB;
          __MigBufMCB = __MCBs[mcb].next;
          from = (int) __MCBs[mcb].from;
          addr = __MCBs[mcb].address;
          size = __MCBs[mcb].size;
          __MCBs[mcb].next = __FreeMCB;
          __FreeMCB = mcb;
          __QueueNotEmpty--;
          CMAML_enable_interrupts();
          NORETURN(0,from,addr,size,1,__CallMsgRecv);
        }
      if (__StopMCB != -1)
        {
          
          Stats();
          exit(0);
        }
      

/*
      CMAML_disable_interrupts();
      CMAML_poll_while_lt(&__QueueNotEmpty,1);
      CMAML_enable_interrupts();
*/
    }  
} 

   





void __CallMsgSend(p,frameSzB,argsize,bp,flag,migfp,fnptr)
     void *p;
     unsigned int frameSzB,argsize;
     refmsg_t *bp; 
     void *migfp, *fnptr;
     int flag;
{
  unsigned int size;
  
  unsigned int codedsize;
  unsigned int dest = (unsigned int) p & 127;
  unsigned int source = __MyNodeId;
  refmsg_t *message_info;
  int *splink = (int *) bp - 2; 

  
  message_info = (refmsg_t *) (((char *) bp) + frameSzB);

  
  __MakeCoherent();

  if (dest>=__NumNodes) __Olden_panic("Message to %d on pointer 0x%x?!?\n",
     dest,p);

  
  NumMigrations++;
  size = frameSzB+argsize;
  codedsize = (frameSzB << 16) | size;
  if (flag)  
    {
      
      message_info->modmask[0] = __ModifiedMask[0];
      message_info->modmask[1] = __ModifiedMask[1];

      
      CMAML_request(dest,__recv_msg,bp,codedsize,2,source);
      ThreadCount++;
      *splink = (int) bp;
    }
  else 
    {
      int clean_size=size+8+64+320;
      char *tmp = (char *) bp + clean_size;
      char *retmsgchar = (char *) bp + size + 8+64;
      retmsg_t *retmsg = (retmsg_t *) retmsgchar;

      
      message_info->modmask[0] = __ModifiedMask[0] | retmsg->modmask[0];
      message_info->modmask[1] = __ModifiedMask[1] | retmsg->modmask[1];

      if (message_info->nodeId == __MyNodeId) 
        {
          char *frame,*args,*args2;
          char *rwo,*frame_rwo;

          
          frame = (char *) message_info->savedFP;
          
          frame = frame - frameSzB;
          frame_rwo = frame + 64;
          rwo = ((char *) bp) + 64;
          memcpy(frame_rwo,rwo,frameSzB-64-12);
          
          args = (char *) bp;
          args = args + frameSzB;
          args2 = ((char *) message_info->savedFP);
          memcpy(args2,args,64);
          memcpy((args2+68),(args+68),argsize-68);
          CMAML_request(dest,__recv_msg,frame,codedsize,2,source);
        }
      else
        
        if (BufferInUse) 
          {
            
            

            

            int newsource = message_info->nodeId;
            char *frame = (char *) message_info->savedFP;
            char *argarea = (char *) bp;

            argarea += frameSzB;
            
            
            
            frame = frame - message_info->frameSzB;
            
            if (newsource >= __NumNodes)
              __Olden_panic("newsource is %d?!?\n",newsource);
            __TransferDone = 0;
            CMAML_request(newsource,__update_frame,frame,codedsize,
                          source,dest);
            CMAML_disable_interrupts();
            CMAML_poll_while_lt(&__TransferDone,1);
            
            CMAML_scopy(newsource,__YourRport,0,72,((char *) bp)+72,
                        frameSzB-88,0,0);
            CMAML_scopy(newsource,__YourRport,0,frameSzB,argarea,
                        64,0,0);
            CMAML_scopy(newsource,__YourRport,0,frameSzB+68,(argarea+68),
                        argsize-68,0,0);
            CMAML_enable_interrupts();
            




          }
        else 
          {
            char *rwo,*msg_rwo;

            BufferInUse = 1;
            
            rwo = ((char *) bp) + 64;
            msg_rwo = ((char *) &(msg.ref)) + 64;
            memcpy(msg_rwo,rwo,size-64);
            
            
            CMAML_request(dest,__recv_msg,&(msg.ref),codedsize,
                          3,source);
          }
      *splink = (int) tmp; 

    }
  NORETURN(1,migfp,fnptr,__MsgDispatch);
  
}











void __CallMsgRecv(sp,from,addr,codedsize,clear_buf)
     char *sp,*addr;
     unsigned int from,codedsize,clear_buf;
{
  unsigned int size2,size;
  unsigned int frameSzB;
  refmsg_t *callMsg;
  retmsg_t *retMsg;
  char *getme;
  int *splink;

  frameSzB = codedsize >> 16;
  size = (codedsize << 16) >> 16;
  size2 = size+64;
  sp -= (320+size2+8+64+8);
  __setsp(sp);
  splink = (int *) (sp+64); 
  *splink = 0; 
  
  getme = (sp+72+64);
  callMsg = (refmsg_t *) (sp+72);
  __GetMessage(from,addr+64,size-64,getme);
  if (clear_buf) CMAML_request(from,__clear_msgbuf);

  
  retMsg = (retmsg_t *) (sp+8+size2+8+64);
  if (__MyNodeId > 32) {
     retMsg->modmask[0] = __ModifiedMask[0];
     retMsg->modmask[1] = __ModifiedMask[1] | (1 << (__MyNodeId-32));
  }
  else {
     retMsg->modmask[0] = __ModifiedMask[0] | (1 << __MyNodeId);
     retMsg->modmask[1] = __ModifiedMask[1];
  }

  __ClearCache2();
  __ModifiedMask[0] = 0;
  __ModifiedMask[1] = 0;
  
  __CallStub(callMsg,sp+8,frameSzB,size2);
  
}

void __CallMsgReply(nodeId,retMsg)
     word_t nodeId;
     retmsg_t *retMsg;
{
  int size = sizeof(retmsg_t)-60+retMsg->retsize;
  int source = __MyNodeId;
  int retmsgnum;

  if (nodeId >= __NumNodes) __Olden_panic("Return to %d?!?\n",nodeId);

  
  retMsg->modmask[0] = retMsg->modmask[0] | __ModifiedMask[0];
  retMsg->modmask[1] = retMsg->modmask[1] | __ModifiedMask[1];

  
  __MakeCoherent();

  
  CMAML_disable_interrupts();
  retmsgnum = __FreeRetMsg;
  __FreeRetMsg=__retmsgs[retmsgnum].retmsg.next_retmsg;
  CMAML_enable_interrupts();
  if (retmsgnum == -1) __Olden_panic("No more return messages\n");

  memcpy(&(__retmsgs[retmsgnum].retmsg),retMsg,size);
  
  CMAML_request(nodeId,__recv_msg,&(__retmsgs[retmsgnum].retmsg),size,
                7+retmsgnum,source);
}


void __ReturnMsgRecv(sp,message,flag)
     word_t sp; 
     retmsg_t *message;
     int flag; 
{
  

  
  if (message->retsize)
    memcpy(*((word_t *) (message->fp+64)), message->retstruct,
           message->retsize);

  
  ThreadCount--;
  if (flag) 
    {
      

      
      

      
      memcpy(&(msg.ret),message,128);
      NORETURN(0,&(msg.ret),__MigrateReturn);
    }
  else 
    {
      
      
      __ModifiedMask[0] = message->modmask[0];
      __ModifiedMask[1] = message->modmask[1];
      __ClearCache2byMask(__ModifiedMask);
      
      NORETURN(0,message,__MigrateReturn);
    }
  
}  

int __AtomicInc(address)
     unsigned int address;
{
  unsigned int requst = address & 127;
  __done = 0;

  if (requst >= __NumNodes) __Olden_panic("Inc on %d!?!\n",requst);
  CMAML_disable_interrupts();
  CMAML_request(requst,atomicinchandler,address,__MyNodeId);
  CMAML_poll_while_lt(&__done,1);
  CMAML_enable_interrupts();
  return __value;
}


void __RpcSend2(pn_to,rettype,argcount,pc,fcp,arg1,arg2,arg3,arg4,arg5,
                arg6,arg7)
     word_t pn_to,rettype,argcount,pc;
     future_cell_int *fcp;
     word_t arg1,arg2,arg3,arg4,arg5,arg6,arg7;
{
  word_t o2;

  
 
  
  __MakeCoherent();

  if (pn_to >= __NumNodes) __Olden_panic("RPC to\n");
  ThreadCount++;
  NumRpcs++;

  
  fcp->impl.next = (future_cell_int *) 0;

  o2 = ((__MyNodeId << 16) | (argcount << 8) |
       rettype);
  __TransferDone = 0;
  CMAML_request(pn_to,__RpcReceive1,o2,pc,fcp,arg1);
  if (argcount > 1) {
    CMAML_disable_interrupts();
    CMAML_poll_while_lt(&__TransferDone,1);
    CMAML_enable_interrupts();
    CMAML_request(pn_to,__RpcReceive2,__CurRpcMsg,arg2,
                  arg3,arg4);
    if (argcount > 4) {
      CMAML_request(pn_to,__RpcReceive3,__CurRpcMsg,arg5,arg6,arg7);
      }
    }

  if (ThreadCount > 200) 
    {
      
      
      
      
      fcp->impl.returnPC = __GetRetAddr();
      NORETURN(0,fcp,__OverflowRPC);
    }
  fcp->impl.next = (future_cell_int *) 1;
  __GoExpress();
}

void __RpcReply(sp,fcp,rettype,ret1,ret2)
     word_t sp;
     future_cell_int *fcp;
     word_t rettype,ret1,ret2;
{
  ThreadCount--;

  
  __MakeCoherent();
  __ClearCache2();
  
  fcp->value = ret1;
  if ((rettype == 3) || (rettype > 4))
    *(((int *) &(fcp->value))+1) = ret2;
  if (((int) fcp->impl.next & 3) == 0)
    {
      
      NORETURN(0,fcp,__RpcContinue);
    }
  
  NORETURN(0,fcp,__RpcStolen);
}


