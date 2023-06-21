.class public Loicq/wlogin_sdk/request/WtloginHelper;
.super Loicq/wlogin_sdk/request/WtloginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginRequestCode;,
        Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;,
        Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;,
        Loicq/wlogin_sdk/request/WtloginHelper$A1SRC;,
        Loicq/wlogin_sdk/request/WtloginHelper$RegTLVType;,
        Loicq/wlogin_sdk/request/WtloginHelper$SigType;
    }
.end annotation


# static fields
.field static final __sync_top:Ljava/lang/Object;

.field static __top:I


# instance fields
.field private isForLocal:Z

.field private mAysncSeq:J

.field private mContext:Landroid/content/Context;

.field private mG:Loicq/wlogin_sdk/request/u;

.field private mHelperHandler:Landroid/os/Handler;

.field private mListener:Loicq/wlogin_sdk/request/WtloginListener;

.field private mMainSigMap:I

.field private mMiscBitmap:I

.field private mOpenAppid:J

.field private mRegStatus:Loicq/wlogin_sdk/a/j;

.field private mSubSigMap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Loicq/wlogin_sdk/request/WtloginHelper;->__sync_top:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginListener;-><init>()V

    new-instance v0, Loicq/wlogin_sdk/request/u;

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->newHelperHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    new-instance v0, Loicq/wlogin_sdk/a/j;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/j;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    const v0, 0xff32f2

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    const v0, 0x10400

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    const v0, 0x37ff7c

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    const-wide/32 v0, 0x2a9e5427

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mOpenAppid:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    iput-boolean v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    iput-boolean v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestInit()I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginListener;-><init>()V

    new-instance v0, Loicq/wlogin_sdk/request/u;

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->newHelperHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    new-instance v0, Loicq/wlogin_sdk/a/j;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/j;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    const v0, 0xff32f2

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    const v0, 0x10400

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    const v0, 0x37ff7c

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    const-wide/32 v0, 0x2a9e5427

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mOpenAppid:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    sput-object p2, Loicq/wlogin_sdk/request/WtloginMsfListener;->TicketMgr:Ljava/lang/Object;

    iget-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    invoke-direct {p0, p1, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->localInit(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginListener;-><init>()V

    new-instance v0, Loicq/wlogin_sdk/request/u;

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->newHelperHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    new-instance v0, Loicq/wlogin_sdk/a/j;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/j;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    const v0, 0xff32f2

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    const v0, 0x10400

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    const v0, 0x37ff7c

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    const-wide/32 v0, 0x2a9e5427

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mOpenAppid:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    invoke-direct {p0, p1, p2}, Loicq/wlogin_sdk/request/WtloginHelper;->localInit(Landroid/content/Context;Z)V

    return-void
.end method

.method private AsyncGenRSAKey()V
    .locals 2

    iget-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Loicq/wlogin_sdk/request/WtloginHelper$2;

    const-string v1, "AsyncGenRSAKey"

    invoke-direct {v0, p0, v1}, Loicq/wlogin_sdk/request/WtloginHelper$2;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;)V

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/WtloginHelper$2;->start()V

    goto :goto_0
.end method

.method private CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I
    .locals 28

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/16 v8, -0x3f9

    :goto_0
    return v8

    :cond_1
    if-nez p5, :cond_2

    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v10, "CheckPictureAndGetSt"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v10}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BLjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v8, -0x3e9

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    move-object/from16 v0, p3

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p3

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v26

    move-object/from16 v0, v26

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p3

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CheckPictureAndGetSt Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    new-instance v2, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    move-object/from16 v0, v27

    iput-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4

    const/4 v8, 0x1

    :cond_4
    :goto_1
    const/4 v4, 0x1

    if-ne v8, v4, :cond_5

    move-object/from16 v0, v26

    iput-wide v2, v0, Loicq/wlogin_sdk/request/u;->f:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    :cond_5
    new-instance v2, Loicq/wlogin_sdk/request/o;

    move-object/from16 v0, v26

    invoke-direct {v2, v0}, Loicq/wlogin_sdk/request/o;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v27

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Loicq/wlogin_sdk/request/o;->a([BII[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v3

    const/16 v2, 0xcc

    if-ne v3, v2, :cond_6

    new-instance v2, Loicq/wlogin_sdk/request/q;

    move-object/from16 v0, v26

    invoke-direct {v2, v0}, Loicq/wlogin_sdk/request/q;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v27

    iget-object v5, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Loicq/wlogin_sdk/request/q;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v3

    :cond_6
    if-eqz v3, :cond_c

    const/16 v2, 0xa0

    if-eq v3, v2, :cond_c

    move v8, v3

    :cond_7
    :goto_2
    const/16 v2, 0x80

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v2

    if-nez v2, :cond_8

    new-instance v2, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v2}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    :cond_8
    sget-object v3, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v26

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v26

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v8}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v7

    invoke-virtual/range {v3 .. v8}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    if-nez v8, :cond_1c

    iget-object v3, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v3, :cond_9

    iget-object v3, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v3, v3

    if-eqz v3, :cond_9

    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v26

    iget-wide v14, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v27

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    :cond_9
    :goto_3
    move-object/from16 v0, v26

    iget-object v3, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    if-eqz v3, :cond_a

    move-object/from16 v0, v26

    iget-object v3, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    invoke-virtual {v3}, Loicq/wlogin_sdk/b/au;->a()I

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v26

    iget-object v4, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    iput-object v4, v3, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v26

    iget-wide v14, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v27

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    :cond_a
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    invoke-virtual/range {v26 .. v26}, Loicq/wlogin_sdk/request/u;->h()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CheckPictureAndGetSt Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_c
    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_e

    if-nez v2, :cond_e

    const/16 v8, -0x3eb

    goto/16 :goto_2

    :cond_d
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v2, 0x1

    goto :goto_4

    :cond_e
    move-object/from16 v0, v26

    iput-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    const/16 v2, 0xa0

    if-ne v3, v2, :cond_f

    move v8, v3

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v2, :cond_11

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v2, v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_11

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v2

    move-object/from16 v0, v26

    iput v2, v0, Loicq/wlogin_sdk/request/u;->i:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSF SSO SEQ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    iget v3, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v2, v3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_12

    if-eqz p4, :cond_12

    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p4

    array-length v3, v0

    if-ne v2, v3, :cond_12

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_12

    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    if-ge v3, v2, :cond_12

    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    aget-wide v6, v2, v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v6, v7}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v6

    if-eqz v6, :cond_10

    mul-int/lit8 v7, v3, 0x2

    iget-object v2, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v7

    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v7, v2, 0x1

    iget-object v2, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v7

    :cond_10
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, v26

    iput v2, v0, Loicq/wlogin_sdk/request/u;->i:I

    goto :goto_5

    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    if-eqz v2, :cond_16

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    array-length v2, v2

    if-lez v2, :cond_16

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object/from16 v24, v2

    :goto_7
    move-object/from16 v0, v27

    iget v2, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    if-eqz v2, :cond_17

    new-instance v3, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v3, v0, v2}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;Landroid/content/Context;)V

    invoke-virtual {v3}, Loicq/wlogin_sdk/request/l;->g()V

    move-object/from16 v0, v27

    iget-wide v4, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move-object/from16 v0, v26

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    const/4 v10, 0x0

    sget-object v11, Loicq/wlogin_sdk/request/u;->ad:[B

    move-object/from16 v0, v27

    iget-object v12, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v15, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v27

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v16, v0

    move-object/from16 v0, v27

    iget v0, v0, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    move/from16 v17, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move-wide/from16 v18, v0

    sget v20, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v25, p3

    invoke-virtual/range {v3 .. v25}, Loicq/wlogin_sdk/request/l;->a(JJJI[B[B[BII[JIJIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v8

    :goto_8
    const/16 v2, 0xcc

    if-ne v8, v2, :cond_14

    new-instance v2, Loicq/wlogin_sdk/request/q;

    move-object/from16 v0, v26

    invoke-direct {v2, v0}, Loicq/wlogin_sdk/request/q;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v27

    iget-object v5, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Loicq/wlogin_sdk/request/q;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v8

    :cond_14
    if-eqz v8, :cond_15

    const/16 v2, 0xa0

    if-ne v8, v2, :cond_7

    :cond_15
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    const/16 v2, 0xa0

    if-eq v8, v2, :cond_7

    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v2, v3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    if-nez v2, :cond_19

    const/16 v8, -0x3ec

    goto/16 :goto_2

    :cond_16
    sget-object v24, Loicq/wlogin_sdk/request/u;->aa:[B

    goto/16 :goto_7

    :cond_17
    const/4 v2, 0x4

    new-array v11, v2, [B

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sget-wide v6, Loicq/wlogin_sdk/request/u;->ac:J

    add-long/2addr v4, v6

    invoke-static {v11, v2, v4, v5}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    move-object/from16 v0, v27

    iget-boolean v2, v0, Loicq/wlogin_sdk/request/async_context;->_isSmslogin:Z

    if-eqz v2, :cond_18

    const/4 v13, 0x3

    :goto_9
    new-instance v2, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v2, v0, v3}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;Landroid/content/Context;)V

    invoke-virtual {v2}, Loicq/wlogin_sdk/request/l;->g()V

    move-object/from16 v0, v27

    iget-wide v3, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, v27

    iget-wide v5, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move-object/from16 v0, v26

    iget-wide v7, v0, Loicq/wlogin_sdk/request/u;->f:J

    const/4 v9, 0x0

    sget-object v10, Loicq/wlogin_sdk/request/u;->ad:[B

    move-object/from16 v0, v27

    iget-object v12, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    move-object/from16 v0, p0

    iget v14, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v15, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v27

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v16, v0

    move-object/from16 v0, v27

    iget v0, v0, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    move/from16 v17, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move-wide/from16 v18, v0

    sget v20, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v25, p3

    invoke-virtual/range {v2 .. v25}, Loicq/wlogin_sdk/request/l;->a(JJJI[B[B[BIII[JIJIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v8

    goto/16 :goto_8

    :cond_18
    const/4 v13, 0x1

    goto :goto_9

    :cond_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_1b

    if-eqz p4, :cond_1b

    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p4

    array-length v3, v0

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_1b

    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    if-ge v3, v2, :cond_1b

    move-object/from16 v0, v27

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    aget-wide v6, v2, v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v6, v7}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v6

    if-eqz v6, :cond_1a

    mul-int/lit8 v7, v3, 0x2

    iget-object v2, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v7

    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v7, v2, 0x1

    iget-object v2, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v7

    :cond_1a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_a

    :cond_1b
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_1c
    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v26

    iget-wide v14, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v27

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_3

    :cond_1d
    move v2, v8

    goto/16 :goto_4
.end method

.method private CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I
    .locals 21

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/16 v8, -0x3f9

    :goto_0
    return v8

    :cond_1
    if-nez p5, :cond_2

    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v10, "CheckSMSAndGetSt"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v2 .. v10}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BLjava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v8, -0x3e9

    goto :goto_0

    :cond_2
    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    move-object/from16 v0, p3

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p3

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v19

    move-object/from16 v0, v19

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p3

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CheckSMSAndGetSt Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    const-wide/16 v2, 0x0

    move-object/from16 v0, v19

    iput-wide v2, v0, Loicq/wlogin_sdk/request/u;->f:J

    new-instance v2, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    move-object/from16 v0, v20

    iput-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v2, :cond_7

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v2, v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_7

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Loicq/wlogin_sdk/request/u;->i:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSF SSO SEQ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget v3, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " have not found uin record."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, -0x3eb

    :goto_2
    const/16 v2, 0x80

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v2, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v2}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    :cond_4
    sget-object v3, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v19

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v19

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v8}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v7

    invoke-virtual/range {v3 .. v8}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    if-nez v8, :cond_d

    iget-object v3, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v3, :cond_5

    iget-object v3, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v3, v3

    if-eqz v3, :cond_5

    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v19

    iget-wide v14, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v20

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    :cond_5
    :goto_3
    move-object/from16 v0, v19

    iget-object v3, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    if-eqz v3, :cond_6

    move-object/from16 v0, v19

    iget-object v3, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    invoke-virtual {v3}, Loicq/wlogin_sdk/b/au;->a()I

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v19

    iget-object v4, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    iput-object v4, v3, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v19

    iget-wide v14, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v20

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    :cond_6
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/request/u;->h()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CheckSMSAndGetSt Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput v2, v0, Loicq/wlogin_sdk/request/u;->i:I

    goto/16 :goto_1

    :cond_8
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v8, v2

    :goto_4
    move-object/from16 v0, v19

    iput-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    new-instance v2, Loicq/wlogin_sdk/request/p;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Loicq/wlogin_sdk/request/p;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v20

    iget-object v6, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-object/from16 v3, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Loicq/wlogin_sdk/request/p;->a([BII[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    if-eqz v2, :cond_9

    move v8, v2

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, v20

    iget-wide v2, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9, v2, v3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    if-nez v2, :cond_a

    const/16 v8, -0x3ec

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    move-object/from16 v0, v20

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_c

    if-eqz p4, :cond_c

    move-object/from16 v0, v20

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p4

    array-length v3, v0

    if-ne v2, v3, :cond_c

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    move-object/from16 v0, v20

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    if-eqz v2, :cond_c

    move-object/from16 v0, v20

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    array-length v2, v2

    if-ge v3, v2, :cond_c

    move-object/from16 v0, v20

    iget-object v2, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    aget-wide v4, v2, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9, v4, v5}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    if-eqz v4, :cond_b

    mul-int/lit8 v5, v3, 0x2

    iget-object v2, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v5

    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v5, v2, 0x1

    iget-object v2, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, p4, v5

    :cond_b
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v11, 0x0

    iget-object v12, v2, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v13, v2, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v19

    iget-wide v14, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v20

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_3

    :cond_e
    move-wide v8, v2

    goto/16 :goto_4
.end method

.method private CheckSMSVerifyLoginAccount(JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 17

    const/4 v2, 0x0

    sput-boolean v2, Loicq/wlogin_sdk/a/j;->x:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Loicq/wlogin_sdk/a/j;->y:J

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    :cond_0
    const/16 v2, -0x3f9

    :goto_0
    return v2

    :cond_1
    if-nez p7, :cond_2

    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v12, "CheckSMSVerifyLoginAccount"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v2 .. v12}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v2, -0x3e9

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v15

    iget-wide v2, v15, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p6

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    iget-wide v2, v15, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    iget-wide v2, v15, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v2

    move-object/from16 v0, p5

    iput-object v0, v15, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v15, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CheckSMSVerifyLoginAccount ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p6

    iget v3, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_login_bitmap:I

    iput v3, v2, Loicq/wlogin_sdk/request/async_context;->_login_bitmap:I

    new-instance v3, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v3}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v3, v2, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    new-instance v3, Loicq/wlogin_sdk/request/w;

    invoke-direct {v3, v15}, Loicq/wlogin_sdk/request/w;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    sget-object v9, Loicq/wlogin_sdk/request/u;->aa:[B

    move-object/from16 v0, p0

    iget v11, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v12, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    const/4 v13, 0x0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v10, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v3 .. v14}, Loicq/wlogin_sdk/request/w;->a(JJI[BLjava/lang/String;II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    const/16 v3, 0xd0

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v15, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " CheckSMSVerifyLoginAccount ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-lez v2, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1
.end method

.method private FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;
    .locals 1

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1, p2, p3, p4}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v0

    return-object v0
.end method

.method private GetA1ByAccount(Ljava/lang/String;J)[B
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_4

    move-object v0, v2

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    if-eqz v1, :cond_2

    iget-object v1, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    array-length v1, v1

    if-gtz v1, :cond_5

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dwAppid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GetA1ByAccount return: null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_4
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v3, v0, v1, p2, p3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userAccount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dwAppid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GetA1ByAccount return: not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto/16 :goto_0
.end method

.method private GetA1WithA1(Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;I)I
    .locals 32

    if-eqz p1, :cond_0

    if-eqz p7, :cond_0

    if-eqz p14, :cond_0

    if-eqz p15, :cond_0

    if-eqz p16, :cond_0

    if-nez p17, :cond_1

    :cond_0
    const/16 v10, -0x3f9

    :goto_0
    return v10

    :cond_1
    move/from16 v0, p6

    or-int/lit16 v14, v0, 0xc0

    if-nez p18, :cond_2

    new-instance v5, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v8, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v26, "GetA1WithA1"

    move-object/from16 v6, p0

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object/from16 v15, p7

    move-wide/from16 v16, p8

    move-wide/from16 v18, p10

    move-wide/from16 v20, p12

    move-object/from16 v22, p14

    move-object/from16 v23, p15

    move-object/from16 v24, p16

    move-object/from16 v25, p17

    invoke-direct/range {v5 .. v26}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;Ljava/lang/String;)V

    const/4 v4, 0x6

    invoke-virtual {v5, v4}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v10, -0x3e9

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v30

    move-object/from16 v0, v30

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p16

    iput-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    move-object/from16 v0, v30

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wtlogin login with GetA1WithA1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dwSrcAppid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dwMainSigMap:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dwSubSrcAppid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dstAppName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dwDstAppid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p10

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dwSubDstAppid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p12

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Seq:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->get_network_type(Landroid/content/Context;)I

    move-result v6

    sput v6, Loicq/wlogin_sdk/request/u;->D:I

    sget v6, Loicq/wlogin_sdk/request/u;->D:I

    if-eq v5, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    sget v6, Loicq/wlogin_sdk/request/u;->D:I

    invoke-static {v5, v6}, Loicq/wlogin_sdk/tools/util;->save_network_type(Landroid/content/Context;I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->get_apn_string(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    sput-object v5, Loicq/wlogin_sdk/request/u;->F:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object/from16 v0, v30

    iput-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v0, p2

    iput-wide v0, v4, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    move-wide/from16 v0, p2

    iput-wide v0, v4, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v0, p4

    iput-wide v0, v4, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    iput v14, v4, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    new-instance v5, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v5}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v5, v4, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    sget-object v4, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    new-instance v15, Loicq/wlogin_sdk/report/report_t2;

    const-string v16, "login"

    new-instance v17, Ljava/lang/String;

    sget-object v5, Loicq/wlogin_sdk/request/u;->C:[B

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const/16 v24, 0x0

    move-wide/from16 v20, p10

    move-wide/from16 v22, p12

    invoke-direct/range {v15 .. v24}, Loicq/wlogin_sdk/report/report_t2;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ[J)V

    invoke-virtual {v4, v15}, Loicq/wlogin_sdk/report/report_t1;->add_t2(Loicq/wlogin_sdk/report/report_t2;)V

    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v4, 0x0

    cmp-long v4, v7, v4

    if-nez v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " have not found uin record."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, -0x3eb

    :cond_4
    :goto_1
    const/16 v4, 0x80

    move-object/from16 v0, p16

    invoke-static {v0, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v4, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v4}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    :cond_5
    sget-object v5, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v30

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v30

    iget-object v8, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v10}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v9

    invoke-virtual/range {v5 .. v10}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    if-nez v10, :cond_d

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_6

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v5, v5

    if-eqz v5, :cond_6

    const/16 v17, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v18, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v20, v0

    move-object/from16 v16, p0

    move-wide/from16 v22, p2

    invoke-direct/range {v16 .. v23}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    :cond_6
    :goto_2
    move-object/from16 v0, v30

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    if-eqz v5, :cond_7

    move-object/from16 v0, v30

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    invoke-virtual {v5}, Loicq/wlogin_sdk/b/au;->a()I

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v30

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    iput-object v6, v5, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    const/16 v17, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v18, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v20, v0

    const/16 v24, 0x1

    move-object/from16 v16, p0

    move-wide/from16 v22, p2

    invoke-direct/range {v16 .. v24}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    :cond_7
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    invoke-virtual/range {v30 .. v30}, Loicq/wlogin_sdk/request/u;->h()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wtlogin login with GetA1WithA1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSrcAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwMainSigMap:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubSrcAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dstAppName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p10

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p12

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :cond_9
    move-object/from16 v0, v30

    iput-wide v7, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual/range {v30 .. v30}, Loicq/wlogin_sdk/request/u;->j()V

    invoke-direct/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetA1ByAccount(Ljava/lang/String;J)[B

    move-result-object v15

    invoke-direct/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetNoPicSigByAccount(Ljava/lang/String;J)[B

    move-result-object v16

    if-eqz v15, :cond_a

    array-length v4, v15

    if-gtz v4, :cond_b

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " have no a1 or pic_sig."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, -0x3f8

    goto/16 :goto_1

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " login with A1 exchange A1."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Loicq/wlogin_sdk/request/m;

    move-object/from16 v0, v30

    invoke-direct {v6, v0}, Loicq/wlogin_sdk/request/m;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-object/from16 v20, p7

    move-wide/from16 v21, p8

    move-wide/from16 v23, p10

    move-wide/from16 v25, p12

    move-object/from16 v27, p14

    move-object/from16 v28, p15

    move-object/from16 v29, p16

    invoke-virtual/range {v6 .. v29}, Loicq/wlogin_sdk/request/m;->a(JJJII[B[BII[J[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    if-nez v10, :cond_4

    move-object/from16 v0, v30

    move-wide/from16 v1, p2

    invoke-virtual {v0, v7, v8, v1, v2}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    if-nez v4, :cond_c

    const/16 v10, -0x3ec

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    move-object/from16 v0, v30

    iget-object v4, v0, Loicq/wlogin_sdk/request/u;->j:Loicq/wlogin_sdk/request/WFastLoginInfo;

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/WFastLoginInfo;->get_clone(Loicq/wlogin_sdk/request/WFastLoginInfo;)V

    goto/16 :goto_1

    :cond_d
    const/16 v17, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v18, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v20, v0

    const/16 v24, 0x0

    move-object/from16 v16, p0

    move-wide/from16 v22, p2

    invoke-direct/range {v16 .. v24}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_2
.end method

.method private GetFastLoginInfo([BLoicq/wlogin_sdk/request/async_context;)I
    .locals 8

    const/4 v7, 0x3

    const/16 v0, -0x3f9

    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v7, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Loicq/wlogin_sdk/b/i;

    invoke-direct {v1}, Loicq/wlogin_sdk/b/i;-><init>()V

    new-instance v2, Loicq/wlogin_sdk/b/o;

    invoke-direct {v2}, Loicq/wlogin_sdk/b/o;-><init>()V

    new-instance v3, Loicq/wlogin_sdk/b/bd;

    invoke-direct {v3}, Loicq/wlogin_sdk/b/bd;-><init>()V

    new-instance v4, Loicq/wlogin_sdk/b/ap;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/ap;-><init>()V

    array-length v5, p1

    invoke-virtual {v1, p1, v7, v5}, Loicq/wlogin_sdk/b/i;->c([BII)I

    move-result v6

    if-gez v6, :cond_2

    const-string v1, "fast login info no tgtgt data"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p1, v7, v5}, Loicq/wlogin_sdk/b/o;->c([BII)I

    move-result v6

    if-gez v6, :cond_3

    const-string v1, "fast login info no gtkey data"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3, p1, v7, v5}, Loicq/wlogin_sdk/b/bd;->c([BII)I

    move-result v6

    if-gez v6, :cond_4

    const-string v1, "fast login info no nopicsig data"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4, p1, v7, v5}, Loicq/wlogin_sdk/b/ap;->c([BII)I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/ap;->c()[B

    move-result-object v4

    sget-object v0, Loicq/wlogin_sdk/request/u;->A:[B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new guid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " old guid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;)V

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "fast login info guid not equal"

    const-string v5, ""

    invoke-static {v0, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-static {v0, v4}, Loicq/wlogin_sdk/tools/util;->saveGuidToFile(Landroid/content/Context;[B)V

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->A:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->B:[B

    :cond_5
    invoke-virtual {v1}, Loicq/wlogin_sdk/b/i;->c()[B

    move-result-object v0

    invoke-virtual {v2}, Loicq/wlogin_sdk/b/o;->c()[B

    move-result-object v1

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/oicq_request;->b([B[B)[B

    move-result-object v0

    iput-object v0, p2, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    invoke-virtual {v3}, Loicq/wlogin_sdk/b/bd;->c()[B

    move-result-object v0

    iput-object v0, p2, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static GetFastLoginUrl(Ljava/lang/String;J)Loicq/wlogin_sdk/request/WFastLoginInfo;
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " uin:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://imgcache.qq.com/wtlogin"

    const-wide/32 v2, 0x64ace75a

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/test"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/app"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    new-instance v0, Loicq/wlogin_sdk/request/WFastLoginInfo;

    invoke-direct {v0}, Loicq/wlogin_sdk/request/WFastLoginInfo;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/icon.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Loicq/wlogin_sdk/request/WFastLoginInfo;->iconUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ad_img.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Loicq/wlogin_sdk/request/WFastLoginInfo;->adUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/profile.js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Loicq/wlogin_sdk/request/WFastLoginInfo;->profileUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method private GetNoPicSigByAccount(Ljava/lang/String;J)[B
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_4

    move-object v0, v2

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    if-eqz v1, :cond_2

    iget-object v1, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    array-length v1, v1

    if-gtz v1, :cond_5

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dwAppid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GetNoPicSigByAccount return: null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_4
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v3, v0, v1, p2, p3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userAccount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dwAppid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GetNoPicSigByAccount return: not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto/16 :goto_0
.end method

.method private GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I
    .locals 40

    if-eqz p1, :cond_0

    if-nez p10, :cond_1

    :cond_0
    const/16 v10, -0x3f9

    :goto_0
    return v10

    :cond_1
    move/from16 v0, p4

    or-int/lit16 v11, v0, 0xc0

    if-nez p13, :cond_2

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v20, "GetStWithPasswd"

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    move-object/from16 v18, p11

    move/from16 v19, p12

    invoke-direct/range {v4 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZLjava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v10, -0x3e9

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    if-eqz p12, :cond_d

    sget-boolean v4, Loicq/wlogin_sdk/a/j;->x:Z

    if-nez v4, :cond_d

    move-object/from16 v0, p10

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    move-object/from16 v0, p10

    iput-wide v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, p10

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v4, v6, v7}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v4

    iget-wide v6, v4, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p10

    iput-wide v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    move-object/from16 v36, v4

    :goto_1
    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v6, v7}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v37

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start GetStWithPasswd:user:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " dwAppid:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " dwMainSigMap:0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " dwSubAppid:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " Seq:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ..."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p12

    move-object/from16 v1, v37

    iput-boolean v0, v1, Loicq/wlogin_sdk/request/async_context;->_isSmslogin:Z

    if-eqz p12, :cond_4

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, v37

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_mpasswd:Ljava/lang/String;

    move-object/from16 p9, v0

    :cond_4
    const/4 v4, 0x0

    sput-boolean v4, Loicq/wlogin_sdk/a/j;->x:Z

    const-string v4, ""

    sput-object v4, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    if-eqz p9, :cond_5

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x10

    if-le v4, v6, :cond_5

    const/4 v4, 0x0

    const/16 v6, 0x10

    move-object/from16 v0, p9

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p9

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->get_network_type(Landroid/content/Context;)I

    move-result v6

    sput v6, Loicq/wlogin_sdk/request/u;->D:I

    sget v6, Loicq/wlogin_sdk/request/u;->D:I

    if-eq v4, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    sget v6, Loicq/wlogin_sdk/request/u;->D:I

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->save_network_type(Landroid/content/Context;I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_apn_string(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sput-object v4, Loicq/wlogin_sdk/request/u;->F:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object/from16 v0, v36

    iput-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v0, p2

    move-object/from16 v2, v37

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    move-wide/from16 v0, p2

    move-object/from16 v2, v37

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_appid:J

    const/4 v4, 0x0

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-wide/from16 v0, p5

    move-object/from16 v2, v37

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move-object/from16 v0, v37

    iput v11, v0, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    move-object/from16 v0, p10

    iget v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_login_bitmap:I

    move-object/from16 v0, v37

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_login_bitmap:I

    new-instance v4, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v4}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    if-eqz p7, :cond_7

    invoke-virtual/range {p7 .. p7}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    :cond_7
    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v4, :cond_e

    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v4, v4

    const/4 v6, 0x3

    if-le v4, v6, :cond_e

    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v6, 0x0

    invoke-static {v4, v6}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v4

    move-object/from16 v0, v36

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSF SSO SEQ:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v6, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object v4, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    new-instance v13, Loicq/wlogin_sdk/report/report_t2;

    const-string v14, "login"

    new-instance v15, Ljava/lang/String;

    sget-object v6, Loicq/wlogin_sdk/request/u;->C:[B

    invoke-direct {v15, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v18, p2

    move-wide/from16 v20, p5

    move-object/from16 v22, p7

    invoke-direct/range {v13 .. v22}, Loicq/wlogin_sdk/report/report_t2;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ[J)V

    invoke-virtual {v4, v13}, Loicq/wlogin_sdk/report/report_t1;->add_t2(Loicq/wlogin_sdk/report/report_t2;)V

    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_8

    const/4 v5, 0x0

    :cond_8
    :goto_3
    if-eqz p9, :cond_11

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_11

    if-eqz p8, :cond_10

    :try_start_0
    const-string v4, "ISO-8859-1"

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, v37

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    move-wide/from16 v38, v6

    move v6, v5

    move-wide/from16 v4, v38

    :goto_5
    if-nez v6, :cond_18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Loicq/wlogin_sdk/tools/util;->MAX_NAME_LEN:I

    if-le v4, v5, :cond_17

    const/16 v10, -0x3f0

    :cond_9
    :goto_6
    const/16 v4, 0x80

    move-object/from16 v0, p10

    invoke-static {v0, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    if-nez v4, :cond_a

    new-instance v4, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v4}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    :cond_a
    sget-object v5, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v36

    iget-object v8, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v10}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v9

    invoke-virtual/range {v5 .. v10}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    if-nez v10, :cond_22

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_b

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v5, v5

    if-eqz v5, :cond_b

    const/4 v13, 0x0

    iget-object v14, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v15, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v18, v0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v19}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    :cond_b
    :goto_7
    move-object/from16 v0, v36

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    if-eqz v5, :cond_c

    move-object/from16 v0, v36

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    invoke-virtual {v5}, Loicq/wlogin_sdk/b/au;->a()I

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v36

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    iput-object v6, v5, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    const/4 v13, 0x0

    iget-object v14, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v15, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    :cond_c
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    invoke-virtual/range {v36 .. v36}, Loicq/wlogin_sdk/request/u;->h()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end GetStWithPasswd:user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwMainSigMap:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v4

    iget-wide v6, v4, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p10

    iput-wide v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    iget-wide v6, v4, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    move-object/from16 v36, v4

    goto/16 :goto_1

    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    goto/16 :goto_2

    :cond_f
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto/16 :goto_3

    :catch_0
    move-exception v4

    const/16 v10, -0x3f5

    goto/16 :goto_6

    :cond_10
    invoke-static/range {p9 .. p9}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    if-eqz v4, :cond_14

    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    array-length v4, v4

    if-lez v4, :cond_14

    const-string v4, "GetFastLoginInfo ..."

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v4, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetFastLoginInfo([BLoicq/wlogin_sdk/request/async_context;)I

    move-result v4

    if-gez v4, :cond_12

    const-string v4, "GetFastLoginInfo failed"

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, -0x3f9

    goto/16 :goto_6

    :cond_12
    const-string v4, "([0-9]{5,10})@qq\\.com"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    const-string v5, "$1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_8
    move-wide/from16 v38, v4

    move v5, v6

    move-wide/from16 v6, v38

    :goto_9
    move-object/from16 v0, v37

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    if-eqz v4, :cond_13

    move-object/from16 v0, v37

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    array-length v4, v4

    const/16 v8, 0x10

    if-ge v4, v8, :cond_16

    :cond_13
    const/16 v10, -0x3f8

    goto/16 :goto_6

    :cond_14
    sget-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    if-eqz v4, :cond_15

    sget-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    array-length v4, v4

    if-lez v4, :cond_15

    sget-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    sget-object v4, Loicq/wlogin_sdk/code2d/c;->r:[B

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    const/4 v4, 0x0

    sput-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    const/4 v4, 0x0

    sput-object v4, Loicq/wlogin_sdk/code2d/c;->r:[B

    goto :goto_9

    :cond_15
    invoke-direct/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetA1ByAccount(Ljava/lang/String;J)[B

    move-result-object v4

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    invoke-direct/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetNoPicSigByAccount(Ljava/lang/String;J)[B

    move-result-object v4

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    goto :goto_9

    :cond_16
    const/4 v4, 0x1

    move-object/from16 v0, v37

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    move-wide/from16 v38, v6

    move v6, v5

    move-wide/from16 v4, v38

    goto/16 :goto_5

    :cond_17
    new-instance v5, Loicq/wlogin_sdk/request/t;

    move-object/from16 v0, v36

    invoke-direct {v5, v0}, Loicq/wlogin_sdk/request/t;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v10, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    sget v13, Loicq/wlogin_sdk/request/u;->y:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v18, v0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p5

    move-object/from16 v19, p7

    move-object/from16 v20, p10

    invoke-virtual/range {v5 .. v20}, Loicq/wlogin_sdk/request/t;->a(JJII[BIIIIII[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    if-nez v10, :cond_9

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v37

    iget-wide v6, v0, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_18

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_18

    const/16 v10, -0x3eb

    goto/16 :goto_6

    :cond_18
    move-wide v6, v4

    sget-wide v4, Loicq/wlogin_sdk/a/j;->y:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_19

    sget-wide v4, Loicq/wlogin_sdk/a/j;->y:J

    move-object/from16 v0, v37

    iput-wide v4, v0, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    const-wide/16 v4, 0x0

    sput-wide v4, Loicq/wlogin_sdk/a/j;->y:J

    :cond_19
    move-object/from16 v0, v36

    iput-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p10

    iput-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    if-eqz v4, :cond_1d

    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    array-length v4, v4

    if-lez v4, :cond_1d

    move-object/from16 v0, p10

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object/from16 v34, v4

    :goto_a
    move-object/from16 v0, v37

    iget v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    if-eqz v4, :cond_1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " login with saved A1."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    invoke-direct {v13, v0, v4}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;Landroid/content/Context;)V

    invoke-virtual {v13}, Loicq/wlogin_sdk/request/l;->g()V

    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    sget-object v21, Loicq/wlogin_sdk/request/u;->ad:[B

    move-object/from16 v0, v37

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v25, v0

    sget v30, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    move-wide/from16 v14, p2

    move-wide/from16 v16, p5

    move-object/from16 v26, p7

    move/from16 v27, v11

    move-wide/from16 v28, p5

    move-object/from16 v35, p10

    invoke-virtual/range {v13 .. v35}, Loicq/wlogin_sdk/request/l;->a(JJJI[B[B[BII[JIJIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    :goto_b
    const/16 v4, 0xcc

    if-ne v10, v4, :cond_1a

    new-instance v4, Loicq/wlogin_sdk/request/q;

    move-object/from16 v0, v36

    invoke-direct {v4, v0}, Loicq/wlogin_sdk/request/q;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, p7

    move-object/from16 v1, p10

    invoke-virtual {v4, v5, v8, v0, v1}, Loicq/wlogin_sdk/request/q;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    :cond_1a
    if-eqz v10, :cond_1b

    const/16 v4, 0xa0

    if-ne v10, v4, :cond_9

    :cond_1b
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-nez v4, :cond_1c

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v36

    iput-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p10

    iput-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    :cond_1c
    const/16 v4, 0xa0

    if-eq v10, v4, :cond_9

    move-object/from16 v0, v36

    move-wide/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    if-nez v4, :cond_20

    const/16 v10, -0x3ec

    goto/16 :goto_6

    :cond_1d
    sget-object v34, Loicq/wlogin_sdk/request/u;->aa:[B

    goto/16 :goto_a

    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " login with input password."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    new-array v0, v4, [B

    move-object/from16 v21, v0

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    sget-wide v12, Loicq/wlogin_sdk/request/u;->ac:J

    add-long/2addr v8, v12

    move-object/from16 v0, v21

    invoke-static {v0, v4, v8, v9}, Loicq/wlogin_sdk/tools/util;->int64_to_buf32([BIJ)V

    if-eqz p12, :cond_1f

    const/16 v23, 0x3

    :goto_c
    new-instance v12, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    invoke-direct {v12, v0, v4}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;Landroid/content/Context;)V

    invoke-virtual {v12}, Loicq/wlogin_sdk/request/l;->g()V

    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v17, v0

    const/16 v19, 0x0

    sget-object v20, Loicq/wlogin_sdk/request/u;->ad:[B

    move-object/from16 v0, v37

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v25, v0

    sget v30, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p5

    move-object/from16 v26, p7

    move/from16 v27, v11

    move-wide/from16 v28, p5

    move-object/from16 v35, p10

    invoke-virtual/range {v12 .. v35}, Loicq/wlogin_sdk/request/l;->a(JJJI[B[B[BIII[JIJIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    goto/16 :goto_b

    :cond_1f
    const/16 v23, 0x1

    goto :goto_c

    :cond_20
    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    if-eqz p7, :cond_9

    if-eqz p11, :cond_9

    move-object/from16 v0, p7

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p11

    array-length v5, v0

    if-ne v4, v5, :cond_9

    const/4 v4, 0x0

    move v5, v4

    :goto_d
    if-eqz p7, :cond_9

    move-object/from16 v0, p7

    array-length v4, v0

    if-ge v5, v4, :cond_9

    aget-wide v8, p7, v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7, v8, v9}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v8

    if-eqz v8, :cond_21

    mul-int/lit8 v9, v5, 0x2

    iget-object v4, v8, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, p11, v9

    mul-int/lit8 v4, v5, 0x2

    add-int/lit8 v9, v4, 0x1

    iget-object v4, v8, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, p11, v9

    :cond_21
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_d

    :cond_22
    const/4 v5, 0x2

    if-eq v10, v5, :cond_b

    const/16 v5, 0xa0

    if-eq v10, v5, :cond_b

    const/4 v13, 0x0

    iget-object v14, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v15, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_7

    :cond_23
    move-wide/from16 v38, v6

    move v6, v5

    move-wide/from16 v4, v38

    goto/16 :goto_8
.end method

.method private GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I
    .locals 46

    if-eqz p1, :cond_0

    if-nez p12, :cond_1

    :cond_0
    const/16 v10, -0x3f9

    :goto_0
    return v10

    :cond_1
    move/from16 v0, p8

    or-int/lit16 v0, v0, 0xc0

    move/from16 v16, v0

    const-wide/16 v4, 0x2

    cmp-long v4, v4, p9

    if-nez v4, :cond_2

    const v4, -0x2000001

    and-int v16, v16, v4

    :cond_2
    if-nez p15, :cond_3

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v23, "GetStWithoutPasswd"

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p16

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    move-wide/from16 v17, p9

    move-object/from16 v19, p11

    move-object/from16 v20, p12

    move-object/from16 v21, p13

    move-object/from16 v22, p14

    invoke-direct/range {v4 .. v23}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Loicq/wlogin_sdk/request/WtTicketPromise;Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BLjava/lang/String;)V

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v10, -0x3e9

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v43

    move-object/from16 v0, v43

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p12

    iput-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    move-object/from16 v0, v43

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v44

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start GetStWithoutPasswd:user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSrcAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwDstAppPri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwMainSigMap:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p9

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->get_network_type(Landroid/content/Context;)I

    move-result v5

    sput v5, Loicq/wlogin_sdk/request/u;->D:I

    sget v5, Loicq/wlogin_sdk/request/u;->D:I

    if-eq v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    sget v5, Loicq/wlogin_sdk/request/u;->D:I

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->save_network_type(Landroid/content/Context;I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_apn_string(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sput-object v4, Loicq/wlogin_sdk/request/u;->F:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    const-wide/16 v4, 0x0

    move-object/from16 v0, v43

    iput-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v0, p2

    move-object/from16 v2, v44

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    move-wide/from16 v0, p4

    move-object/from16 v2, v44

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v0, p9

    move-object/from16 v2, v44

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move/from16 v0, v16

    move-object/from16 v1, v44

    iput v0, v1, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    new-instance v4, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v4}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    move-object/from16 v0, v44

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    if-eqz p11, :cond_5

    invoke-virtual/range {p11 .. p11}, [J->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    move-object/from16 v0, v44

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    :cond_5
    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v4, :cond_9

    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v4, v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_9

    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v4

    move-object/from16 v0, v43

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSF SSO SEQ:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    iget v5, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v4, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    new-instance v5, Loicq/wlogin_sdk/report/report_t2;

    const-string v6, "exchg"

    new-instance v7, Ljava/lang/String;

    sget-object v8, Loicq/wlogin_sdk/request/u;->C:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide/from16 v10, p4

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-direct/range {v5 .. v14}, Loicq/wlogin_sdk/report/report_t2;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ[J)V

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/report/report_t1;->add_t2(Loicq/wlogin_sdk/report/report_t2;)V

    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    cmp-long v4, v9, v4

    if-nez v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " have not found uin record."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, -0x3eb

    :goto_2
    const/16 v4, 0x80

    move-object/from16 v0, p12

    invoke-static {v0, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    if-nez v4, :cond_6

    new-instance v4, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v4}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    :cond_6
    sget-object v5, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v43

    iget-object v8, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v10}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v9

    invoke-virtual/range {v5 .. v10}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    if-nez v10, :cond_1a

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_7

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v5, v5

    if-eqz v5, :cond_7

    const/16 v19, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v20, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v24, v0

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v25}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    :cond_7
    :goto_3
    move-object/from16 v0, v43

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    if-eqz v5, :cond_8

    move-object/from16 v0, v43

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    invoke-virtual {v5}, Loicq/wlogin_sdk/b/au;->a()I

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v43

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    iput-object v6, v5, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    const/16 v19, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v20, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v24, v0

    const/16 v26, 0x1

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v26}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    :cond_8
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    invoke-virtual/range {v43 .. v43}, Loicq/wlogin_sdk/request/u;->h()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end GetStWithoutPasswd:user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSrcAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwDstAppPri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwMainSigMap:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dwSubDstAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p9

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, v43

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    goto/16 :goto_1

    :cond_a
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    :cond_b
    move-object/from16 v0, v43

    iput-wide v9, v0, Loicq/wlogin_sdk/request/u;->f:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p12

    iput-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    if-eqz p14, :cond_e

    move-object/from16 v0, p14

    array-length v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_e

    const/4 v4, 0x0

    aget-object v4, p14, v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    aget-object v4, p14, v4

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    const/4 v4, 0x0

    aget-object v4, p14, v4

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exchange A2 from A2/D2/KEY."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, p14, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    aget-object v4, p14, v4

    array-length v4, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x2

    aget-object v4, p14, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x2

    aget-object v4, p14, v4

    array-length v4, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x3

    aget-object v4, p14, v4

    if-eqz v4, :cond_c

    const/4 v4, 0x3

    aget-object v4, p14, v4

    array-length v4, v4

    if-nez v4, :cond_d

    :cond_c
    const/16 v10, -0x3ec

    goto/16 :goto_2

    :cond_d
    const/4 v4, 0x3

    aget-object v4, p14, v4

    invoke-static {v4}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v4

    move-object/from16 v0, v43

    iput-object v4, v0, Loicq/wlogin_sdk/request/u;->b:[B

    new-instance v8, Loicq/wlogin_sdk/request/n;

    move-object/from16 v0, v43

    invoke-direct {v8, v0}, Loicq/wlogin_sdk/request/n;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v15, 0x1

    const/4 v4, 0x1

    aget-object v17, p14, v4

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v19, v0

    const/4 v4, 0x2

    aget-object v21, p14, v4

    move-wide/from16 v11, p4

    move-wide/from16 v13, p9

    move-object/from16 v20, p11

    move-object/from16 v22, p12

    invoke-virtual/range {v8 .. v22}, Loicq/wlogin_sdk/request/n;->a(JJJII[BII[J[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v6

    :goto_4
    if-nez v6, :cond_1b

    move-object/from16 v0, v43

    move-wide/from16 v1, p4

    invoke-virtual {v0, v9, v10, v1, v2}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    if-nez v4, :cond_18

    const/16 v10, -0x3ec

    goto/16 :goto_2

    :cond_e
    if-eqz p14, :cond_11

    move-object/from16 v0, p14

    array-length v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_11

    const/4 v4, 0x0

    aget-object v4, p14, v4

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    aget-object v4, p14, v4

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    const/4 v4, 0x0

    aget-object v4, p14, v4

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exchange A2 from A2/A2KEY."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, p14, v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    aget-object v4, p14, v4

    array-length v4, v4

    if-eqz v4, :cond_f

    const/4 v4, 0x2

    aget-object v4, p14, v4

    if-eqz v4, :cond_f

    const/4 v4, 0x2

    aget-object v4, p14, v4

    array-length v4, v4

    if-nez v4, :cond_10

    :cond_f
    const/16 v10, -0x3ec

    goto/16 :goto_2

    :cond_10
    const/4 v4, 0x2

    aget-object v4, p14, v4

    move-object/from16 v0, v43

    iput-object v4, v0, Loicq/wlogin_sdk/request/u;->b:[B

    new-instance v8, Loicq/wlogin_sdk/request/n;

    move-object/from16 v0, v43

    invoke-direct {v8, v0}, Loicq/wlogin_sdk/request/n;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v15, 0x1

    const/4 v4, 0x1

    aget-object v17, p14, v4

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v19, v0

    const/16 v21, 0x0

    move-wide/from16 v11, p4

    move-wide/from16 v13, p9

    move-object/from16 v20, p11

    move-object/from16 v22, p12

    invoke-virtual/range {v8 .. v22}, Loicq/wlogin_sdk/request/n;->a(JJJII[BII[J[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v6

    goto/16 :goto_4

    :cond_11
    invoke-virtual/range {v43 .. v43}, Loicq/wlogin_sdk/request/u;->j()V

    move-object/from16 v0, v43

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetA1ByAccount(Ljava/lang/String;J)[B

    move-result-object v26

    move-object/from16 v0, v43

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v4, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetNoPicSigByAccount(Ljava/lang/String;J)[B

    move-result-object v27

    if-eqz v26, :cond_15

    move-object/from16 v0, v26

    array-length v4, v0

    if-lez v4, :cond_15

    if-eqz v27, :cond_15

    move-object/from16 v0, v27

    array-length v4, v0

    if-lez v4, :cond_15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exchange A2 from A1."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    iput-object v0, v1, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    if-eqz v4, :cond_14

    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    array-length v4, v4

    if-lez v4, :cond_14

    move-object/from16 v0, p12

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object/from16 v39, v4

    :goto_5
    new-instance v18, Loicq/wlogin_sdk/request/z;

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Loicq/wlogin_sdk/request/z;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v9, v10, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    if-eqz v4, :cond_12

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/z;->a(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    :cond_12
    const/16 v21, 0x1

    move-object/from16 v0, v43

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v22, v0

    const/16 v24, 0x0

    sget-object v25, Loicq/wlogin_sdk/request/u;->ad:[B

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v29, v0

    const/16 v34, 0x1

    sget v35, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x1

    move-wide/from16 v19, p4

    move-object/from16 v30, p11

    move/from16 v31, v16

    move-wide/from16 v32, p9

    move-wide/from16 v40, p2

    move-object/from16 v42, p12

    invoke-virtual/range {v18 .. v42}, Loicq/wlogin_sdk/request/z;->a(JIJI[B[B[BII[JIJIIIII[BJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    const/16 v5, 0xcc

    if-ne v4, v5, :cond_13

    new-instance v4, Loicq/wlogin_sdk/request/q;

    move-object/from16 v0, v43

    invoke-direct {v4, v0}, Loicq/wlogin_sdk/request/q;-><init>(Loicq/wlogin_sdk/request/u;)V

    move-object/from16 v0, p0

    iget v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, p11

    move-object/from16 v1, p12

    invoke-virtual {v4, v5, v6, v0, v1}, Loicq/wlogin_sdk/request/q;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    :cond_13
    move v6, v4

    goto/16 :goto_4

    :cond_14
    sget-object v39, Loicq/wlogin_sdk/request/u;->aa:[B

    goto :goto_5

    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exchange A2 from A2."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-wide/from16 v1, p2

    invoke-virtual {v0, v9, v10, v1, v2}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    if-eqz v4, :cond_16

    iget-object v5, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    if-eqz v5, :cond_16

    iget-object v5, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    array-length v5, v5

    if-eqz v5, :cond_16

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->iSExpireA2(J)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_16
    const/16 v10, -0x3ec

    goto/16 :goto_2

    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exchange A2 from A2 without Priority."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    iget-wide v12, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->printTicket(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    iget-object v5, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGTKey:[B

    move-object/from16 v0, v43

    iput-object v5, v0, Loicq/wlogin_sdk/request/u;->b:[B

    new-instance v8, Loicq/wlogin_sdk/request/n;

    move-object/from16 v0, v43

    invoke-direct {v8, v0}, Loicq/wlogin_sdk/request/n;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v15, 0x1

    iget-object v0, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v19, v0

    const/16 v21, 0x0

    move-wide/from16 v11, p4

    move-wide/from16 v13, p9

    move-object/from16 v20, p11

    move-object/from16 v22, p12

    invoke-virtual/range {v8 .. v22}, Loicq/wlogin_sdk/request/n;->a(JJJII[BII[J[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v6

    goto/16 :goto_4

    :cond_18
    move-object/from16 v0, p12

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    if-eqz p11, :cond_1b

    if-eqz p13, :cond_1b

    move-object/from16 v0, p11

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p13

    array-length v5, v0

    if-ne v4, v5, :cond_1b

    const/4 v4, 0x0

    move v5, v4

    :goto_6
    move-object/from16 v0, p11

    array-length v4, v0

    if-ge v5, v4, :cond_1b

    aget-wide v12, p11, v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v9, v10, v12, v13}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v7

    if-eqz v7, :cond_19

    mul-int/lit8 v8, v5, 0x2

    iget-object v4, v7, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, p13, v8

    mul-int/lit8 v4, v5, 0x2

    add-int/lit8 v8, v4, 0x1

    iget-object v4, v7, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    aput-object v4, p13, v8

    :cond_19
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_6

    :cond_1a
    const/16 v19, 0x0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v20, v0

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v43

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v26}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_3

    :cond_1b
    move v10, v6

    goto/16 :goto_2
.end method

.method private GetStWithoutPasswd(Ljava/lang/String;JJJILoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WtTicketPromise;)I
    .locals 18

    const-wide/16 v6, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    check-cast v13, [[B

    const/4 v14, 0x0

    check-cast v14, [[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p8

    move-wide/from16 v9, p6

    move-object/from16 v12, p9

    move-object/from16 v16, p10

    invoke-direct/range {v0 .. v16}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v0

    return v0
.end method

.method public static GetTicketSig(Loicq/wlogin_sdk/request/WUserSigInfo;I)[B
    .locals 1

    invoke-static {p0, p1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static GetTicketSigKey(Loicq/wlogin_sdk/request/WUserSigInfo;I)[B
    .locals 1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_0

    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4000

    if-eq p1, v0, :cond_0

    const v0, 0x8000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x1000000

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    invoke-static {p0, p1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;
    .locals 9

    const-wide/16 v6, 0x0

    const/high16 v8, 0x4000000

    const/high16 v1, 0x400000

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    const-string v0, "get lhsig"

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    sget-object v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_LHSig:[B

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v4

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    :goto_0
    return-object v0

    :cond_0
    if-ne p1, v8, :cond_1

    const-string v0, "get qrpushsig"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Loicq/wlogin_sdk/request/Ticket;

    sget-object v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_QRPUSHSig:[B

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v4

    move v1, v8

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/Ticket;-><init>(I[B[BJJ)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userInfo is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tickets is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetUserSigInfoTicket ticket type:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/request/Ticket;

    iget v2, v0, Loicq/wlogin_sdk/request/Ticket;->_type:I

    if-ne v2, p1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetUserSigInfoTicket type:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->buf_len([B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " create time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Loicq/wlogin_sdk/request/Ticket;->_create_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expire time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Loicq/wlogin_sdk/request/Ticket;->_expire_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    move-object v0, v3

    goto/16 :goto_0
.end method

.method private OnDeviceLockRequest(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 10

    sget-object v2, Loicq/wlogin_sdk/devicelock/DevlockBase;->rst:Loicq/wlogin_sdk/devicelock/DevlockRst;

    new-instance v3, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    invoke-direct {v3}, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;-><init>()V

    iput-object v3, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->commRsp:Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    new-instance v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;

    invoke-direct {v3}, Loicq/wlogin_sdk/devicelock/DevlockInfo;-><init>()V

    new-instance v4, Loicq/wlogin_sdk/tools/ErrMsg;

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    invoke-direct {v4, v5, v6, v7, v8}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p8, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnDeviceLockRequest ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p8 .. p8}, Loicq/wlogin_sdk/tools/util;->get_error_msg(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/tools/ErrMsg;->setMessage(Ljava/lang/String;)V

    sget-object v5, Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;->MSG_5:Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/InternationMsg;->a(Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/tools/ErrMsg;->setTitle(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-nez p8, :cond_5

    new-instance v5, Loicq/wlogin_sdk/devicelock/a;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/a;-><init>()V

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Loicq/wlogin_sdk/devicelock/a;->parse_rsp([B)I

    move-result p8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDevLockStatus ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, -0x3f1

    move/from16 v0, p8

    if-eq v0, v5, :cond_5

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->commRsp:Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    invoke-direct {p0, v5, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->tlvCommRsp2ErrMsg(Loicq/wlogin_sdk/devicelock/TLV_CommRsp;Loicq/wlogin_sdk/tools/ErrMsg;)V

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    if-eqz v5, :cond_2

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/i;->get_data_len()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/i;->a:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->DevSetup:I

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/i;->b:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->AllowSet:I

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devGuideInfo:Loicq/wlogin_sdk/devicelock/h;

    if-eqz v5, :cond_6

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devGuideInfo:Loicq/wlogin_sdk/devicelock/h;

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/h;->get_data_len()I

    move-result v5

    if-lez v5, :cond_6

    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devGuideInfo:Loicq/wlogin_sdk/devicelock/h;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/h;->a:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->ProtectIntro:Ljava/lang/String;

    :goto_1
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/i;->g:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->WarningInfo:Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/i;->e:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->WarningTitle:Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/i;->f:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->WarningMsg:Ljava/lang/String;

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/i;->c:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->WarningInfoType:I

    :cond_2
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    if-eqz v5, :cond_3

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/k;->get_data_len()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/k;->a:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->CountryCode:Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/k;->b:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->Mobile:Ljava/lang/String;

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/k;->c:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbItemSmsCodeStatus:I

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/k;->d:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->AvailableMsgCount:I

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbMobileInfo:Loicq/wlogin_sdk/devicelock/k;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/k;->e:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->TimeLimit:I

    :cond_3
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    if-eqz v5, :cond_4

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/j;->get_data_len()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/j;->c:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideType:I

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/j;->d:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideInfoType:I

    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/j;->b:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideInfo:Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->mbGuideInfo:Loicq/wlogin_sdk/devicelock/j;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/j;->a:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->MbGuideMsg:Ljava/lang/String;

    :cond_4
    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->transferInfo:Loicq/wlogin_sdk/devicelock/e;

    if-eqz v5, :cond_5

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->transferInfo:Loicq/wlogin_sdk/devicelock/e;

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/e;->get_data_len()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v2, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->transferInfo:Loicq/wlogin_sdk/devicelock/e;

    invoke-virtual {v2}, Loicq/wlogin_sdk/devicelock/e;->get_data()[B

    move-result-object v2

    iput-object v2, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->TransferInfo:[B

    :cond_5
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v3, v1, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnCheckDevLockStatus(Loicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/devicelock/DevlockInfo;ILoicq/wlogin_sdk/tools/ErrMsg;)V

    goto/16 :goto_0

    :cond_6
    new-instance v5, Ljava/lang/String;

    iget-object v6, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->devSetupInfo:Loicq/wlogin_sdk/devicelock/i;

    iget-object v6, v6, Loicq/wlogin_sdk/devicelock/i;->d:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->ProtectIntro:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_2
    if-nez p8, :cond_9

    new-instance v3, Loicq/wlogin_sdk/devicelock/b;

    invoke-direct {v3}, Loicq/wlogin_sdk/devicelock/b;-><init>()V

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Loicq/wlogin_sdk/devicelock/b;->parse_rsp([B)I

    move-result p8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CloseDevLock ret:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0x3f1

    move/from16 v0, p8

    if-eq v0, v3, :cond_9

    iget-object v2, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->commRsp:Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    invoke-direct {p0, v2, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->tlvCommRsp2ErrMsg(Loicq/wlogin_sdk/devicelock/TLV_CommRsp;Loicq/wlogin_sdk/tools/ErrMsg;)V

    :try_start_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v2, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v2

    :goto_2
    iget-object v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v5, v2, v3, p2, p3}, Loicq/wlogin_sdk/request/u;->b(JJ)I

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    move-object/from16 v0, p7

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_9

    move-object/from16 v0, p7

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loicq/wlogin_sdk/request/Ticket;

    iget v2, v2, Loicq/wlogin_sdk/request/Ticket;->_type:I

    const/high16 v5, 0x2000000

    if-ne v2, v5, :cond_7

    move-object/from16 v0, p7

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_tickets:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_8
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;)V

    :cond_9
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnCloseDevLock(Loicq/wlogin_sdk/request/WUserSigInfo;ILoicq/wlogin_sdk/tools/ErrMsg;)V

    goto/16 :goto_0

    :pswitch_3
    if-nez p8, :cond_a

    new-instance v5, Loicq/wlogin_sdk/devicelock/d;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/d;-><init>()V

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Loicq/wlogin_sdk/devicelock/d;->parse_rsp([B)I

    move-result p8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AskDevLockSms ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, -0x3f1

    move/from16 v0, p8

    if-eq v0, v5, :cond_a

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->commRsp:Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    invoke-direct {p0, v5, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->tlvCommRsp2ErrMsg(Loicq/wlogin_sdk/devicelock/TLV_CommRsp;Loicq/wlogin_sdk/tools/ErrMsg;)V

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->smsInfo:Loicq/wlogin_sdk/devicelock/m;

    if-eqz v5, :cond_a

    iget-object v5, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->smsInfo:Loicq/wlogin_sdk/devicelock/m;

    iget v5, v5, Loicq/wlogin_sdk/devicelock/m;->a:I

    iput v5, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->AvailableMsgCount:I

    iget-object v2, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->smsInfo:Loicq/wlogin_sdk/devicelock/m;

    iget v2, v2, Loicq/wlogin_sdk/devicelock/m;->b:I

    iput v2, v3, Loicq/wlogin_sdk/devicelock/DevlockInfo;->TimeLimit:I

    :cond_a
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v3, v1, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnAskDevLockSms(Loicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/devicelock/DevlockInfo;ILoicq/wlogin_sdk/tools/ErrMsg;)V

    goto/16 :goto_0

    :pswitch_4
    if-nez p8, :cond_b

    new-instance v3, Loicq/wlogin_sdk/devicelock/f;

    invoke-direct {v3}, Loicq/wlogin_sdk/devicelock/f;-><init>()V

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Loicq/wlogin_sdk/devicelock/f;->parse_rsp([B)I

    move-result p8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckDevLockSms ret:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0x3f1

    move/from16 v0, p8

    if-eq v0, v3, :cond_b

    iget-object v2, v2, Loicq/wlogin_sdk/devicelock/DevlockRst;->commRsp:Loicq/wlogin_sdk/devicelock/TLV_CommRsp;

    invoke-direct {p0, v2, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->tlvCommRsp2ErrMsg(Loicq/wlogin_sdk/devicelock/TLV_CommRsp;Loicq/wlogin_sdk/tools/ErrMsg;)V

    :cond_b
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnCheckDevLockSms(Loicq/wlogin_sdk/request/WUserSigInfo;ILoicq/wlogin_sdk/tools/ErrMsg;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private OnRequestCode2d(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 12

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v11, Loicq/wlogin_sdk/code2d/b;->_status:Loicq/wlogin_sdk/code2d/c;

    if-eqz p8, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnRequestCode2d ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const-string v2, "OnRequestName unhandle cmd"

    const-string v3, ""

    invoke-static {v2, v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    new-instance v3, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v3}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    const/16 v4, 0x9

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v4, v0}, Loicq/wlogin_sdk/request/WtloginListener;->OnException(Loicq/wlogin_sdk/tools/ErrMsg;ILoicq/wlogin_sdk/request/WUserSigInfo;)V

    goto :goto_0

    :sswitch_0
    if-eqz p8, :cond_2

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v5, v11, Loicq/wlogin_sdk/code2d/c;->d:[B

    iget-wide v6, v11, Loicq/wlogin_sdk/code2d/c;->c:J

    iget-object v8, v11, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    iget-object v10, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    move-object v4, p1

    move-object/from16 v9, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Loicq/wlogin_sdk/request/WtloginListener;->OnVerifyCode(Ljava/lang/String;[BJLjava/util/List;Loicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto :goto_0

    :cond_2
    new-instance v2, Loicq/wlogin_sdk/code2d/e;

    invoke-direct {v2}, Loicq/wlogin_sdk/code2d/e;-><init>()V

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/code2d/e;->a([B)I

    move-result v2

    iput v2, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VerifyCode ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    if-nez v2, :cond_3

    iget-object v2, v11, Loicq/wlogin_sdk/code2d/c;->g:[B

    if-eqz v2, :cond_3

    iget-object v2, v11, Loicq/wlogin_sdk/code2d/c;->g:[B

    array-length v2, v2

    if-lez v2, :cond_3

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-wide v4, v11, Loicq/wlogin_sdk/code2d/c;->a:J

    iget-object v8, v11, Loicq/wlogin_sdk/code2d/c;->g:[B

    move-wide v6, p2

    invoke-virtual/range {v3 .. v8}, Loicq/wlogin_sdk/request/u;->a(JJ[B)I

    :cond_3
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v5, v11, Loicq/wlogin_sdk/code2d/c;->d:[B

    iget-wide v6, v11, Loicq/wlogin_sdk/code2d/c;->c:J

    iget-object v8, v11, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    iget-object v10, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    iget v11, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    move-object v4, p1

    move-object/from16 v9, p7

    invoke-virtual/range {v3 .. v11}, Loicq/wlogin_sdk/request/WtloginListener;->OnVerifyCode(Ljava/lang/String;[BJLjava/util/List;Loicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto/16 :goto_0

    :sswitch_1
    if-eqz p8, :cond_4

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v5, v11, Loicq/wlogin_sdk/code2d/c;->d:[B

    iget-wide v6, v11, Loicq/wlogin_sdk/code2d/c;->c:J

    iget-object v9, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    move-object v4, p1

    move-object/from16 v8, p7

    move/from16 v10, p8

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnCloseCode(Ljava/lang/String;[BJLoicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto/16 :goto_0

    :cond_4
    new-instance v2, Loicq/wlogin_sdk/code2d/a;

    invoke-direct {v2}, Loicq/wlogin_sdk/code2d/a;-><init>()V

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    sget-object v4, Loicq/wlogin_sdk/request/u;->t:Landroid/content/Context;

    invoke-virtual {v2, v3, p2, p3, v4}, Loicq/wlogin_sdk/code2d/a;->a([BJLandroid/content/Context;)I

    move-result v2

    iput v2, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloseCode ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-boolean v2, Loicq/wlogin_sdk/code2d/c;->s:Z

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v5, v11, Loicq/wlogin_sdk/code2d/c;->d:[B

    iget-wide v6, v11, Loicq/wlogin_sdk/code2d/c;->c:J

    iget-object v9, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    iget v10, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    move-object v4, p1

    move-object/from16 v8, p7

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnCloseCode(Ljava/lang/String;[BJLoicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto/16 :goto_0

    :sswitch_2
    if-nez p8, :cond_6

    new-instance v2, Loicq/wlogin_sdk/code2d/fetch_code;

    invoke-direct {v2}, Loicq/wlogin_sdk/code2d/fetch_code;-><init>()V

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/code2d/fetch_code;->get_response([B)I

    move-result v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchCodeSig ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v3, v11, Loicq/wlogin_sdk/code2d/c;->j:[B

    iget-wide v4, v11, Loicq/wlogin_sdk/code2d/c;->k:J

    iget v6, v11, Loicq/wlogin_sdk/code2d/c;->l:I

    int-to-long v6, v6

    iget-object v9, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnFetchCodeSig([BJJLoicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto/16 :goto_0

    :sswitch_3
    if-nez p8, :cond_5

    new-instance v2, Loicq/wlogin_sdk/code2d/d;

    invoke-direct {v2}, Loicq/wlogin_sdk/code2d/d;-><init>()V

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/code2d/d;->a([B)I

    move-result v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryCodeResult ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Loicq/wlogin_sdk/code2d/c;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-wide v3, v11, Loicq/wlogin_sdk/code2d/c;->a:J

    iget-object v5, v11, Loicq/wlogin_sdk/code2d/c;->e:Ljava/util/List;

    iget-wide v6, v11, Loicq/wlogin_sdk/code2d/c;->c:J

    iget-object v9, v11, Loicq/wlogin_sdk/code2d/c;->f:[B

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnQueryCodeResult(JLjava/util/List;JLoicq/wlogin_sdk/request/WUserSigInfo;[BI)V

    goto/16 :goto_0

    :cond_5
    move/from16 v10, p8

    goto :goto_2

    :cond_6
    move/from16 v10, p8

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_3
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x31 -> :sswitch_2
    .end sparse-switch
.end method

.method private OnRequestRegister(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 11

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;->MSG_3:Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/InternationMsg;->a(Loicq/wlogin_sdk/tools/InternationMsg$MSG_TYPE;)Ljava/lang/String;

    move-result-object v2

    if-eqz p8, :cond_2

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v3, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto :goto_0

    :cond_2
    iget-object v10, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnRequestRegister unhandle cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    const/16 v4, -0x3f2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v3, v0, v4, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->a([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    if-nez v2, :cond_4

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->m:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->n:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckDownloadMsg(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    :cond_4
    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    new-instance v3, Ljava/lang/String;

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->q:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckUploadMsg(Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->r:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckValidUrl(Loicq/wlogin_sdk/request/WUserSigInfo;[B)V

    goto/16 :goto_0

    :cond_6
    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_7

    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_9

    :cond_7
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    new-instance v3, Ljava/lang/String;

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->r:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/String;

    iget-object v5, v10, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckWebSig(Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, v10, Loicq/wlogin_sdk/a/j;->r:[B

    goto/16 :goto_0

    :cond_9
    const-string v2, "OnRequestRegister 0xa return code:"

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->a([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    if-eqz v3, :cond_a

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    if-eqz v2, :cond_b

    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_b

    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_b

    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/16 v3, 0x76

    if-ne v2, v3, :cond_c

    :cond_b
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v4, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget v5, v10, Loicq/wlogin_sdk/a/j;->s:I

    iget v6, v10, Loicq/wlogin_sdk/a/j;->t:I

    new-instance v7, Ljava/lang/String;

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->f:[B

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v3, p7

    invoke-virtual/range {v2 .. v7}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegQueryClientSentMsgStatus(Loicq/wlogin_sdk/request/WUserSigInfo;IIILjava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->r:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckValidUrl(Loicq/wlogin_sdk/request/WUserSigInfo;[B)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "OnRequestRegister 0x3 return code:"

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->a([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    if-eqz v3, :cond_e

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    if-nez v2, :cond_f

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget v4, v10, Loicq/wlogin_sdk/a/j;->s:I

    iget v5, v10, Loicq/wlogin_sdk/a/j;->t:I

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4, v5}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegRequestServerResendMsg(Loicq/wlogin_sdk/request/WUserSigInfo;III)V

    goto/16 :goto_0

    :cond_f
    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->r:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegCheckValidUrl(Loicq/wlogin_sdk/request/WUserSigInfo;[B)V

    goto/16 :goto_0

    :cond_10
    iget v2, v10, Loicq/wlogin_sdk/a/j;->d:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_11

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget v4, v10, Loicq/wlogin_sdk/a/j;->s:I

    iget v5, v10, Loicq/wlogin_sdk/a/j;->t:I

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4, v5}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegRequestServerResendMsg(Loicq/wlogin_sdk/request/WUserSigInfo;III)V

    goto/16 :goto_0

    :cond_11
    const-string v2, "OnRequestRegister 0x4 return code:"

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Loicq/wlogin_sdk/tools/util;->LOGW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->b([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    if-eqz v3, :cond_12

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    :cond_12
    iget-object v2, v10, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    move-object/from16 v0, p7

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->regTLVMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v10, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegSubmitMsgChk(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->c([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    if-eqz v3, :cond_13

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    iget-object v2, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_14

    iget-object v2, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    :cond_14
    :goto_1
    iget-object v2, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/u;->d(Ljava/lang/String;)V

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    iget-wide v4, v10, Loicq/wlogin_sdk/a/j;->u:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg userAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v10, Loicq/wlogin_sdk/a/j;->u:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_17

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v5, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-wide v6, v10, Loicq/wlogin_sdk/a/j;->u:J

    iget-object v8, v10, Loicq/wlogin_sdk/a/j;->v:[B

    iget-object v9, v10, Loicq/wlogin_sdk/a/j;->w:[B

    iget-object v10, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v4, p7

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegGetSMSVerifyLoginAccount(Loicq/wlogin_sdk/request/WUserSigInfo;IJ[B[B[B)V

    goto/16 :goto_0

    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_17
    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v5, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-wide v6, v10, Loicq/wlogin_sdk/a/j;->u:J

    iget-object v8, v10, Loicq/wlogin_sdk/a/j;->v:[B

    iget-object v9, v10, Loicq/wlogin_sdk/a/j;->w:[B

    iget-object v10, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v4, p7

    invoke-virtual/range {v3 .. v10}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegGetAccount(Loicq/wlogin_sdk/request/WUserSigInfo;IJ[B[B[B)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->d([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    if-eqz v3, :cond_18

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegQueryAccount(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->e([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    if-eqz v3, :cond_19

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_19

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnQuickRegisterCheckAccount(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_body()[B

    move-result-object v3

    invoke-static {v3, v10}, Loicq/wlogin_sdk/a/c;->f([BLoicq/wlogin_sdk/a/j;)I

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v4, v0, v3, v2}, Loicq/wlogin_sdk/request/WtloginListener;->OnRegError(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reg cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Loicq/wlogin_sdk/request/TransReqContext;->get_subcmd()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v10, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    move-object/from16 v0, p7

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->regTLVMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v10, Loicq/wlogin_sdk/a/j;->B:Ljava/util/Map;

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iget v3, v10, Loicq/wlogin_sdk/a/j;->d:I

    iget-object v4, v10, Loicq/wlogin_sdk/a/j;->f:[B

    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3, v4}, Loicq/wlogin_sdk/request/WtloginListener;->OnQuickRegisterGetAccount(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private PrepareQloginIntent(JJLjava/lang/String;)Landroid/content/Intent;
    .locals 7

    const-string v0, "com.tencent.mobileqq"

    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->CheckMayFastLogin(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->CheckQQMiniHD(Landroid/content/Context;)Z

    move-result v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_3

    const-string v0, "com.tencent.minihd.qq"

    :cond_0
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->get_rsa_pubkey(Landroid/content/Context;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_2

    :cond_1
    const-string v1, "30818902818100daaa2a418b271f3dfcf8f0a9120326d47f07618593d8d71d61a4fe987cc47740e491105bf8e68bd479bf51dfe19d3b06e12017df6d87a0f43bb82b57f59bd4220f2a3d8d68904a6ddb51197989e6e82512d8d8fa6c41b755a8ca962595d3e1e1be7ea01677249be4794cd7c6682d611c1bd81f0a16231fb83517515b94d13e5d0203010001"

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B

    move-result-object v1

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "dstSsoVer"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "dstAppid"

    invoke-virtual {v0, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "subDstAppid"

    invoke-virtual {v0, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "dstAppVer"

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "publickey"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "key_params"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "key_action"

    const-string v1, "action_quick_login"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private RefreshPictureData(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/16 v0, -0x3f9

    :goto_0
    return v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v6, "RefreshPictureData"

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v0, -0x3e9

    goto :goto_0

    :cond_2
    iget-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_3

    iget-wide v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    iput-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    :cond_3
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v1, v2, v3}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v4

    iget-wide v2, v4, Loicq/wlogin_sdk/request/u;->h:J

    iput-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    iget-wide v2, v4, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v4, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RefreshPictureData ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v4, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    new-instance v1, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v1}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v1, v5, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v4, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-eqz v1, :cond_7

    move v1, v7

    :goto_1
    if-ne v1, v7, :cond_4

    iput-wide v2, v4, Loicq/wlogin_sdk/request/u;->f:J

    :cond_4
    new-instance v1, Loicq/wlogin_sdk/request/r;

    invoke-direct {v1, v4}, Loicq/wlogin_sdk/request/r;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    iget v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    iget-object v5, v5, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    invoke-virtual {v1, v2, v3, v5, p2}, Loicq/wlogin_sdk/request/r;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v4, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RefreshPictureData ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move v1, v7

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v1, v0

    goto :goto_1
.end method

.method private RefreshSMSData(Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 10

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/16 v0, -0x3f9

    :goto_0
    return v0

    :cond_1
    if-nez p5, :cond_2

    new-instance v1, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v9, "RefreshSMSData"

    move-object v2, p0

    move-object v3, p0

    move-object v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v0, -0x3e9

    goto :goto_0

    :cond_2
    iget-wide v4, p4, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    iget-wide v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    iput-wide v4, p4, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    :cond_3
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-wide v4, p4, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v1, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v8

    iget-wide v4, v8, Loicq/wlogin_sdk/request/u;->h:J

    iput-wide v4, p4, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    iget-wide v4, v8, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " smsAppid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Seq:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v8, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " RefreshSMSData ..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v8, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    new-instance v1, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v1}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v1, v3, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v8, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    move v1, v2

    :goto_1
    if-ne v1, v2, :cond_4

    iput-wide v4, v8, Loicq/wlogin_sdk/request/u;->f:J

    :cond_4
    new-instance v1, Loicq/wlogin_sdk/request/s;

    invoke-direct {v1, v8}, Loicq/wlogin_sdk/request/s;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    iget v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    iget-object v6, v3, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-wide v2, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Loicq/wlogin_sdk/request/s;->a(JII[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_6

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " smsAppid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v8, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RefreshSMSData ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move v1, v2

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v1, v0

    goto :goto_1
.end method

.method private RefreshSMSVerifyLoginCode(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, -0x3f9

    :goto_0
    return v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v6, "RefreshSMSVerifyLoginCode"

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v0, -0x3e9

    goto :goto_0

    :cond_2
    iget-wide v0, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    iput-wide v0, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    :cond_3
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v0, v2, v3}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v0

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    iput-wide v2, p2, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RefreshSMSVerifyLoginCode ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    new-instance v2, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v2, v1, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    new-instance v1, Loicq/wlogin_sdk/request/x;

    invoke-direct {v1, v0}, Loicq/wlogin_sdk/request/x;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    iget v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p2}, Loicq/wlogin_sdk/request/x;->a(II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " RefreshSMSVerifyLoginCode ret="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method private RegSubmitMobile([B[B[B[BIIIJJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 26

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v4, v0

    if-lez v4, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/16 v4, -0x3f9

    :goto_0
    return v4

    :cond_1
    if-nez p1, :cond_3

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 v24, v0

    :goto_1
    sget-object v7, Loicq/wlogin_sdk/request/u;->E:[B

    const-wide/16 v20, 0x0

    const/4 v4, 0x0

    new-array v0, v4, [B

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLastLoginInfo()Loicq/wlogin_sdk/request/WloginLastLoginInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-wide v0, v4, Loicq/wlogin_sdk/request/WloginLastLoginInfo;->mUin:J

    move-wide/from16 v20, v0

    iget-object v4, v4, Loicq/wlogin_sdk/request/WloginLastLoginInfo;->mAccount:Ljava/lang/String;

    const/16 v5, 0x40

    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    invoke-virtual {v0, v4, v1, v2, v5}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_2

    iget-object v0, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    move-object/from16 v22, v0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "has uin? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", a2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegSubmitMobile mobile ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appname: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v4, Loicq/wlogin_sdk/a/j;->c:Ljava/lang/String;

    new-instance v5, Loicq/wlogin_sdk/a/h;

    invoke-direct {v5}, Loicq/wlogin_sdk/a/h;-><init>()V

    new-instance v25, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v25 .. v25}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    move-object/from16 v0, p2

    iput-object v0, v4, Loicq/wlogin_sdk/a/j;->k:[B

    move-wide/from16 v0, p8

    iput-wide v0, v4, Loicq/wlogin_sdk/a/j;->g:J

    move-wide/from16 v0, p10

    iput-wide v0, v4, Loicq/wlogin_sdk/a/j;->h:J

    invoke-virtual/range {v25 .. v25}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    invoke-virtual {v5}, Loicq/wlogin_sdk/a/h;->a()I

    move-result v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->generateGuid(Landroid/content/Context;)[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Loicq/wlogin_sdk/tools/util;->get_IMSI(Landroid/content/Context;)[B

    move-result-object v18

    sget-object v19, Loicq/wlogin_sdk/request/u;->aa:[B

    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetGuid()[B

    move-result-object v23

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    invoke-virtual/range {v5 .. v24}, Loicq/wlogin_sdk/a/h;->a([B[B[BIIIJJ[B[B[B[BJ[B[B[B)[B

    move-result-object v5

    move-object/from16 v0, v25

    iput-object v5, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    iget v4, v4, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move-object/from16 v12, v25

    move-object/from16 v13, p12

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0

    :cond_3
    move-object/from16 v24, p1

    goto/16 :goto_1
.end method

.method private RequestInit()I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Loicq/wlogin_sdk/request/u;->d()V

    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->ShareKeyInit()I

    move-result v1

    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->AsyncGenRSAKey()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init ok  ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " os ver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Loicq/wlogin_sdk/request/u;->J:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " saved_network_type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " network_type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Loicq/wlogin_sdk/request/u;->D:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " svn "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x7d3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Loicq/wlogin_sdk/request/u;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private RequestReport(I[B[BJJ)I
    .locals 14

    if-nez p1, :cond_0

    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v12, "RequestReport"

    move-object v3, p0

    move-object v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v2 .. v12}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;[B[BJJLjava/lang/String;)V

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v2, -0x3e9

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v11

    move-wide/from16 v0, p4

    iput-wide v0, v11, Loicq/wlogin_sdk/request/u;->f:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v11, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RequestReport..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v2, v11}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v5, 0x0

    new-instance v10, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v10}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    move-wide/from16 v3, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p6

    invoke-virtual/range {v2 .. v10}, Loicq/wlogin_sdk/request/aa;->a(J[B[B[BJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    invoke-virtual {v11}, Loicq/wlogin_sdk/request/u;->i()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v11, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RequestReport ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private RequestReportError(I[B[BJJI)I
    .locals 14

    if-nez p1, :cond_0

    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v13, "RequestReportError"

    move-object v3, p0

    move-object v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    invoke-direct/range {v2 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;[B[BJJILjava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v2, -0x3e9

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v11

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-object v2, v2, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    iput-object v2, v11, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    move-wide/from16 v0, p4

    iput-wide v0, v11, Loicq/wlogin_sdk/request/u;->f:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v11, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RequestReportError..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Loicq/wlogin_sdk/request/v;

    invoke-direct {v2, v11}, Loicq/wlogin_sdk/request/v;-><init>(Loicq/wlogin_sdk/request/u;)V

    const/4 v5, 0x0

    move-wide/from16 v3, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Loicq/wlogin_sdk/request/v;->a(J[B[B[BJI)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v11, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RequestReportError ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private ResolveQloginIntentReserved(Landroid/content/Intent;)Loicq/wlogin_sdk/request/WUserSigInfo;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "quicklogin_ret"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "quicklogin_uin"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "quicklogin_buff"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    new-instance v1, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v1}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    new-instance v4, Loicq/wlogin_sdk/tools/RSACrypt;

    iget-object v5, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Loicq/wlogin_sdk/tools/RSACrypt;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0, v3}, Loicq/wlogin_sdk/tools/RSACrypt;->DecryptData([B[B)[B

    move-result-object v3

    iput-object v3, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    iget-object v3, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    if-nez v3, :cond_2

    const-string v1, "rsa decrypt failed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object v2, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method private ShareKeyInit()I
    .locals 4

    const-string v0, "start ShareKeyInit"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Loicq/wlogin_sdk/tools/EcdhCrypt;

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Loicq/wlogin_sdk/tools/EcdhCrypt;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Loicq/wlogin_sdk/tools/EcdhCrypt;->initShareKeyByDefault()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Loicq/wlogin_sdk/tools/EcdhCrypt;->initShareKey()I

    move-result v0

    const-string v2, "end ShareKeyInit"

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1}, Loicq/wlogin_sdk/tools/EcdhCrypt;->get_c_pub_key()[B

    move-result-object v3

    iput-object v3, v2, Loicq/wlogin_sdk/request/u;->n:[B

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1}, Loicq/wlogin_sdk/tools/EcdhCrypt;->get_g_share_key()[B

    move-result-object v1

    iput-object v1, v2, Loicq/wlogin_sdk/request/u;->p:[B

    goto :goto_0
.end method

.method private VerifySMSVerifyLoginCode(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, -0x3f9

    :goto_0
    return v0

    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v7, "VerifySMSVerifyLoginCode"

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v0, -0x3e9

    goto :goto_0

    :cond_2
    iget-wide v0, p3, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    iput-wide v0, p3, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    :cond_3
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iget-wide v2, p3, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    invoke-virtual {v0, v2, v3}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v6

    iget-wide v0, v6, Loicq/wlogin_sdk/request/u;->h:J

    iput-wide v0, p3, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    iget-wide v0, v6, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v0, v1}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Seq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v6, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " VerifySMSVerifyLoginCode ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v6, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    new-instance v1, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v1}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v1, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_mpasswd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Loicq/wlogin_sdk/request/async_context;->_mpasswd:Ljava/lang/String;

    new-instance v0, Loicq/wlogin_sdk/request/y;

    invoke-direct {v0, v6}, Loicq/wlogin_sdk/request/y;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    iget v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    const/4 v4, 0x0

    move-object v1, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Loicq/wlogin_sdk/request/y;->a(Ljava/lang/String;II[JLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " code:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Seq:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v6, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " VerifySMSVerifyLoginAccount ret="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic access$000(Loicq/wlogin_sdk/request/WtloginHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Loicq/wlogin_sdk/request/WtloginHelper;)Loicq/wlogin_sdk/request/WtloginListener;
    .locals 1

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    return-object v0
.end method

.method static synthetic access$1000(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I
    .locals 2

    invoke-direct/range {p0 .. p16}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Loicq/wlogin_sdk/request/WtloginHelper;)J
    .locals 2

    iget-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mOpenAppid:J

    return-wide v0
.end method

.method static synthetic access$1200(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;I)I
    .locals 2

    invoke-direct/range {p0 .. p18}, Loicq/wlogin_sdk/request/WtloginHelper;->GetA1WithA1(Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Loicq/wlogin_sdk/request/WtloginHelper;I[B[BJJ)I
    .locals 2

    invoke-direct/range {p0 .. p7}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Loicq/wlogin_sdk/request/WtloginHelper;->OnRequestRegister(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V

    return-void
.end method

.method static synthetic access$1500(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Loicq/wlogin_sdk/request/WtloginHelper;->OnRequestCode2d(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V

    return-void
.end method

.method static synthetic access$1600(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Loicq/wlogin_sdk/request/WtloginHelper;->OnDeviceLockRequest(Ljava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;I)V

    return-void
.end method

.method static synthetic access$1700(Loicq/wlogin_sdk/request/WtloginHelper;JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 1

    invoke-direct/range {p0 .. p7}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckSMSVerifyLoginAccount(JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Loicq/wlogin_sdk/request/WtloginHelper;->VerifySMSVerifyLoginCode(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshSMSVerifyLoginCode(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Loicq/wlogin_sdk/request/WtloginHelper;)Loicq/wlogin_sdk/request/u;
    .locals 1

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    return-object v0
.end method

.method static synthetic access$2000(Loicq/wlogin_sdk/request/WtloginHelper;I[B[BJJI)I
    .locals 2

    invoke-direct/range {p0 .. p8}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithQQSig(Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithPtSig(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 2

    invoke-direct/range {p0 .. p8}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithQrSig(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Loicq/wlogin_sdk/request/WtloginHelper;)Landroid/os/Handler;
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->newHelperHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I
    .locals 1

    invoke-direct/range {p0 .. p13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshPictureData(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I
    .locals 1

    invoke-direct/range {p0 .. p5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 2

    invoke-direct/range {p0 .. p5}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshSMSData(Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I
    .locals 1

    invoke-direct/range {p0 .. p5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public static getRegTlvValue(Loicq/wlogin_sdk/request/WUserSigInfo;I)[B
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->regTLVMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/b;->c()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStWithPtSig(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithPtSig(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I

    move-result v0

    return v0
.end method

.method private getStWithPtSig(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I
    .locals 28

    if-nez p4, :cond_0

    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v9, "getStWithPtSig"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v2, -0x3e9

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p3

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v27

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, v27

    iput-wide v2, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, v26

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStWithPtSig seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v2, v13, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    move-object/from16 v0, p3

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    or-int/lit16 v2, v2, 0xc0

    move-object/from16 v0, p3

    iput v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_mpasswd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Loicq/wlogin_sdk/request/async_context;->_mpasswd:Ljava/lang/String;

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->constructSalt()J

    move-result-wide v2

    iput-wide v2, v13, Loicq/wlogin_sdk/request/async_context;->_msalt:J

    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    iput-wide v2, v13, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, p3

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->subAppid:J

    iput-wide v2, v13, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move-object/from16 v0, p3

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    iput v2, v13, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    iput-object v2, v13, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    new-instance v2, Loicq/wlogin_sdk/request/c;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Loicq/wlogin_sdk/request/c;-><init>(Loicq/wlogin_sdk/request/u;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v4, v0}, Loicq/wlogin_sdk/request/c;->a(IILoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VerifyPTSig seq "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v2, v13, Loicq/wlogin_sdk/request/async_context;->_mpasswd:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Loicq/wlogin_sdk/tools/MD5;->toMD5Byte([B)[B

    move-result-object v2

    iput-object v2, v13, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    new-instance v3, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-direct {v3, v0, v2}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;Landroid/content/Context;)V

    invoke-virtual {v3}, Loicq/wlogin_sdk/request/l;->g()V

    move-object/from16 v0, p3

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    move-object/from16 v0, p3

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->subAppid:J

    move-object/from16 v0, v27

    iget-wide v8, v0, Loicq/wlogin_sdk/request/u;->f:J

    const/4 v10, 0x0

    sget-object v11, Loicq/wlogin_sdk/request/u;->ad:[B

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->getRequestInitTime()[B

    move-result-object v12

    iget-object v13, v13, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget v15, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->subAppid:J

    move-wide/from16 v19, v0

    sget v21, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    sget-object v25, Loicq/wlogin_sdk/request/u;->aa:[B

    invoke-virtual/range {v3 .. v26}, Loicq/wlogin_sdk/request/l;->a(JJJI[B[B[BIII[JIJIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStWithPtSig seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, p3

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3, v6, v7}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    if-nez v2, :cond_3

    const/16 v2, -0x3ec

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    if-eqz v2, :cond_5

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [[B

    move-object/from16 v0, v26

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->stList:[[B

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    array-length v2, v2

    if-ge v3, v2, :cond_5

    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    aget-wide v8, v2, v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v7, v8, v9}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object/from16 v0, v26

    iget-object v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->stList:[[B

    mul-int/lit8 v7, v3, 0x2

    iget-object v2, v5, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v6, v7

    move-object/from16 v0, v26

    iget-object v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->stList:[[B

    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v7, v2, 0x1

    iget-object v2, v5, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v6, v7

    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request_TGTGT seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    goto/16 :goto_0
.end method

.method private getStWithQQSig(Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithQQSig(Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I

    move-result v0

    return v0
.end method

.method private getStWithQQSig(Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I
    .locals 28

    if-nez p3, :cond_0

    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v8, "getStWithQQSig"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;Ljava/lang/String;)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v2, -0x3e9

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    iput-object v0, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v27

    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, v26

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v2, v3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Loicq/wlogin_sdk/tools/util;->get_network_type(Landroid/content/Context;)I

    move-result v3

    sput v3, Loicq/wlogin_sdk/request/u;->D:I

    sget v3, Loicq/wlogin_sdk/request/u;->D:I

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    sget v3, Loicq/wlogin_sdk/request/u;->D:I

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->save_network_type(Landroid/content/Context;I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->get_apn_string(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sput-object v2, Loicq/wlogin_sdk/request/u;->F:[B

    move-object/from16 v0, p2

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    or-int/lit16 v2, v2, 0xc0

    move-object/from16 v0, p2

    iput v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, v27

    iput-wide v2, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, p2

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    iput-wide v2, v11, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    move-object/from16 v0, p2

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    iput-wide v2, v11, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-object/from16 v0, p2

    iget-wide v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->subAppid:J

    iput-wide v2, v11, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move-object/from16 v0, p2

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    iput v2, v11, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    move-object/from16 v0, v26

    iget v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_login_bitmap:I

    iput v2, v11, Loicq/wlogin_sdk/request/async_context;->_login_bitmap:I

    new-instance v2, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    iput-object v2, v11, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    move-object/from16 v0, p2

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    if-eqz v2, :cond_3

    move-object/from16 v0, p2

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v11, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    :goto_1
    move-object/from16 v0, v26

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v2, :cond_4

    move-object/from16 v0, v26

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v2, v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_4

    move-object/from16 v0, v26

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v2

    move-object/from16 v0, v27

    iput v2, v0, Loicq/wlogin_sdk/request/u;->i:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSF SSO SEQ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget v3, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object/from16 v0, v26

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    if-eqz v2, :cond_2

    move-object/from16 v0, v26

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    array-length v2, v2

    if-nez v2, :cond_5

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fast login buff is null seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget v3, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x3f9

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    iput-object v2, v11, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v27

    iput v2, v0, Loicq/wlogin_sdk/request/u;->i:I

    goto :goto_2

    :cond_5
    move-object/from16 v0, v26

    iget-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Loicq/wlogin_sdk/request/WtloginHelper;->GetFastLoginInfo([BLoicq/wlogin_sdk/request/async_context;)I

    move-result v2

    if-gez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetFastLoginInfo fast login buff is failed seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget v3, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x3f9

    goto/16 :goto_0

    :cond_6
    new-instance v2, Loicq/wlogin_sdk/request/z;

    move-object/from16 v0, v27

    invoke-direct {v2, v0}, Loicq/wlogin_sdk/request/z;-><init>(Loicq/wlogin_sdk/request/u;)V

    invoke-virtual {v2}, Loicq/wlogin_sdk/request/z;->g()V

    move-object/from16 v0, p2

    iget-wide v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    const/4 v5, 0x1

    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    const/4 v8, 0x0

    sget-object v9, Loicq/wlogin_sdk/request/u;->ad:[B

    iget-object v10, v11, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    iget-object v11, v11, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    move-object/from16 v0, p0

    iget v12, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move-object/from16 v0, p0

    iget v13, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move-object/from16 v0, p2

    iget-object v14, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    move-object/from16 v0, p2

    iget v15, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->sigMap:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->subAppid:J

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    sget v19, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    sget-object v23, Loicq/wlogin_sdk/request/u;->aa:[B

    move-object/from16 v0, p2

    iget-wide v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v2 .. v26}, Loicq/wlogin_sdk/request/z;->a(JIJI[B[B[BII[JIJIIIII[BJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    if-eqz v4, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStWithQQSig seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, v27

    iget-wide v2, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->appid:J

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3, v6, v7}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    if-nez v2, :cond_8

    const/16 v2, -0x3ec

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    move-object/from16 v0, p2

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    if-eqz v2, :cond_a

    move-object/from16 v0, p2

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [[B

    move-object/from16 v0, v26

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->stList:[[B

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    move-object/from16 v0, p2

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    array-length v2, v2

    if-ge v3, v2, :cond_a

    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, p2

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->dstSubAppidList:[J

    aget-wide v8, v2, v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v7, v8, v9}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v5

    if-eqz v5, :cond_9

    move-object/from16 v0, v26

    iget-object v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->stList:[[B

    mul-int/lit8 v7, v3, 0x2

    iget-object v2, v5, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v6, v7

    move-object/from16 v0, v26

    iget-object v6, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->stList:[[B

    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v7, v2, 0x1

    iget-object v2, v5, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v6, v7

    :cond_9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStWithQQSig seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    goto/16 :goto_0
.end method

.method private getStWithQrSig(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;I)I
    .locals 38

    if-eqz p1, :cond_0

    if-nez p7, :cond_1

    :cond_0
    const/16 v10, -0x3f9

    :goto_0
    return v10

    :cond_1
    move/from16 v0, p6

    or-int/lit16 v11, v0, 0xc0

    if-nez p8, :cond_2

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v7, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v15, "getStWithQrSig"

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v12, p4

    move-object/from16 v14, p7

    invoke-direct/range {v4 .. v15}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JIJLoicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v10, -0x3e9

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v36

    move-object/from16 v0, v36

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p7

    iput-wide v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_seqence:J

    move-object/from16 v0, v36

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    const-string v4, ""

    sput-object v4, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-wide v4, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v37

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start getStWithQrSig:user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sigMap:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_saved_network_type(Landroid/content/Context;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Loicq/wlogin_sdk/tools/util;->get_network_type(Landroid/content/Context;)I

    move-result v5

    sput v5, Loicq/wlogin_sdk/request/u;->D:I

    sget v5, Loicq/wlogin_sdk/request/u;->D:I

    if-eq v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->set_net_retry_type(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    sget v5, Loicq/wlogin_sdk/request/u;->D:I

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->save_network_type(Landroid/content/Context;I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_apn_string(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    sput-object v4, Loicq/wlogin_sdk/request/u;->F:[B

    invoke-static/range {p1 .. p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userAccount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isn\'t valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, -0x3f9

    goto/16 :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    iput-object v0, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    iput-object v0, v1, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    move-object/from16 v0, v36

    iput-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v0, p2

    move-object/from16 v2, v37

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sappid:J

    move-wide/from16 v0, p2

    move-object/from16 v2, v37

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_appid:J

    const/4 v4, 0x0

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_sub_appid_list:[J

    move-wide/from16 v0, p4

    move-object/from16 v2, v37

    iput-wide v0, v2, Loicq/wlogin_sdk/request/async_context;->_sub_appid:J

    move-object/from16 v0, v37

    iput v11, v0, Loicq/wlogin_sdk/request/async_context;->_main_sigmap:I

    move-object/from16 v0, p7

    iget v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_login_bitmap:I

    move-object/from16 v0, v37

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_login_bitmap:I

    new-instance v4, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v4}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_last_err_msg:Loicq/wlogin_sdk/tools/ErrMsg;

    move-object/from16 v0, p7

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    if-eqz v4, :cond_b

    move-object/from16 v0, p7

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    array-length v4, v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_b

    move-object/from16 v0, p7

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_reserveData:[B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v4

    move-object/from16 v0, v36

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSF SSO SEQ:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget v5, v0, Loicq/wlogin_sdk/request/u;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v4, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    new-instance v13, Loicq/wlogin_sdk/report/report_t2;

    const-string v14, "login"

    new-instance v15, Ljava/lang/String;

    sget-object v5, Loicq/wlogin_sdk/request/u;->C:[B

    invoke-direct {v15, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/16 v22, 0x0

    move-wide/from16 v18, p2

    move-wide/from16 v20, p4

    invoke-direct/range {v13 .. v22}, Loicq/wlogin_sdk/report/report_t2;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ[J)V

    invoke-virtual {v4, v13}, Loicq/wlogin_sdk/report/report_t1;->add_t2(Loicq/wlogin_sdk/report/report_t2;)V

    sget-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    if-eqz v4, :cond_5

    sget-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    array-length v4, v4

    if-lez v4, :cond_5

    sget-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    sget-object v4, Loicq/wlogin_sdk/code2d/c;->r:[B

    move-object/from16 v0, v37

    iput-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    const/4 v4, 0x0

    sput-object v4, Loicq/wlogin_sdk/code2d/c;->q:[B

    const/4 v4, 0x0

    sput-object v4, Loicq/wlogin_sdk/code2d/c;->r:[B

    :cond_5
    move-object/from16 v0, v37

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    if-eqz v4, :cond_6

    move-object/from16 v0, v37

    iget-object v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    array-length v4, v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_c

    :cond_6
    const/16 v10, -0x3f8

    :cond_7
    :goto_2
    const/16 v4, 0x80

    move-object/from16 v0, p7

    invoke-static {v0, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    if-nez v4, :cond_8

    new-instance v4, Loicq/wlogin_sdk/request/Ticket;

    invoke-direct {v4}, Loicq/wlogin_sdk/request/Ticket;-><init>()V

    :cond_8
    sget-object v5, Loicq/wlogin_sdk/request/u;->al:Loicq/wlogin_sdk/report/report_t1;

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-object/from16 v0, v36

    iget-object v8, v0, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    invoke-static {v10}, Loicq/wlogin_sdk/tools/util;->format_ret_code(I)I

    move-result v9

    invoke-virtual/range {v5 .. v10}, Loicq/wlogin_sdk/report/report_t1;->commit_t2(JLjava/lang/String;II)V

    if-nez v10, :cond_11

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_9

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v5, v5

    if-eqz v5, :cond_9

    const/4 v13, 0x0

    iget-object v14, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v15, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v18, v0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v19}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReport(I[B[BJJ)I

    :cond_9
    :goto_3
    move-object/from16 v0, v36

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    if-eqz v5, :cond_a

    move-object/from16 v0, v36

    iget-object v5, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    invoke-virtual {v5}, Loicq/wlogin_sdk/b/au;->a()I

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    move-object/from16 v0, v36

    iget-object v6, v0, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    iput-object v6, v5, Loicq/wlogin_sdk/request/u;->d:Loicq/wlogin_sdk/b/au;

    const/4 v13, 0x0

    iget-object v14, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v15, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    :cond_a
    invoke-static {}, Loicq/wlogin_sdk/request/u;->b()V

    invoke-virtual/range {v36 .. v36}, Loicq/wlogin_sdk/request/u;->h()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end getStWithQrSig user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sigMap:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subAppid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    iget-wide v6, v0, Loicq/wlogin_sdk/request/u;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput v4, v0, Loicq/wlogin_sdk/request/u;->i:I

    goto/16 :goto_1

    :cond_c
    const/4 v4, 0x1

    move-object/from16 v0, v37

    iput v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    move-object/from16 v0, p7

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    if-eqz v4, :cond_f

    move-object/from16 v0, p7

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    array-length v4, v4

    if-lez v4, :cond_f

    move-object/from16 v0, p7

    iget-object v4, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_in_ksid:[B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object/from16 v34, v4

    :goto_4
    move-object/from16 v0, v37

    iget v4, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd_type:I

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " login with qrsig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Loicq/wlogin_sdk/request/l;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    invoke-direct {v13, v0, v4}, Loicq/wlogin_sdk/request/l;-><init>(Loicq/wlogin_sdk/request/u;Landroid/content/Context;)V

    invoke-virtual {v13}, Loicq/wlogin_sdk/request/l;->g()V

    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    sget-object v21, Loicq/wlogin_sdk/request/u;->ad:[B

    move-object/from16 v0, v37

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_pwd:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_tmp_no_pic_sig:[B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mSubSigMap:I

    move/from16 v25, v0

    const/16 v26, 0x0

    sget v30, Loicq/wlogin_sdk/request/u;->y:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move/from16 v27, v11

    move-wide/from16 v28, p4

    move-object/from16 v35, p7

    invoke-virtual/range {v13 .. v35}, Loicq/wlogin_sdk/request/l;->a(JJJI[B[B[BII[JIJIIII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v10

    :cond_d
    if-eqz v10, :cond_e

    const/16 v4, 0xa0

    if-ne v10, v4, :cond_7

    :cond_e
    move-object/from16 v0, v36

    move-wide/from16 v1, p2

    invoke-virtual {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    if-nez v4, :cond_10

    const/16 v10, -0x3ec

    goto/16 :goto_2

    :cond_f
    sget-object v34, Loicq/wlogin_sdk/request/u;->aa:[B

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    goto/16 :goto_2

    :cond_11
    const/4 v5, 0x2

    if-eq v10, v5, :cond_9

    const/16 v5, 0xa0

    if-eq v10, v5, :cond_9

    const/4 v13, 0x0

    iget-object v14, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v15, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move-object/from16 v0, v36

    iget-wide v0, v0, Loicq/wlogin_sdk/request/u;->f:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v37

    iget-wide v0, v0, Loicq/wlogin_sdk/request/async_context;->_appid:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestReportError(I[B[BJJI)I

    goto/16 :goto_3
.end method

.method private isPskeyExpired(I[Ljava/lang/String;Loicq/wlogin_sdk/request/Ticket;JI)I
    .locals 14

    const/high16 v2, 0x100000

    if-ne p1, v2, :cond_d

    if-eqz p2, :cond_d

    move-object/from16 v0, p2

    array-length v2, v0

    if-lez v2, :cond_d

    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v11, v0

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, v11, :cond_9

    aget-object v9, p2, v10

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x28

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v2, 0x29

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-nez v5, :cond_f

    if-lez v6, :cond_f

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v9, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v4, 0x100000

    and-int/2addr v4, v2

    if-lez v4, :cond_5

    const/4 v4, 0x1

    :goto_2
    const/high16 v5, 0x8000000

    and-int/2addr v2, v5

    if-lez v2, :cond_6

    const/4 v2, 0x1

    :goto_3
    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move v6, v2

    move v7, v4

    move-object v8, v5

    :goto_4
    if-eqz v7, :cond_7

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_pskey_map:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_pskey_expire:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Loicq/wlogin_sdk/request/Ticket;->isPskeyExpired(J)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    const/4 v2, 0x1

    move v5, v2

    :goto_5
    if-eqz v6, :cond_8

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_pt4token_map:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p3

    iget-object v2, v0, Loicq/wlogin_sdk/request/Ticket;->_pt4token_expire:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Loicq/wlogin_sdk/request/Ticket;->isPskeyExpired(J)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    const/4 v2, 0x1

    move v4, v2

    :goto_6
    if-nez v5, :cond_4

    if-eqz v4, :cond_e

    :cond_4
    add-int/lit8 v2, v3, 0x1

    aput-object v9, p2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPskeyExpired refresh "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " need refresh pskey:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " and pt4token:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPskeyExpired domain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " get pskey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " get pt4token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_7
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_5

    :cond_8
    const/4 v2, 0x0

    move v4, v2

    goto :goto_6

    :cond_9
    if-nez v3, :cond_a

    const/4 v2, 0x3

    :goto_8
    return v2

    :cond_a
    :goto_9
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v3, v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPskeyExpired domain "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, p2, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " cleared"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_c

    const/4 v2, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshMemorySig()V

    const/4 v2, 0x2

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    goto :goto_8

    :cond_e
    move v2, v3

    goto :goto_7

    :cond_f
    move v6, v2

    move v7, v4

    move-object v8, v9

    goto/16 :goto_4
.end method

.method private localInit(Landroid/content/Context;Z)V
    .locals 2

    iput-boolean p2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->isForLocal:Z

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestInit()I

    return-void

    :catch_0
    move-exception v0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printThrowable(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private newHelperHandler()Landroid/os/Handler;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private printTicket(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_sKey:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pskey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_psKey:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "superkey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_superKey:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "d2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "d2key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_D2Key:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    return-void
.end method

.method public static setExtraLoginTlvValue(Loicq/wlogin_sdk/request/WUserSigInfo;I[B)V
    .locals 3

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Loicq/wlogin_sdk/b/b;

    invoke-direct {v1, p1}, Loicq/wlogin_sdk/b/b;-><init>(I)V

    array-length v2, p2

    invoke-virtual {v1, p2, v2}, Loicq/wlogin_sdk/b/b;->b([BI)V

    iget-object v2, p0, Loicq/wlogin_sdk/request/WUserSigInfo;->extraLoginTLVMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setLoadEncryptSo(Z)V
    .locals 0

    sput-boolean p0, Loicq/wlogin_sdk/tools/util;->loadEncryptSo:Z

    return-void
.end method

.method public static setLoadSoFlg(Z)V
    .locals 0

    sput-boolean p0, Loicq/wlogin_sdk/request/u;->aq:Z

    return-void
.end method

.method private tlvCommRsp2ErrMsg(Loicq/wlogin_sdk/devicelock/TLV_CommRsp;Loicq/wlogin_sdk/tools/ErrMsg;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->get_data_len()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrInfoType:I

    invoke-virtual {p2, v0}, Loicq/wlogin_sdk/tools/ErrMsg;->setType(I)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrInfo:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0}, Loicq/wlogin_sdk/tools/ErrMsg;->setOtherinfo(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrTitle:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0}, Loicq/wlogin_sdk/tools/ErrMsg;->setTitle(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Loicq/wlogin_sdk/devicelock/TLV_CommRsp;->ErrMsg:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0}, Loicq/wlogin_sdk/tools/ErrMsg;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public AskDevLockSms(Ljava/lang/String;JJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 10

    if-nez p1, :cond_0

    const/16 v0, -0x3f9

    :goto_0
    return v0

    :cond_0
    new-instance v0, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v0}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    invoke-virtual {p0, p1, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, -0x3eb

    goto :goto_0

    :cond_1
    iget-wide v2, v0, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    const-string v0, "AskDevLockSms ..."

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Loicq/wlogin_sdk/devicelock/d;

    invoke-direct {v1}, Loicq/wlogin_sdk/devicelock/d;-><init>()V

    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_devlock_req()V

    invoke-virtual {v1}, Loicq/wlogin_sdk/devicelock/d;->get_msgType()I

    move-result v0

    invoke-virtual {v8, v0}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Loicq/wlogin_sdk/devicelock/d;->a(JJJ)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    iget-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-eqz v0, :cond_2

    iget-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    const/16 v0, -0x3f9

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, v1, Loicq/wlogin_sdk/devicelock/d;->Role:I

    int-to-long v6, v0

    move-object v0, p0

    move v1, v3

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public CancelRequest()V
    .locals 2

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const/4 v1, 0x1

    iput v1, v0, Loicq/wlogin_sdk/request/u;->s:I

    return-void
.end method

.method public CheckDevLockSms(Ljava/lang/String;JJLjava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    if-nez p1, :cond_0

    const/16 v4, -0x3f9

    :goto_0
    return v4

    :cond_0
    new-instance v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v4, -0x3eb

    goto :goto_0

    :cond_1
    iget-wide v6, v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v8

    if-nez v8, :cond_2

    const/16 v4, -0x3ec

    goto :goto_0

    :cond_2
    if-eqz p7, :cond_3

    move-object/from16 v0, p7

    array-length v4, v0

    if-lez v4, :cond_3

    sget-object v4, Loicq/wlogin_sdk/devicelock/DevlockBase;->rst:Loicq/wlogin_sdk/devicelock/DevlockRst;

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Loicq/wlogin_sdk/devicelock/DevlockRst;->setSppKey([B)V

    :cond_3
    const-string v4, "CheckDevLockSms ..."

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Loicq/wlogin_sdk/devicelock/f;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/f;-><init>()V

    new-instance v19, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v19 .. v19}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v4, :cond_4

    const-string v4, ""

    :cond_4
    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/request/TransReqContext;->set_devlock_req()V

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/f;->get_msgType()I

    move-result v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/request/TransReqContext;->setSTEncryptMethod()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Loicq/wlogin_sdk/request/TransReqContext;->setWtST(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    iget-object v12, v8, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    sget-object v13, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v14, Loicq/wlogin_sdk/request/u;->E:[B

    const-string v8, "6.0.0.2003"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const-string v8, "android"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    if-nez p6, :cond_6

    const/16 v18, 0x0

    :goto_1
    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v5 .. v18}, Loicq/wlogin_sdk/devicelock/f;->a(JJJ[B[B[B[B[B[B[B)[B

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    move-object/from16 v0, v19

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-eqz v4, :cond_5

    move-object/from16 v0, v19

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    array-length v4, v4

    if-nez v4, :cond_7

    :cond_5
    const/16 v4, -0x3f9

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, v5, Loicq/wlogin_sdk/devicelock/f;->Role:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v12, v19

    move-object/from16 v13, p8

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public CheckDevLockStatus(Ljava/lang/String;JJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    if-nez p1, :cond_0

    const/16 v4, -0x3f9

    :goto_0
    return v4

    :cond_0
    new-instance v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v4, -0x3eb

    goto :goto_0

    :cond_1
    iget-wide v6, v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    if-nez v4, :cond_2

    const/16 v4, -0x3ec

    goto :goto_0

    :cond_2
    const-string v5, "CheckDevLockStatus ..."

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Loicq/wlogin_sdk/devicelock/DevlockRst;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/DevlockRst;-><init>()V

    sput-object v5, Loicq/wlogin_sdk/devicelock/DevlockBase;->rst:Loicq/wlogin_sdk/devicelock/DevlockRst;

    new-instance v5, Loicq/wlogin_sdk/devicelock/a;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/a;-><init>()V

    new-instance v18, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;->set_devlock_req()V

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/a;->get_msgType()I

    move-result v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;->setSTEncryptMethod()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/TransReqContext;->setWtST(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    iget-object v12, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    sget-object v13, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v14, Loicq/wlogin_sdk/request/u;->E:[B

    const-string v4, "6.0.0.2003"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    sget-object v16, Loicq/wlogin_sdk/request/u;->K:[B

    sget-object v17, Loicq/wlogin_sdk/request/u;->J:[B

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v5 .. v17}, Loicq/wlogin_sdk/devicelock/a;->a(JJJ[B[B[B[B[B[B)[B

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    move-object/from16 v0, v18

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-eqz v4, :cond_3

    move-object/from16 v0, v18

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    array-length v4, v4

    if-nez v4, :cond_4

    :cond_3
    const/16 v4, -0x3f9

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, v5, Loicq/wlogin_sdk/devicelock/a;->Role:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v12, v18

    move-object/from16 v13, p6

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 6

    const/4 v5, 0x0

    sput-boolean v5, Loicq/wlogin_sdk/request/o;->I:Z

    const/4 v4, 0x0

    check-cast v4, [[B

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[B)I
    .locals 6

    const/4 v5, 0x0

    sput-boolean v5, Loicq/wlogin_sdk/request/o;->I:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 6

    const/4 v4, 0x0

    check-cast v4, [[B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[B)I
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckSMSAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public CheckSMSVerifyLoginAccount(JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 9

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckSMSVerifyLoginAccount(JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method public CheckWebsigAndGetSt(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 6

    const/4 v0, 0x1

    sput-boolean v0, Loicq/wlogin_sdk/request/o;->I:Z

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x0

    check-cast v4, [[B

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public CheckWebsigAndGetSt(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[B)I
    .locals 6

    const/4 v0, 0x1

    sput-boolean v0, Loicq/wlogin_sdk/request/o;->I:Z

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->CheckPictureAndGetSt(Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v0

    return v0
.end method

.method public ClearPSkey(Ljava/lang/String;J)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ClearPSkey ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, v2, v3, p2, p3}, Loicq/wlogin_sdk/request/u;->c(JJ)V

    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_1
.end method

.method public ClearUserLoginData(Ljava/lang/String;J)Ljava/lang/Boolean;
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " appid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ClearUserLoginData ..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    if-ne v0, v2, :cond_2

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, v4, v5, p2, p3}, Loicq/wlogin_sdk/request/u;->d(JJ)V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_QRPUSHSig:[B

    new-array v0, v1, [B

    sput-object v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_LHSig:[B

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->d(Ljava/lang/String;)V

    move v0, v2

    goto :goto_1

    :cond_4
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public CloseCode(Ljava/lang/String;J[BILjava/util/List;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[BI",
            "Ljava/util/List",
            "<[B>;",
            "Loicq/wlogin_sdk/request/WUserSigInfo;",
            ")I"
        }
    .end annotation

    new-instance v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v4, -0x3eb

    :goto_0
    return v4

    :cond_0
    iget-wide v6, v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    const-wide/16 v10, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v4}, Loicq/wlogin_sdk/request/u;->j()V

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v4

    if-nez v4, :cond_1

    const/16 v4, -0x3ec

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " CloseCode ..."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Loicq/wlogin_sdk/code2d/a;

    invoke-direct {v5}, Loicq/wlogin_sdk/code2d/a;-><init>()V

    new-instance v23, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v23 .. v23}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    invoke-virtual/range {v23 .. v23}, Loicq/wlogin_sdk/request/TransReqContext;->set_code2d_func_req()V

    invoke-virtual {v5}, Loicq/wlogin_sdk/code2d/a;->get_cmd()I

    move-result v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    invoke-virtual/range {v23 .. v23}, Loicq/wlogin_sdk/request/TransReqContext;->setSTEncryptMethod()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/TransReqContext;->setWtST(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    iget-object v13, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    sget-object v14, Loicq/wlogin_sdk/request/u;->A:[B

    iget-object v0, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    move-object/from16 v17, v0

    iget-object v0, v4, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    int-to-long v0, v4

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    move-wide/from16 v8, p2

    move-object/from16 v12, p4

    move/from16 v15, p5

    move-object/from16 v16, p6

    invoke-virtual/range {v5 .. v22}, Loicq/wlogin_sdk/code2d/a;->a(JJJ[B[B[BILjava/util/List;[B[BJJ)[B

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, v5, Loicq/wlogin_sdk/code2d/a;->_role:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v12, v23

    move-object/from16 v13, p7

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public CloseDevLock(Ljava/lang/String;JJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    if-nez p1, :cond_0

    const/16 v4, -0x3f9

    :goto_0
    return v4

    :cond_0
    new-instance v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v4, -0x3eb

    goto :goto_0

    :cond_1
    iget-wide v6, v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v8

    if-nez v8, :cond_2

    const/16 v4, -0x3ec

    goto :goto_0

    :cond_2
    const-string v4, "CloseDevLock ..."

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Loicq/wlogin_sdk/devicelock/b;

    invoke-direct {v5}, Loicq/wlogin_sdk/devicelock/b;-><init>()V

    new-instance v18, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, ""

    :cond_3
    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;->set_devlock_req()V

    invoke-virtual {v5}, Loicq/wlogin_sdk/devicelock/b;->get_msgType()I

    move-result v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;->setSTEncryptMethod()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Loicq/wlogin_sdk/request/TransReqContext;->setWtST(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    iget-object v12, v8, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    sget-object v13, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v14, Loicq/wlogin_sdk/request/u;->E:[B

    const-string v8, "6.0.0.2003"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const-string v8, "android"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v5 .. v17}, Loicq/wlogin_sdk/devicelock/b;->a(JJJ[B[B[B[B[B[B)[B

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    move-object/from16 v0, v18

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-eqz v4, :cond_4

    move-object/from16 v0, v18

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    array-length v4, v4

    if-nez v4, :cond_5

    :cond_4
    const/16 v4, -0x3f9

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, v5, Loicq/wlogin_sdk/devicelock/b;->Role:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v12, v18

    move-object/from16 v13, p6

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public FetchCodeSig(JJLoicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 19

    const-string v2, " FetchCodeSig ..."

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Loicq/wlogin_sdk/code2d/fetch_code;

    invoke-direct {v3}, Loicq/wlogin_sdk/code2d/fetch_code;-><init>()V

    new-instance v17, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v17 .. v17}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    invoke-virtual/range {v17 .. v17}, Loicq/wlogin_sdk/request/TransReqContext;->set_code2d_func_req()V

    invoke-virtual {v3}, Loicq/wlogin_sdk/code2d/fetch_code;->get_cmd()I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    new-array v10, v2, [B

    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    int-to-long v12, v2

    const-wide/16 v14, 0x0

    sget-object v16, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_QRPUSHSig:[B

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v11, p5

    invoke-virtual/range {v3 .. v16}, Loicq/wlogin_sdk/code2d/fetch_code;->get_request(JJJ[BLoicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;JJ[B)[B

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v2, v3, Loicq/wlogin_sdk/code2d/fetch_code;->_role:I

    int-to-long v8, v2

    move-object/from16 v2, p0

    move v3, v6

    move-wide/from16 v6, p1

    move-object/from16 v10, v17

    move-object/from16 v11, p6

    invoke-virtual/range {v2 .. v11}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    return v2
.end method

.method public GetA1WithA1(Ljava/lang/String;JJ[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;)I
    .locals 21

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    const/16 v20, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    invoke-direct/range {v2 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper;->GetA1WithA1(Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;I)I

    move-result v2

    return v2
.end method

.method public GetA2A2KeyBuf(Ljava/lang/String;J)[B
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v1, 0x40

    invoke-virtual {p0, p1, p2, p3, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v2, :cond_0

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    if-eqz v2, :cond_0

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v2, v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Loicq/wlogin_sdk/request/u;->B:[B

    if-eqz v2, :cond_0

    sget-object v2, Loicq/wlogin_sdk/request/u;->B:[B

    array-length v2, v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iget-object v2, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v5, v2}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v3, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2, p2, p3}, Loicq/wlogin_sdk/tools/util;->int64_to_buf([BIJ)V

    add-int/lit8 v2, v2, 0x8

    iget-object v3, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v3, v3

    invoke-static {v0, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v2, v2, 0x2

    iget-object v3, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v4, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v4, v4

    invoke-static {v3, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v3, v3

    add-int/2addr v2, v3

    iget-object v3, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v3, v3

    invoke-static {v0, v2, v3}, Loicq/wlogin_sdk/tools/util;->int16_to_buf([BII)V

    add-int/lit8 v2, v2, 0x2

    iget-object v3, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    iget-object v4, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v4, v4

    invoke-static {v3, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v1, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v1, v1

    add-int/2addr v1, v2

    array-length v1, v0

    sget-object v2, Loicq/wlogin_sdk/request/u;->B:[B

    invoke-static {v0, v5, v1, v2}, Loicq/wlogin_sdk/tools/cryptor;->encrypt([BII[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public GetAllLoginInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Loicq/wlogin_sdk/sharemem/WloginLoginInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/u;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public GetAppidFromUrl(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v2, -0x1

    if-nez p1, :cond_0

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "f="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_2

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, 0x2

    const-string v0, ""

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x26

    if-ne v4, v5, :cond_4

    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0
.end method

.method public GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;
    .locals 13

    const/4 v0, 0x1

    const/4 v11, 0x0

    if-nez p1, :cond_0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    move v12, v11

    :goto_1
    if-ne v12, v0, :cond_3

    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1, v2, v3}, Loicq/wlogin_sdk/request/u;->d(J)Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    move-result-object v10

    if-nez v10, :cond_2

    move v1, v11

    :goto_2
    if-ne v1, v0, :cond_4

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move v12, v0

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    new-instance v1, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    iget-wide v2, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iget-object v4, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_face:[B

    iget-object v5, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_age:[B

    iget-object v6, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_gender:[B

    iget-object v7, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_nick:[B

    iget-object v8, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_img_type:[B

    iget-object v9, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_img_format:[B

    iget-object v10, v10, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_img_url:[B

    invoke-direct/range {v1 .. v10}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>(J[B[B[B[B[B[B[B)V

    invoke-virtual {p2, v1}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)V

    :cond_3
    move v1, v12

    goto :goto_2

    :cond_4
    move v0, v11

    goto :goto_3

    :cond_5
    move v12, v0

    goto :goto_1
.end method

.method public GetDevLockInfo(Ljava/lang/String;)Loicq/wlogin_sdk/devicelock/DevlockInfo;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetDevLockInfo(Ljava/lang/String;J)Loicq/wlogin_sdk/devicelock/DevlockInfo;

    move-result-object v0

    return-object v0
.end method

.method public GetDevLockInfo(Ljava/lang/String;J)Loicq/wlogin_sdk/devicelock/DevlockInfo;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    iget-wide p2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    :cond_0
    invoke-static {p2, p3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_devlock_info:Loicq/wlogin_sdk/devicelock/DevlockInfo;

    return-object v0
.end method

.method public GetGuid()[B
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-object v1, Loicq/wlogin_sdk/request/u;->A:[B

    if-eqz v1, :cond_0

    sget-object v1, Loicq/wlogin_sdk/request/u;->A:[B

    array-length v1, v1

    if-lez v1, :cond_0

    sget-object v0, Loicq/wlogin_sdk/request/u;->A:[B

    array-length v0, v0

    new-array v0, v0, [B

    sget-object v1, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v2, Loicq/wlogin_sdk/request/u;->A:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public GetLastLoginInfo()Loicq/wlogin_sdk/request/WloginLastLoginInfo;
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/u;->k()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;

    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-wide v4, v0, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mCreateTime:J

    iget-wide v6, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mCreateTime:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_0

    iget-object v0, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mAccount:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mAccount:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v2, Loicq/wlogin_sdk/request/WloginLastLoginInfo;

    iget-object v0, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mAccount:Ljava/lang/String;

    iget-wide v4, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mUin:J

    invoke-direct {v2, v0, v4, v5}, Loicq/wlogin_sdk/request/WloginLastLoginInfo;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    new-instance v2, Loicq/wlogin_sdk/request/WloginLastLoginInfo;

    iget-wide v4, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mUin:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v4, v1, Loicq/wlogin_sdk/sharemem/WloginLoginInfo;->mUin:J

    invoke-direct {v2, v0, v4, v5}, Loicq/wlogin_sdk/request/WloginLastLoginInfo;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public GetLocalSig(Ljava/lang/String;J)Loicq/wlogin_sdk/request/WUserSigInfo;
    .locals 8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string v0, "userAccount null"

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    :goto_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, v2, v3, p2, p3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v0, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v0}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object p1, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Loicq/wlogin_sdk/request/WUserSigInfo;->get_clone(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_3
    invoke-static {v1, p1}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetLocalTicket appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "userAccount null"

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalSig(Ljava/lang/String;J)Loicq/wlogin_sdk/request/WUserSigInfo;

    move-result-object v0

    invoke-static {v0, p4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    goto :goto_0
.end method

.method public GetOpenKeyWithoutPasswd(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    move-object/from16 v0, p0

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mOpenAppid:J

    const-wide/16 v8, -0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    check-cast v15, [[B

    const/16 v16, 0x0

    check-cast v16, [[B

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v10, p6

    move-wide/from16 v11, p4

    move-object/from16 v14, p7

    invoke-direct/range {v2 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v2

    return v2
.end method

.method public GetPictureData(Ljava/lang/String;)[B
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetPictureData(Ljava/lang/String;J)[B

    move-result-object v0

    return-object v0
.end method

.method public GetPictureData(Ljava/lang/String;J)[B
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    iget-wide p2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    :cond_0
    invoke-static {p2, p3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_t105:Loicq/wlogin_sdk/b/h;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/h;->a()[B

    move-result-object v0

    return-object v0
.end method

.method public GetPicturePrompt(Ljava/lang/String;)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetPicturePrompt(Ljava/lang/String;J)[B

    move-result-object v0

    return-object v0
.end method

.method public GetPicturePrompt(Ljava/lang/String;J)[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    iget-wide p2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mAysncSeq:J

    :cond_0
    invoke-static {p2, p3}, Loicq/wlogin_sdk/request/u;->b(J)Loicq/wlogin_sdk/request/async_context;

    move-result-object v0

    iget-object v0, v0, Loicq/wlogin_sdk/request/async_context;->_t165:Loicq/wlogin_sdk/b/az;

    invoke-virtual {v0}, Loicq/wlogin_sdk/b/az;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public GetPicturePromptValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper;->GetPicturePromptValue(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetPicturePromptValue(Ljava/lang/String;J)Ljava/lang/String;
    .locals 10

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetPicturePrompt(Ljava/lang/String;J)[B

    move-result-object v4

    const-string v0, ""

    if-eqz v4, :cond_0

    array-length v2, v4

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    invoke-static {v4, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v5

    const/4 v2, 0x4

    move v9, v1

    move v1, v2

    move v2, v9

    :goto_0
    if-ge v2, v5, :cond_0

    array-length v3, v4

    add-int/lit8 v6, v1, 0x1

    if-ge v3, v6, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-static {v4, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int8([BI)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    array-length v6, v4

    add-int v7, v1, v3

    if-lt v6, v7, :cond_0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v1, v3}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v1, v3

    array-length v3, v4

    add-int/lit8 v7, v1, 0x2

    if-lt v3, v7, :cond_0

    invoke-static {v4, v1}, Loicq/wlogin_sdk/tools/util;->buf_to_int32([BI)I

    move-result v3

    add-int/lit8 v7, v1, 0x4

    array-length v1, v4

    add-int v8, v7, v3

    if-lt v1, v8, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4, v7, v3}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v3, v7

    const-string v7, "pic_reason"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_0
.end method

.method public GetPskey(Ljava/lang/String;J[Ljava/lang/String;Loicq/wlogin_sdk/request/WtTicketPromise;)Loicq/wlogin_sdk/request/Ticket;
    .locals 8

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "domains"

    invoke-virtual {v6, v0, p4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p4, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetPskey appid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " domains "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v4, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Loicq/wlogin_sdk/request/WtloginHelper;->GetTicket(Ljava/lang/String;JILoicq/wlogin_sdk/request/WtTicketPromise;Landroid/os/Bundle;)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    return-object v0
.end method

.method public GetSkey(Ljava/lang/String;JLoicq/wlogin_sdk/request/WtTicketPromise;)Loicq/wlogin_sdk/request/Ticket;
    .locals 8

    const/16 v4, 0x1000

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Loicq/wlogin_sdk/request/WtloginHelper;->GetTicket(Ljava/lang/String;JILoicq/wlogin_sdk/request/WtTicketPromise;Landroid/os/Bundle;)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v0

    return-object v0
.end method

.method public GetStViaSMSVerifyLogin(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GetStViaSMSVerifyLogin ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Loicq/wlogin_sdk/a/j;->x:Z

    if-eqz v0, :cond_0

    sget-object v9, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    check-cast v11, [[B

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p6

    move-wide/from16 v5, p4

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0

    :cond_0
    const-string v9, ""

    goto :goto_0
.end method

.method public GetStViaSMSVerifyLogin(Ljava/lang/String;JJ[JILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 16

    const/4 v1, 0x0

    check-cast v1, [[B

    if-eqz p6, :cond_1

    move-object/from16 v0, p6

    array-length v2, v0

    if-lez v2, :cond_1

    move-object/from16 v0, p6

    array-length v1, v0

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    move-object v12, v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GetStViaSMSVerifyLogin ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Loicq/wlogin_sdk/a/j;->x:Z

    if-eqz v1, :cond_0

    sget-object v10, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    :goto_1
    const/4 v9, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p7

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v14}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v1

    return v1

    :cond_0
    const-string v10, ""

    goto :goto_1

    :cond_1
    move-object v12, v1

    goto :goto_0
.end method

.method public GetStWithPasswdMd5(Ljava/lang/String;JJILjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    check-cast v11, [[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p6

    move-wide/from16 v5, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method public GetStWithPasswdMd5(Ljava/lang/String;JLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    check-cast v11, [[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method public GetStWithPasswdReserved(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[B)I
    .locals 14

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method public GetStWithPasswdReserved(Ljava/lang/String;JJILjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    check-cast v11, [[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p6

    move-wide/from16 v5, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method public GetStWithPasswdReserved(Ljava/lang/String;JLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    check-cast v11, [[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithPasswd(Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v0

    return v0
.end method

.method public GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[B)I
    .locals 18

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v0 .. v16}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v0

    return v0
.end method

.method public GetStWithoutPasswd(Ljava/lang/String;JJJILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 18

    const-wide/16 v6, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    check-cast v13, [[B

    const/4 v14, 0x0

    check-cast v14, [[B

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p8

    move-wide/from16 v9, p6

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v16}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v0

    return v0
.end method

.method public GetStWithoutPasswd(Ljava/lang/String;JJJI[B[B[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 18

    const/4 v0, 0x4

    new-array v14, v0, [[B

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-object v1, v14, v0

    const/4 v0, 0x0

    aget-object v0, v14, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    aput-object p9, v14, v0

    const/4 v0, 0x2

    aput-object p10, v14, v0

    const/4 v0, 0x3

    aput-object p11, v14, v0

    const-wide/16 v6, -0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    check-cast v13, [[B

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v8, p8

    move-wide/from16 v9, p6

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v16}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v0

    return v0
.end method

.method public GetStWithoutPasswd(Ljava/lang/String;JJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    iget v10, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    const-wide/16 v11, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    check-cast v15, [[B

    const/16 v16, 0x0

    check-cast v16, [[B

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v14, p6

    invoke-direct/range {v2 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v2

    return v2
.end method

.method public GetStWithoutPasswd([BJILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    const-string v2, ""

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v3, v0

    if-gtz v3, :cond_1

    :cond_0
    const/16 v2, -0x3f9

    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    sget-object v5, Loicq/wlogin_sdk/request/u;->B:[B

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4, v5}, Loicq/wlogin_sdk/tools/cryptor;->decrypt([BII[B)[B

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v3, v6

    if-gtz v3, :cond_3

    :cond_2
    const/16 v2, -0x3f9

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    array-length v4, v6

    if-le v3, v4, :cond_4

    const/16 v2, -0x3f9

    goto :goto_0

    :cond_4
    invoke-static {v6, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v2

    const/4 v4, 0x2

    if-lez v2, :cond_5

    add-int/lit8 v3, v2, 0x2

    array-length v5, v6

    if-le v3, v5, :cond_6

    :cond_5
    const/16 v2, -0x3f9

    goto :goto_0

    :cond_6
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6, v4, v2}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v2, 0x8

    array-length v5, v6

    if-le v4, v5, :cond_7

    const/16 v2, -0x3f9

    goto :goto_0

    :cond_7
    invoke-static {v6, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int64([BI)J

    move-result-wide v4

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v2, 0x2

    array-length v8, v6

    if-le v7, v8, :cond_8

    const/16 v2, -0x3f9

    goto :goto_0

    :cond_8
    invoke-static {v6, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v7

    add-int/lit8 v2, v2, 0x2

    if-lez v7, :cond_9

    add-int v8, v2, v7

    array-length v9, v6

    if-le v8, v9, :cond_a

    :cond_9
    const/16 v2, -0x3f9

    goto :goto_0

    :cond_a
    new-array v8, v7, [B

    const/4 v9, 0x0

    array-length v10, v8

    invoke-static {v6, v2, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v7

    add-int/lit8 v7, v2, 0x2

    array-length v9, v6

    if-le v7, v9, :cond_b

    const/16 v2, -0x3f9

    goto :goto_0

    :cond_b
    invoke-static {v6, v2}, Loicq/wlogin_sdk/tools/util;->buf_to_int16([BI)I

    move-result v7

    add-int/lit8 v2, v2, 0x2

    if-lez v7, :cond_c

    add-int v9, v2, v7

    array-length v10, v6

    if-le v9, v10, :cond_d

    :cond_c
    const/16 v2, -0x3f9

    goto :goto_0

    :cond_d
    new-array v9, v7, [B

    const/4 v10, 0x0

    array-length v11, v9

    invoke-static {v6, v2, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v7

    const/4 v2, 0x3

    new-array v0, v2, [[B

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [B

    aput-object v6, v16, v2

    const/4 v2, 0x0

    aget-object v2, v16, v2

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput-byte v7, v2, v6

    const/4 v2, 0x1

    aput-object v8, v16, v2

    const/4 v2, 0x2

    aput-object v9, v16, v2

    const-wide/16 v8, -0x1

    const-wide/16 v11, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    check-cast v15, [[B

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v6, p2

    move/from16 v10, p4

    move-object/from16 v14, p5

    invoke-direct/range {v2 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v2

    goto/16 :goto_0
.end method

.method public GetTicket(Ljava/lang/String;JILoicq/wlogin_sdk/request/WtTicketPromise;Landroid/os/Bundle;)Loicq/wlogin_sdk/request/Ticket;
    .locals 16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetTicket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sig "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p6, :cond_4

    const-string v2, "null"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v8, 0x2

    :cond_0
    invoke-virtual/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalSig(Ljava/lang/String;J)Loicq/wlogin_sdk/request/WUserSigInfo;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    if-ne v8, v2, :cond_5

    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p3}, Loicq/wlogin_sdk/request/WtloginHelper;->IsNeedLoginWithPasswd(Ljava/lang/String;J)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Loicq/wlogin_sdk/tools/ErrMsg;

    invoke-direct {v2}, Loicq/wlogin_sdk/tools/ErrMsg;-><init>()V

    const/16 v3, -0x3ec

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/tools/ErrMsg;->setType(I)V

    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Loicq/wlogin_sdk/request/WtTicketPromise;->Failed(Loicq/wlogin_sdk/tools/ErrMsg;)V

    :cond_2
    :goto_2
    const/4 v5, 0x0

    :cond_3
    return-object v5

    :cond_4
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshMemorySig()V

    add-int/lit8 v8, v8, -0x1

    :goto_3
    if-gtz v8, :cond_0

    goto :goto_1

    :cond_6
    move/from16 v0, p4

    invoke-static {v2, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetUserSigInfoTicket(Loicq/wlogin_sdk/request/WUserSigInfo;I)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v2, v5, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v2, :cond_7

    iget-object v2, v5, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v2, v2

    if-nez v2, :cond_8

    :cond_7
    const/4 v2, 0x1

    if-eq v8, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshMemorySig()V

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_8
    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v6

    if-eqz p6, :cond_9

    const/high16 v2, 0x100000

    move/from16 v0, p4

    if-ne v0, v2, :cond_9

    const-string v2, "domains"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :cond_9
    move-object/from16 v2, p0

    move/from16 v3, p4

    invoke-direct/range {v2 .. v8}, Loicq/wlogin_sdk/request/WtloginHelper;->isPskeyExpired(I[Ljava/lang/String;Loicq/wlogin_sdk/request/Ticket;JI)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_a
    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetTicket sigType:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expires in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v10, v5, Loicq/wlogin_sdk/request/Ticket;->_expire_time:J

    sub-long/2addr v10, v6

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, v5, Loicq/wlogin_sdk/request/Ticket;->_expire_time:J

    cmp-long v2, v6, v2

    if-ltz v2, :cond_3

    const/4 v2, 0x1

    if-eq v8, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshMemorySig()V

    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_3

    :cond_b
    const/4 v2, 0x1

    new-instance v13, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v13}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    if-eqz p6, :cond_e

    const-string v2, "subappid"

    const/4 v3, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v3, v2

    :goto_4
    if-eqz v4, :cond_d

    const/4 v2, 0x0

    const/16 v5, 0x14

    array-length v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_5
    if-ge v2, v5, :cond_d

    aget-object v6, v4, v2

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c

    iget-object v7, v13, Loicq/wlogin_sdk/request/WUserSigInfo;->_domains:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_d
    int-to-long v10, v3

    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper$1;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtTicketPromise;Ljava/lang/String;JILandroid/os/Bundle;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p2

    move/from16 v12, p4

    move-object v14, v2

    invoke-direct/range {v4 .. v14}, Loicq/wlogin_sdk/request/WtloginHelper;->GetStWithoutPasswd(Ljava/lang/String;JJJILoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WtTicketPromise;)I

    goto/16 :goto_2

    :cond_e
    move v3, v2

    goto :goto_4
.end method

.method public GetTimeDifference()J
    .locals 2

    sget-wide v0, Loicq/wlogin_sdk/request/u;->ab:J

    return-wide v0
.end method

.method public IsNeedLoginWithPasswd(Ljava/lang/String;J)Ljava/lang/Boolean;
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v2, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    move v1, v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " need password:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_2
    iget-object v4, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v4, v2, v3, p2, p3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    if-eqz v3, :cond_3

    iget-object v3, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    array-length v3, v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    if-eqz v3, :cond_3

    iget-object v3, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_noPicSig:[B

    array-length v3, v3

    if-eqz v3, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    iget-object v3, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    if-eqz v3, :cond_4

    iget-object v3, v2, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    array-length v3, v3

    if-eqz v3, :cond_4

    invoke-static {}, Loicq/wlogin_sdk/request/u;->f()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->iSExpireA2(J)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v1, 0x3

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public IsUserHaveA1(Ljava/lang/String;J)Ljava/lang/Boolean;
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1}, Loicq/wlogin_sdk/request/u;->b(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    const/4 v0, 0x0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    if-eqz v1, :cond_2

    iget-object v0, v0, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_en_A1:[B

    array-length v0, v0

    if-gtz v0, :cond_5

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dwAppid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IsUserHaveA1 return: null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_4
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v2, v0, v1, p2, p3}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dwAppid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IsUserHaveA1 return: not null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public IsWtLoginUrl(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "?k="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x3

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v1, 0x20

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v1}, Loicq/wlogin_sdk/tools/util;->base64_decode_url([BI)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public PickupQRCode(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, ".*[?&]k=([^&$]+).*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "$1"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, v0}, Loicq/wlogin_sdk/tools/util;->base64_decode_url([BI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public PrepareQloginResult(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WFastLoginInfo;)Landroid/content/Intent;
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v0, "quicklogin_uin"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p7, Loicq/wlogin_sdk/request/WFastLoginInfo;->_outA1:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    new-instance v2, Loicq/wlogin_sdk/tools/RSACrypt;

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Loicq/wlogin_sdk/tools/RSACrypt;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, p2, p3, p4, p5}, Loicq/wlogin_sdk/tools/util;->get_cp_pubkey(Landroid/content/Context;JJ)[B

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Loicq/wlogin_sdk/tools/RSACrypt;->EncryptData([B[B)[B

    move-result-object v0

    const-string v2, "quicklogin_buff"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    const-string v0, "quicklogin_ret"

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v1
.end method

.method public PrepareSilenceLoginIntent(JJLjava/lang/String;)Landroid/content/Intent;
    .locals 7

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->get_rsa_pubkey(Landroid/content/Context;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "30818902818100daaa2a418b271f3dfcf8f0a9120326d47f07618593d8d71d61a4fe987cc47740e491105bf8e68bd479bf51dfe19d3b06e12017df6d87a0f43bb82b57f59bd4220f2a3d8d68904a6ddb51197989e6e82512d8d8fa6c41b755a8ca962595d3e1e1be7ea01677249be4794cd7c6682d611c1bd81f0a16231fb83517515b94d13e5d0203010001"

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->string_to_buf(Ljava/lang/String;)[B

    move-result-object v0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "dstSsoVer"

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "dstAppid"

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "subDstAppid"

    invoke-virtual {v2, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "dstAppVer"

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "publickey"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "key_params"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "key_action"

    const-string v2, "action_quick_login"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method public QueryCodeResult(JLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 11

    const/4 v9, 0x0

    const-string v0, " QueryCodeResult ..."

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Loicq/wlogin_sdk/code2d/d;

    invoke-direct {v1}, Loicq/wlogin_sdk/code2d/d;-><init>()V

    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_code2d_func_req()V

    invoke-virtual {v1}, Loicq/wlogin_sdk/code2d/d;->get_cmd()I

    move-result v0

    invoke-virtual {v8, v0}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qrsig "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Loicq/wlogin_sdk/code2d/c;->i:[B

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->buf_to_string([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    sget-object v6, Loicq/wlogin_sdk/code2d/c;->i:[B

    new-array v7, v9, [B

    move-wide v4, p1

    invoke-virtual/range {v1 .. v7}, Loicq/wlogin_sdk/code2d/d;->a(JJ[B[B)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, v1, Loicq/wlogin_sdk/code2d/d;->_role:I

    int-to-long v6, v0

    move-object v0, p0

    move v1, v9

    move-wide v4, p1

    move-object v9, p3

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0
.end method

.method public RefreshMemorySig()V
    .locals 1

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0}, Loicq/wlogin_sdk/request/u;->j()V

    return-void
.end method

.method public RefreshPictureData(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {p2}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshPictureData(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method public RefreshSMSData(Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 6

    if-nez p4, :cond_0

    new-instance v4, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshSMSData(Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0

    :cond_0
    move-object v4, p4

    goto :goto_0
.end method

.method public RefreshSMSVerifyLoginCode(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->RefreshSMSVerifyLoginCode(Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method public RegGetAccount([B[B[B[BILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 18

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v2, v0

    if-gtz v2, :cond_1

    :cond_0
    const/16 v2, -0x3f9

    :goto_0
    return v2

    :cond_1
    const-string v2, "RegGetAccount ..."

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Loicq/wlogin_sdk/a/d;

    invoke-direct {v2}, Loicq/wlogin_sdk/a/d;-><init>()V

    new-instance v16, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v16 .. v16}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    move-object/from16 v17, v0

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object/from16 v0, v17

    iput-object v3, v0, Loicq/wlogin_sdk/a/j;->j:[B

    :goto_1
    const/4 v3, 0x4

    move/from16 v0, p5

    if-ne v0, v3, :cond_2

    const-string v3, ""

    move-object/from16 v0, v17

    iput-object v3, v0, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    :cond_2
    invoke-virtual/range {v16 .. v16}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    invoke-virtual {v2}, Loicq/wlogin_sdk/a/d;->a()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    move-object/from16 v0, v17

    iget-object v3, v0, Loicq/wlogin_sdk/a/j;->e:[B

    move-object/from16 v0, v17

    iget-object v4, v0, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    sget-object v14, Loicq/wlogin_sdk/request/u;->E:[B

    sget v15, Loicq/wlogin_sdk/request/u;->z:I

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v15}, Loicq/wlogin_sdk/a/d;->a([B[B[B[BI[B[BZ[BJ[BI)[B

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    iget v2, v0, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v8, v2

    move-object/from16 v2, p0

    move-object/from16 v10, v16

    move-object/from16 v11, p6

    invoke-virtual/range {v2 .. v11}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    new-array v3, v3, [B

    move-object/from16 v0, v17

    iput-object v3, v0, Loicq/wlogin_sdk/a/j;->j:[B

    goto :goto_1
.end method

.method public RegGetSMSVerifyLoginAccount([B[B[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 18

    const-string v2, "RegGetSMSVerifyLoginAccount ..."

    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Loicq/wlogin_sdk/a/d;

    invoke-direct {v2}, Loicq/wlogin_sdk/a/d;-><init>()V

    new-instance v16, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v16 .. v16}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    move-object/from16 v17, v0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    move-object/from16 v0, v17

    iput-object v3, v0, Loicq/wlogin_sdk/a/j;->j:[B

    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Loicq/wlogin_sdk/a/j;->x:Z

    invoke-static {}, Loicq/wlogin_sdk/tools/util;->get_mpasswd()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    invoke-virtual {v2}, Loicq/wlogin_sdk/a/d;->a()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    move-object/from16 v0, v17

    iget-object v3, v0, Loicq/wlogin_sdk/a/j;->e:[B

    sget-object v4, Loicq/wlogin_sdk/a/j;->z:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, v17

    iget-object v4, v0, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetGuid()[B

    move-result-object v11

    move-object/from16 v0, v17

    iget-wide v12, v0, Loicq/wlogin_sdk/a/j;->h:J

    sget-object v14, Loicq/wlogin_sdk/request/u;->E:[B

    sget v15, Loicq/wlogin_sdk/request/u;->z:I

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v15}, Loicq/wlogin_sdk/a/d;->a([B[B[B[BI[B[BZ[BJ[BI)[B

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    iget v2, v0, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v8, v2

    move-object/from16 v2, p0

    move-object/from16 v10, v16

    move-object/from16 v11, p4

    invoke-virtual/range {v2 .. v11}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    return v2

    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [B

    move-object/from16 v0, v17

    iput-object v3, v0, Loicq/wlogin_sdk/a/j;->j:[B

    goto :goto_0
.end method

.method public RegQueryAccount(I[BJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 11

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-array p2, v1, [B

    :cond_0
    const-string v0, "RegQueryAccount ..."

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Loicq/wlogin_sdk/a/j;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/j;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v0, Loicq/wlogin_sdk/a/j;->b:Ljava/lang/String;

    new-instance v0, Loicq/wlogin_sdk/a/e;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/e;-><init>()V

    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    invoke-virtual {v0}, Loicq/wlogin_sdk/a/e;->a()I

    move-result v2

    invoke-virtual {v8, v2}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    invoke-virtual {v0, p1, p2, p3, p4}, Loicq/wlogin_sdk/a/e;->a(I[BJ)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget v0, v6, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v6, v0

    move-object v0, p0

    move-object/from16 v9, p5

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0
.end method

.method public RegQueryClientSentMsgStatus(Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 10

    const-string v0, "RegQueryClientSentMsgStatus ..."

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Loicq/wlogin_sdk/a/f;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/f;-><init>()V

    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    invoke-virtual {v0}, Loicq/wlogin_sdk/a/f;->a()I

    move-result v1

    invoke-virtual {v8, v1}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    iget-object v1, v6, Loicq/wlogin_sdk/a/j;->e:[B

    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    iget-object v2, v2, Loicq/wlogin_sdk/a/j;->p:[B

    invoke-virtual {v0, v1, v2}, Loicq/wlogin_sdk/a/f;->b([B[B)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget v0, v6, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v6, v0

    move-object v0, p0

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0
.end method

.method public RegRequestServerResendMsg(Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 10

    const/4 v3, 0x0

    const-string v0, "RegRequestServerResendMsg ..."

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Loicq/wlogin_sdk/a/g;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/g;-><init>()V

    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    invoke-virtual {v0}, Loicq/wlogin_sdk/a/g;->a()I

    move-result v1

    invoke-virtual {v8, v1}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    iget-object v1, v6, Loicq/wlogin_sdk/a/j;->e:[B

    invoke-virtual {v0, v1, v3}, Loicq/wlogin_sdk/a/g;->b([B[B)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    iget v0, v6, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v6, v0

    move-object v0, p0

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0
.end method

.method public RegSubmitMobile(Ljava/lang/String;[B[BIIIJJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 13

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [B

    :goto_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Loicq/wlogin_sdk/request/WtloginHelper;->RegSubmitMobile([B[B[B[BIIIJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public RegSubmitMobile([B[B[BIIIJJLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 13

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Loicq/wlogin_sdk/request/WtloginHelper;->RegSubmitMobile([B[B[B[BIIIJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    return v0
.end method

.method public RegSubmitMsgChk([BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 10

    if-nez p1, :cond_0

    const/16 v0, -0x3f9

    :goto_0
    return v0

    :cond_0
    const-string v0, "RegSubmitMsgChk ..."

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Loicq/wlogin_sdk/a/i;

    invoke-direct {v0}, Loicq/wlogin_sdk/a/i;-><init>()V

    new-instance v8, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct {v8}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    iget-object v6, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    invoke-virtual {v8}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    invoke-virtual {v0}, Loicq/wlogin_sdk/a/i;->a()I

    move-result v1

    invoke-virtual {v8, v1}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    iget-object v1, v6, Loicq/wlogin_sdk/a/j;->e:[B

    invoke-virtual {v0, v1, p1}, Loicq/wlogin_sdk/a/i;->b([B[B)[B

    move-result-object v0

    iput-object v0, v8, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget v0, v6, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v6, v0

    move-object v0, p0

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 16

    if-nez p1, :cond_0

    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v14, "RequestTransport"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v2 .. v14}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;ILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v2, -0x3e9

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " encrypt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " role:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v13, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RequestTransport..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    iput-object v0, v13, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    if-eqz p2, :cond_5

    if-nez p3, :cond_1

    const/4 v2, 0x0

    iput v2, v13, Loicq/wlogin_sdk/request/u;->m:I

    new-instance v2, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v2, v13}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p8

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p9

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    :goto_1
    invoke-virtual {v13}, Loicq/wlogin_sdk/request/u;->i()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " encrypt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " role:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v13, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RequestTransport ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    new-instance v3, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v3}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/16 v2, -0x3eb

    goto :goto_1

    :cond_3
    iget-wide v4, v3, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    move-wide/from16 v0, p4

    invoke-virtual {v13, v4, v5, v0, v1}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v5

    if-nez v5, :cond_4

    const/16 v2, -0x3ec

    goto :goto_1

    :cond_4
    iget-wide v6, v3, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iput-wide v6, v13, Loicq/wlogin_sdk/request/u;->f:J

    new-instance v2, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v2, v13}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget-wide v3, v3, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iget-object v6, v5, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    iget-object v7, v5, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    move-object/from16 v5, p8

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p9

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto/16 :goto_1

    :cond_5
    const-wide/16 v2, 0x0

    iput-wide v2, v13, Loicq/wlogin_sdk/request/u;->f:J

    new-instance v2, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v2, v13}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget-wide v3, v13, Loicq/wlogin_sdk/request/u;->f:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p8

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p9

    invoke-virtual/range {v2 .. v12}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto/16 :goto_1
.end method

.method public RequestTransportMsf(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;)I
    .locals 16

    if-nez p1, :cond_0

    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mHelperHandler:Landroid/os/Handler;

    const-string v13, "RequestTransportMsf"

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;-><init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;ILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->RunReq(I)V

    const/16 v2, -0x3e9

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Loicq/wlogin_sdk/request/u;->a(J)Loicq/wlogin_sdk/request/u;

    move-result-object v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " encrypt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " role:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v15, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RequestTransportMsf..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    iput-object v0, v15, Loicq/wlogin_sdk/request/u;->g:Ljava/lang/String;

    if-eqz p2, :cond_4

    new-instance v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v2}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    if-eqz p3, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/16 v2, -0x3eb

    :goto_1
    invoke-virtual {v15}, Loicq/wlogin_sdk/request/u;->i()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " encrypt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " role:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Seq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v15, Loicq/wlogin_sdk/request/u;->h:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RequestTransportMsf ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    move-wide/from16 v0, p4

    invoke-virtual {v15, v4, v5, v0, v1}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v6

    if-nez v6, :cond_3

    const/16 v2, -0x3ec

    goto :goto_1

    :cond_3
    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iput-wide v4, v15, Loicq/wlogin_sdk/request/u;->f:J

    new-instance v3, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v3, v15}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iget-object v7, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    iget-object v8, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userSt_Key:[B

    iget-object v9, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    new-instance v14, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v14}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    move-object/from16 v6, p8

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    invoke-virtual/range {v3 .. v14}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto/16 :goto_1

    :cond_4
    invoke-static/range {p3 .. p3}, Loicq/wlogin_sdk/tools/util;->check_uin_account(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    const-wide/16 v2, 0x0

    iput-wide v2, v15, Loicq/wlogin_sdk/request/u;->f:J

    new-instance v3, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v3, v15}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    new-array v9, v2, [B

    new-instance v14, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v14}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    move-object/from16 v6, p8

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    invoke-virtual/range {v3 .. v14}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto/16 :goto_1

    :cond_5
    new-instance v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v2}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    if-eqz p3, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    const/16 v2, -0x3eb

    goto/16 :goto_1

    :cond_7
    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    move-wide/from16 v0, p4

    invoke-virtual {v15, v4, v5, v0, v1}, Loicq/wlogin_sdk/request/u;->a(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v6

    if-nez v6, :cond_8

    const/16 v2, -0x3ec

    goto/16 :goto_1

    :cond_8
    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    iput-wide v4, v15, Loicq/wlogin_sdk/request/u;->f:J

    new-instance v3, Loicq/wlogin_sdk/request/aa;

    invoke-direct {v3, v15}, Loicq/wlogin_sdk/request/aa;-><init>(Loicq/wlogin_sdk/request/u;)V

    iget-wide v4, v2, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v6, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_TGT:[B

    new-instance v14, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v14}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    move-object/from16 v6, p8

    move-wide/from16 v10, p4

    move-wide/from16 v12, p6

    invoke-virtual/range {v3 .. v14}, Loicq/wlogin_sdk/request/aa;->a(JLoicq/wlogin_sdk/request/TransReqContext;[B[B[BJJLoicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    goto/16 :goto_1
.end method

.method public SetAppClientVersion(I)V
    .locals 0

    sput p1, Loicq/wlogin_sdk/request/u;->w:I

    return-void
.end method

.method public SetCanWebVerify(Z)V
    .locals 0

    sput-boolean p1, Loicq/wlogin_sdk/request/l;->I:Z

    return-void
.end method

.method public SetDevlockMobileType(I)V
    .locals 0

    sput p1, Loicq/wlogin_sdk/request/s;->I:I

    return-void
.end method

.method public SetImgType(I)V
    .locals 1

    sput p1, Loicq/wlogin_sdk/request/u;->x:I

    iget v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMiscBitmap:I

    return-void
.end method

.method public SetListener(Loicq/wlogin_sdk/request/WtloginListener;)Loicq/wlogin_sdk/request/WtloginListener;
    .locals 1

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mListener:Loicq/wlogin_sdk/request/WtloginListener;

    return-object v0
.end method

.method public SetLocalId(I)V
    .locals 0

    sput p1, Loicq/wlogin_sdk/request/u;->u:I

    return-void
.end method

.method public SetMsfTransportFlag(I)V
    .locals 2

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iput p1, v0, Loicq/wlogin_sdk/request/u;->k:I

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Loicq/wlogin_sdk/request/u;->ad:[B

    const-wide/16 v0, 0x0

    sput-wide v0, Loicq/wlogin_sdk/request/u;->ac:J

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    const v1, 0xafc8

    iput v1, v0, Loicq/wlogin_sdk/request/u;->l:I

    :cond_0
    return-void
.end method

.method public SetNeedForPayToken(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/l;->J:[B

    if-eqz p3, :cond_0

    sput-object p3, Loicq/wlogin_sdk/request/l;->L:[B

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->getChannelId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Loicq/wlogin_sdk/request/l;->K:[B

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetPicType(I)V
    .locals 0

    sput p1, Loicq/wlogin_sdk/request/u;->y:I

    return-void
.end method

.method public SetRegDevLockFlag(I)V
    .locals 0

    sput p1, Loicq/wlogin_sdk/request/u;->z:I

    return-void
.end method

.method public SetSigMap(I)V
    .locals 1

    or-int/lit16 v0, p1, 0xc0

    iput v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mMainSigMap:I

    return-void
.end method

.method public SetTestHost(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Loicq/wlogin_sdk/request/oicq_request;->a(ILjava/lang/String;)V

    return-void
.end method

.method public SetTimeOut(I)V
    .locals 1

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    iput p1, v0, Loicq/wlogin_sdk/request/u;->l:I

    return-void
.end method

.method public VerifyCode(Ljava/lang/String;JZ[B[IILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 20

    new-instance v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;

    invoke-direct {v4}, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Loicq/wlogin_sdk/request/WtloginHelper;->GetBasicUserInfo(Ljava/lang/String;Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v4, -0x3eb

    :goto_0
    return v4

    :cond_0
    iget-wide v6, v4, Loicq/wlogin_sdk/sharemem/WloginSimpleInfo;->_uin:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v7, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v15

    if-nez v15, :cond_1

    const/16 v4, -0x3ec

    goto :goto_0

    :cond_1
    new-instance v4, Loicq/wlogin_sdk/b/cl;

    invoke-direct {v4}, Loicq/wlogin_sdk/b/cl;-><init>()V

    const/4 v5, 0x0

    new-array v0, v5, [B

    move-object/from16 v17, v0

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    if-eqz v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    array-length v5, v5

    if-lez v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    if-eqz v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    array-length v5, v5

    if-lez v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    if-eqz v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    array-length v5, v5

    if-lez v5, :cond_2

    iget-object v5, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_G:[B

    sget-object v8, Loicq/wlogin_sdk/request/u;->A:[B

    iget-object v9, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_dpwd:[B

    const-wide/16 v12, 0x1

    iget-object v14, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_randseed:[B

    move-wide/from16 v10, p2

    invoke-virtual/range {v4 .. v14}, Loicq/wlogin_sdk/b/cl;->a([BJ[B[BJJ[B)[B

    invoke-virtual {v4}, Loicq/wlogin_sdk/b/cl;->c()[B

    move-result-object v17

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " VerifyCode ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Loicq/wlogin_sdk/code2d/e;

    invoke-direct {v5}, Loicq/wlogin_sdk/code2d/e;-><init>()V

    new-instance v18, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;->set_code2d_func_req()V

    invoke-virtual {v5}, Loicq/wlogin_sdk/code2d/e;->get_cmd()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    invoke-virtual/range {v18 .. v18}, Loicq/wlogin_sdk/request/TransReqContext;->setSTEncryptMethod()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Loicq/wlogin_sdk/request/TransReqContext;->setWtST(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    iget-object v13, v15, Loicq/wlogin_sdk/sharemem/WloginSigInfo;->_userStSig:[B

    sget-object v14, Loicq/wlogin_sdk/request/u;->A:[B

    sget-object v15, Loicq/wlogin_sdk/request/u;->E:[B

    move-wide/from16 v8, p2

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v16, p7

    invoke-virtual/range {v5 .. v17}, Loicq/wlogin_sdk/code2d/e;->a(JJZ[B[I[B[B[BI[B)[B

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, v5, Loicq/wlogin_sdk/code2d/e;->_role:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v12, v18

    move-object/from16 v13, p8

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public VerifySMSVerifyLoginCode(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Loicq/wlogin_sdk/request/WtloginHelper;->VerifySMSVerifyLoginCode(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method public getHasPassword(J)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v1, p1, p2}, Loicq/wlogin_sdk/request/u;->e(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHasPasswd ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v2, v1}, Loicq/wlogin_sdk/request/u;->c(Ljava/lang/String;)Loicq/wlogin_sdk/request/UinInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Loicq/wlogin_sdk/request/UinInfo;->getHasPassword()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHasPasswd userAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasPasswd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStWithQrSig(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 10

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithQrSig(Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v0

    return v0
.end method

.method public getUserAccountFromQuickLoginResultData(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const-string v0, "isRetFromWeb"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserAccountFromQuickLoginResultData isRetFromWeb "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string v0, "quicklogin_uin"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0

    :cond_1
    const-string v0, "uin"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onQuickLoginActivityResultData(Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;Landroid/content/Intent;)I
    .locals 4

    const/16 v0, -0x3f9

    if-nez p2, :cond_0

    const-string v1, "onActivityResultData data is null"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "onActivityResultData quickLoginParam is null"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "isRetFromWeb"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQuickLoginActivityResultData isRetFromWeb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;)V

    if-nez v1, :cond_3

    invoke-direct {p0, p2}, Loicq/wlogin_sdk/request/WtloginHelper;->ResolveQloginIntentReserved(Landroid/content/Intent;)Loicq/wlogin_sdk/request/WUserSigInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "onActivityResultData ResolveQloginIntent failed"

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iget-object v2, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    iget-object v0, p1, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iget-object v2, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    iput-object v2, v0, Loicq/wlogin_sdk/request/WUserSigInfo;->_fastLoginBuf:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Loicq/wlogin_sdk/request/WUserSigInfo;->uin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithQQSig(Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "uin"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sig"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Loicq/wlogin_sdk/request/WtloginHelper;->getStWithPtSig(Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I

    move-result v0

    goto :goto_0
.end method

.method public quickLogin(Landroid/app/Activity;JJLjava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I
    .locals 8

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Loicq/wlogin_sdk/quicklogin/a;->a(Landroid/content/Context;Landroid/app/Activity;JJLjava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;)I

    move-result v0

    return v0
.end method

.method public quickRegisterCheckAccount(JJII[BLoicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 21

    if-eqz p7, :cond_0

    if-nez p8, :cond_1

    :cond_0
    const/16 v4, -0x3f9

    :goto_0
    return v4

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quickRegisterCheckAccount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2, v5}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "quickRegisterCheckAccount no key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x3ec

    goto :goto_0

    :cond_2
    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_3

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v5, v5

    if-nez v5, :cond_4

    :cond_3
    const-string v4, "quickRegisterCheckAccount no key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x3ec

    goto/16 :goto_0

    :cond_4
    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    if-eqz v5, :cond_5

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v5, v5

    if-nez v5, :cond_6

    :cond_5
    const-string v4, "quickRegisterCheckAccount no key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x3ec

    goto/16 :goto_0

    :cond_6
    new-instance v5, Loicq/wlogin_sdk/a/a;

    invoke-direct {v5}, Loicq/wlogin_sdk/a/a;-><init>()V

    new-instance v19, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v19 .. v19}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    iget-object v7, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    iput-object v7, v6, Loicq/wlogin_sdk/a/j;->l:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    move-object/from16 v20, v0

    move-wide/from16 v0, p3

    move-object/from16 v2, v20

    iput-wide v0, v2, Loicq/wlogin_sdk/a/j;->g:J

    move/from16 v0, p6

    int-to-long v6, v0

    move-object/from16 v0, v20

    iput-wide v6, v0, Loicq/wlogin_sdk/a/j;->h:J

    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    invoke-virtual {v5}, Loicq/wlogin_sdk/a/a;->a()I

    move-result v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    invoke-direct/range {p0 .. p4}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Loicq/wlogin_sdk/request/TransReqContext;->setSTEncryptMethod()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Loicq/wlogin_sdk/request/TransReqContext;->setWtST(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    move-wide/from16 v0, p3

    long-to-int v8, v0

    const/16 v9, 0x8

    iget-object v10, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v11, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move/from16 v0, p5

    int-to-byte v12, v0

    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetGuid()[B

    move-result-object v13

    sget-object v15, Loicq/wlogin_sdk/request/u;->E:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->generateGuid(Landroid/content/Context;)[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_IMSI(Landroid/content/Context;)[B

    move-result-object v18

    move-wide/from16 v6, p1

    move/from16 v14, p6

    move-object/from16 v16, p7

    invoke-virtual/range {v5 .. v18}, Loicq/wlogin_sdk/a/a;->a(JIB[B[BB[BI[B[B[B[B)[B

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    move-object/from16 v0, v19

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-nez v4, :cond_7

    const-string v4, "req_con._body is null"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x3f9

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, v20

    iget v4, v0, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move-object/from16 v12, v19

    move-object/from16 v13, p8

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public quickRegisterGetAccount(JJII[B[BLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;)I
    .locals 25

    if-eqz p8, :cond_0

    if-eqz p7, :cond_0

    if-eqz p9, :cond_0

    if-nez p10, :cond_1

    :cond_0
    const/16 v4, -0x3f9

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x6

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_2

    const/16 v4, -0x3f9

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quickRegisterGetAccount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v4, v1, v2, v5}, Loicq/wlogin_sdk/request/WtloginHelper;->GetLocalTicket(Ljava/lang/String;JI)Loicq/wlogin_sdk/request/Ticket;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quickRegisterCheckAccount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x3ec

    goto/16 :goto_0

    :cond_3
    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    if-eqz v5, :cond_4

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    array-length v5, v5

    if-nez v5, :cond_5

    :cond_4
    const-string v4, "quickRegisterCheckAccount no key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x3ec

    goto/16 :goto_0

    :cond_5
    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    if-eqz v5, :cond_6

    iget-object v5, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    array-length v5, v5

    if-nez v5, :cond_7

    :cond_6
    const-string v4, "quickRegisterCheckAccount no key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x3ec

    goto/16 :goto_0

    :cond_7
    new-instance v5, Loicq/wlogin_sdk/a/b;

    invoke-direct {v5}, Loicq/wlogin_sdk/a/b;-><init>()V

    new-instance v22, Loicq/wlogin_sdk/request/TransReqContext;

    invoke-direct/range {v22 .. v22}, Loicq/wlogin_sdk/request/TransReqContext;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    iget-object v7, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    iput-object v7, v6, Loicq/wlogin_sdk/a/j;->l:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    move-object/from16 v23, v0

    move-wide/from16 v0, p3

    move-object/from16 v2, v23

    iput-wide v0, v2, Loicq/wlogin_sdk/a/j;->g:J

    move/from16 v0, p6

    int-to-long v6, v0

    move-object/from16 v0, v23

    iput-wide v6, v0, Loicq/wlogin_sdk/a/j;->h:J

    invoke-virtual/range {v22 .. v22}, Loicq/wlogin_sdk/request/TransReqContext;->set_register_req()V

    invoke-virtual {v5}, Loicq/wlogin_sdk/a/b;->a()I

    move-result v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Loicq/wlogin_sdk/request/TransReqContext;->set_subcmd(I)V

    invoke-direct/range {p0 .. p4}, Loicq/wlogin_sdk/request/WtloginHelper;->FindUserSig(JJ)Loicq/wlogin_sdk/sharemem/WloginSigInfo;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Loicq/wlogin_sdk/request/TransReqContext;->setSTEncryptMethod()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Loicq/wlogin_sdk/request/TransReqContext;->setWtST(Loicq/wlogin_sdk/sharemem/WloginSigInfo;)V

    move-wide/from16 v0, p3

    long-to-int v8, v0

    const/16 v9, 0x8

    iget-object v10, v4, Loicq/wlogin_sdk/request/Ticket;->_sig:[B

    iget-object v11, v4, Loicq/wlogin_sdk/request/Ticket;->_sig_key:[B

    move/from16 v0, p5

    int-to-byte v12, v0

    invoke-virtual/range {p0 .. p0}, Loicq/wlogin_sdk/request/WtloginHelper;->GetGuid()[B

    move-result-object v14

    sget-object v16, Loicq/wlogin_sdk/request/u;->E:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->generateGuid(Landroid/content/Context;)[B

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Loicq/wlogin_sdk/tools/util;->get_IMSI(Landroid/content/Context;)[B

    move-result-object v19

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper;->mRegStatus:Loicq/wlogin_sdk/a/j;

    iget-object v0, v4, Loicq/wlogin_sdk/a/j;->e:[B

    move-object/from16 v21, v0

    move-wide/from16 v6, p1

    move-object/from16 v13, p8

    move/from16 v15, p6

    move-object/from16 v17, p7

    invoke-virtual/range {v5 .. v21}, Loicq/wlogin_sdk/a/b;->a(JIB[B[BB[B[BI[B[B[B[B[B[B)[B

    move-result-object v4

    move-object/from16 v0, v22

    iput-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    move-object/from16 v0, v22

    iget-object v4, v0, Loicq/wlogin_sdk/request/TransReqContext;->_body:[B

    if-nez v4, :cond_8

    const-string v4, "req_con._body is null"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x3f9

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, v23

    iget v4, v0, Loicq/wlogin_sdk/a/j;->i:I

    int-to-long v10, v4

    move-object/from16 v4, p0

    move-object/from16 v12, v22

    move-object/from16 v13, p10

    invoke-virtual/range {v4 .. v13}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public setBabyQFlg(Z)V
    .locals 0

    sput-boolean p1, Loicq/wlogin_sdk/request/u;->ag:Z

    return-void
.end method

.method public setCallSource(I)V
    .locals 0

    sput p1, Loicq/wlogin_sdk/request/u;->af:I

    return-void
.end method

.method public setForQCall()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Loicq/wlogin_sdk/request/u;->ap:Z

    const-string v0, "com.tencent.lightalk.msf.core.auth.WtProvider"

    sput-object v0, Loicq/wlogin_sdk/request/WtloginMsfListener;->CLIENT_CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public setHasPassword(JZ)V
    .locals 3

    iget-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-virtual {v0, p1, p2}, Loicq/wlogin_sdk/request/u;->e(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasPasswd ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper;->mG:Loicq/wlogin_sdk/request/u;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p3}, Loicq/wlogin_sdk/request/u;->a(Ljava/lang/String;Ljava/lang/Long;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasPasswd userAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hasPassword:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMsgType(III)V
    .locals 0

    sput p1, Loicq/wlogin_sdk/devicelock/DevlockBase$a;->a:I

    sput p2, Loicq/wlogin_sdk/devicelock/DevlockBase$a;->b:I

    sput p3, Loicq/wlogin_sdk/devicelock/DevlockBase$a;->c:I

    return-void
.end method
