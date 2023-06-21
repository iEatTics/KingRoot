.class public Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loicq/wlogin_sdk/request/WtloginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HelperThread"
.end annotation


# instance fields
.field isSelfLooper:Z

.field mAppName2:[B

.field mAppSign2:[B

.field mAppVer2:[B

.field mAppid1:J

.field mAppid2:J

.field mDwAppid:J

.field mDwDstAppPri:J

.field mDwDstAppid:J

.field mDwDstSubAppidList:[J

.field mDwMainSigMap:I

.field mDwSubAppidList:[J

.field mDwSubDstAppid:J

.field mEncrypt:I

.field mFastLoginInfo:Loicq/wlogin_sdk/request/WFastLoginInfo;

.field mHandler:Landroid/os/Handler;

.field mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

.field mIsSmslogin:Z

.field mMsgCode:Ljava/lang/String;

.field mPictureData:[B

.field mPromise:Loicq/wlogin_sdk/request/WtTicketPromise;

.field mPwdMd5:Z

.field mReportErrType:I

.field mReqContext:Loicq/wlogin_sdk/request/TransReqContext;

.field mReqType:I

.field mReserve:[[B

.field mRole:J

.field mST:[[B

.field mST1:[B

.field mST1Key:[B

.field mSmsAppid:J

.field mSsoVer2:J

.field mSubAppid1:J

.field mSubAppid2:J

.field mUIN:J

.field mUserAccount:Ljava/lang/String;

.field mUserInput:[B

.field mUserPasswd:Ljava/lang/String;

.field mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

.field ptSig:Ljava/lang/String;

.field quickLoginParam:Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;

.field final synthetic this$0:Loicq/wlogin_sdk/request/WtloginHelper;


# direct methods
.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;ILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    iput p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mEncrypt:I

    iput-object p5, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    iput-wide p6, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwAppid:J

    iput-wide p8, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mRole:J

    iput-object p10, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqContext:Loicq/wlogin_sdk/request/TransReqContext;

    invoke-virtual {p0, p11}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;ILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    iput p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mEncrypt:I

    iput-object p5, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    iput-wide p6, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwAppid:J

    iput-wide p8, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mRole:J

    iput-object p10, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqContext:Loicq/wlogin_sdk/request/TransReqContext;

    iput-object p11, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-virtual {p0, p12}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    iput-object p8, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    iput-wide p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mAppid1:J

    iput-wide p6, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mSubAppid1:J

    iput-object p9, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-virtual {p0, p10}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JIJLoicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    iput-wide p5, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwAppid:J

    iput p7, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwMainSigMap:I

    iput-wide p8, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwSubDstAppid:J

    iput-object p10, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-virtual {p0, p11}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZLjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v1, 0x0

    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    iput-wide p5, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwAppid:J

    iput p7, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwMainSigMap:I

    iput-wide p8, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwSubDstAppid:J

    iput-object p10, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwSubAppidList:[J

    iput-boolean p11, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mPwdMd5:Z

    iput-object p12, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserPasswd:Ljava/lang/String;

    iput-object p13, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    move-object/from16 v0, p14

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mST:[[B

    move/from16 v0, p15

    iput-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    move-object/from16 v0, p16

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v2, 0x0

    iput-object v2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    const/4 v2, 0x0

    iput-boolean v2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    iput-wide p5, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mAppid1:J

    iput-wide p7, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mSubAppid1:J

    iput p9, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwMainSigMap:I

    iput-object p10, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mAppName2:[B

    move-wide/from16 v0, p13

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mSsoVer2:J

    move-wide/from16 v0, p13

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mAppid2:J

    move-wide/from16 v0, p15

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mSubAppid2:J

    move-object/from16 v0, p17

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mAppVer2:[B

    move-object/from16 v0, p18

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mAppSign2:[B

    move-object/from16 v0, p19

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    move-object/from16 v0, p20

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mFastLoginInfo:Loicq/wlogin_sdk/request/WFastLoginInfo;

    move-object/from16 v0, p21

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    iput-wide p5, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mSmsAppid:J

    iput-object p7, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-virtual {p0, p8}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    iput-object p5, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mMsgCode:Ljava/lang/String;

    iput-object p6, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-virtual {p0, p7}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    iput-object p5, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->ptSig:Ljava/lang/String;

    iput-object p6, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->quickLoginParam:Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;

    iget-object v0, p6, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-virtual {p0, p7}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    iput-object p5, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-virtual {p0, p6}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    iput-object p5, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->quickLoginParam:Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;

    iget-object v0, p5, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-virtual {p0, p6}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    iput-object p5, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserInput:[B

    iput-object p6, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-object p7, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mST:[[B

    invoke-virtual {p0, p8}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;Loicq/wlogin_sdk/request/WtTicketPromise;Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BLjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v1, 0x0

    iput-object v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mPromise:Loicq/wlogin_sdk/request/WtTicketPromise;

    iput-object p5, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    iput-wide p6, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwAppid:J

    iput-wide p8, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwDstAppid:J

    iput-wide p10, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwDstAppPri:J

    iput p12, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwMainSigMap:I

    iput-wide p13, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwSubDstAppid:J

    move-object/from16 v0, p15

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwDstSubAppidList:[J

    move-object/from16 v0, p16

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    move-object/from16 v0, p17

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mST:[[B

    move-object/from16 v0, p18

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReserve:[[B

    move-object/from16 v0, p19

    invoke-virtual {p0, v0}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;[B[BJJILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mST1:[B

    iput-object p5, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mST1Key:[B

    iput-wide p6, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUIN:J

    iput-wide p8, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwAppid:J

    iput p10, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReportErrType:I

    invoke-virtual {p0, p11}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Loicq/wlogin_sdk/request/WtloginHelper;Loicq/wlogin_sdk/request/WtloginHelper;Landroid/os/Handler;[B[BJJLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    iput-boolean v1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    iput-object p2, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    iput-object p3, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mST1:[B

    iput-object p5, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mST1Key:[B

    iput-wide p6, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUIN:J

    iput-wide p8, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwAppid:J

    invoke-virtual {p0, p10}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;)V
    .locals 0

    invoke-direct {p0}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->quitSelfLooper()V

    return-void
.end method

.method private quitSelfLooper()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v0, v1}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public RunReq(I)V
    .locals 6

    iput p1, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    iget v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->start()V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Loicq/wlogin_sdk/request/WtloginHelper;->__sync_top:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v2, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$1;

    invoke-direct {v2, p0}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$1;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;)V

    sget v3, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    mul-int/lit16 v3, v3, 0x1f4

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "push queue "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-static {v2}, Loicq/wlogin_sdk/request/WtloginHelper;->access$100(Loicq/wlogin_sdk/request/WtloginHelper;)Loicq/wlogin_sdk/request/WtloginListener;

    move-result-object v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mPromise:Loicq/wlogin_sdk/request/WtTicketPromise;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-static {v2}, Loicq/wlogin_sdk/request/WtloginHelper;->access$200(Loicq/wlogin_sdk/request/WtloginHelper;)Loicq/wlogin_sdk/request/u;

    move-result-object v2

    iget v0, v2, Loicq/wlogin_sdk/request/u;->s:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->this$0:Loicq/wlogin_sdk/request/WtloginHelper;

    invoke-static {v2}, Loicq/wlogin_sdk/request/WtloginHelper;->access$300(Loicq/wlogin_sdk/request/WtloginHelper;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Handler should not be null!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, ""

    invoke-static {v2, v3}, Loicq/wlogin_sdk/tools/util;->printException(Ljava/lang/Exception;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v3, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$17;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v3, v0, v1}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$17;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    sget-object v3, Loicq/wlogin_sdk/request/WtloginHelper;->__sync_top:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    sget v2, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    if-lez v2, :cond_4

    sget v2, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pop queue "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwAppid:J

    move-object/from16 v0, p0

    iget v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwMainSigMap:I

    move-object/from16 v0, p0

    iget-wide v7, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwSubDstAppid:J

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwSubAppidList:[J

    move-object/from16 v0, p0

    iget-boolean v10, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mPwdMd5:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserPasswd:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mST:[[B

    move-object/from16 v0, p0

    iget-boolean v14, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mIsSmslogin:Z

    const/4 v15, 0x1

    invoke-static/range {v2 .. v15}, Loicq/wlogin_sdk/request/WtloginHelper;->access$400(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JIJ[JZLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;[[BZI)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$2;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$2;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    if-eqz v2, :cond_8

    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    sget-object v3, Loicq/wlogin_sdk/request/WtloginHelper;->__sync_top:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    sget v2, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    if-lez v2, :cond_9

    sget v2, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pop queue "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-static {v2, v4}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Loicq/wlogin_sdk/request/WtloginHelper;->access$600(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$3;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$3;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->isSelfLooper:Z

    if-eqz v3, :cond_b

    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_d

    sget-object v3, Loicq/wlogin_sdk/request/WtloginHelper;->__sync_top:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    sget v4, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    if-lez v4, :cond_c

    sget v4, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pop queue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Loicq/wlogin_sdk/request/WtloginHelper;->__top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Loicq/wlogin_sdk/tools/util;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_d
    throw v2

    :cond_e
    :try_start_7
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserInput:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mST:[[B

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Loicq/wlogin_sdk/request/WtloginHelper;->access$700(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$4;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$4;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mSmsAppid:J

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Loicq/wlogin_sdk/request/WtloginHelper;->access$800(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JLoicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$5;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$5;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserInput:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mST:[[B

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Loicq/wlogin_sdk/request/WtloginHelper;->access$900(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;[BLoicq/wlogin_sdk/request/WUserSigInfo;[[BI)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$6;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$6;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwAppid:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwDstAppid:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwDstAppPri:J

    move-object/from16 v0, p0

    iget v10, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwMainSigMap:I

    move-object/from16 v0, p0

    iget-wide v11, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwSubDstAppid:J

    move-object/from16 v0, p0

    iget-object v13, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwDstSubAppidList:[J

    move-object/from16 v0, p0

    iget-object v14, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mST:[[B

    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReserve:[[B

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mPromise:Loicq/wlogin_sdk/request/WtTicketPromise;

    move-object/from16 v18, v0

    invoke-static/range {v2 .. v18}, Loicq/wlogin_sdk/request/WtloginHelper;->access$1000(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJJIJ[JLoicq/wlogin_sdk/request/WUserSigInfo;[[B[[BILoicq/wlogin_sdk/request/WtTicketPromise;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$7;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$7;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mAppid1:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mSubAppid1:J

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwMainSigMap:I

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mAppName2:[B

    move-object/from16 v0, p0

    iget-wide v10, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mSsoVer2:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mAppid2:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mSubAppid2:J

    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mAppVer2:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mAppSign2:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mFastLoginInfo:Loicq/wlogin_sdk/request/WFastLoginInfo;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v2 .. v20}, Loicq/wlogin_sdk/request/WtloginHelper;->access$1200(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJI[BJJJ[B[BLoicq/wlogin_sdk/request/WUserSigInfo;Loicq/wlogin_sdk/request/WFastLoginInfo;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$8;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$8;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mST1:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mST1Key:[B

    move-object/from16 v0, p0

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUIN:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwAppid:J

    invoke-static/range {v2 .. v9}, Loicq/wlogin_sdk/request/WtloginHelper;->access$1300(Loicq/wlogin_sdk/request/WtloginHelper;I[B[BJJ)I

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mEncrypt:I

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwAppid:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mRole:J

    move-object/from16 v0, p0

    iget-object v10, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqContext:Loicq/wlogin_sdk/request/TransReqContext;

    move-object/from16 v0, p0

    iget-object v11, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-virtual/range {v2 .. v11}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransport(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;Loicq/wlogin_sdk/request/WUserSigInfo;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$9;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$9;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mEncrypt:I

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwAppid:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mRole:J

    move-object/from16 v0, p0

    iget-object v10, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqContext:Loicq/wlogin_sdk/request/TransReqContext;

    invoke-virtual/range {v2 .. v10}, Loicq/wlogin_sdk/request/WtloginHelper;->RequestTransportMsf(IILjava/lang/String;JJLoicq/wlogin_sdk/request/TransReqContext;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$10;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$10;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    move-object/from16 v0, p0

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mAppid1:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mSubAppid1:J

    move-object/from16 v0, p0

    iget-object v8, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    const/4 v10, 0x1

    invoke-static/range {v3 .. v10}, Loicq/wlogin_sdk/request/WtloginHelper;->access$1700(Loicq/wlogin_sdk/request/WtloginHelper;JJLjava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$11;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$11;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mMsgCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Loicq/wlogin_sdk/request/WtloginHelper;->access$1800(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$12;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$12;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Loicq/wlogin_sdk/request/WtloginHelper;->access$1900(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Loicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$13;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$13;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mST1:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mST1Key:[B

    move-object/from16 v0, p0

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUIN:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwAppid:J

    move-object/from16 v0, p0

    iget v10, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReportErrType:I

    invoke-static/range {v2 .. v10}, Loicq/wlogin_sdk/request/WtloginHelper;->access$2000(Loicq/wlogin_sdk/request/WtloginHelper;I[B[BJJI)I

    goto/16 :goto_2

    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->quickLoginParam:Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Loicq/wlogin_sdk/request/WtloginHelper;->access$2100(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$14;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$14;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->ptSig:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->quickLoginParam:Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Loicq/wlogin_sdk/request/WtloginHelper;->access$2200(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;Ljava/lang/String;Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$15;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$15;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mReqType:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHelper:Loicq/wlogin_sdk/request/WtloginHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v4, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwAppid:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwSubDstAppid:J

    move-object/from16 v0, p0

    iget v8, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mDwMainSigMap:I

    move-object/from16 v0, p0

    iget-object v9, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mUserSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    const/4 v10, 0x1

    invoke-static/range {v2 .. v10}, Loicq/wlogin_sdk/request/WtloginHelper;->access$2300(Loicq/wlogin_sdk/request/WtloginHelper;Ljava/lang/String;JJILoicq/wlogin_sdk/request/WUserSigInfo;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;->mHandler:Landroid/os/Handler;

    new-instance v4, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$16;

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v4, v0, v1, v2}, Loicq/wlogin_sdk/request/WtloginHelper$HelperThread$16;-><init>(Loicq/wlogin_sdk/request/WtloginHelper$HelperThread;II)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_2

    :catchall_3
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v2
.end method
