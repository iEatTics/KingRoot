.class public Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loicq/wlogin_sdk/request/WtloginHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickLoginParam"
.end annotation


# instance fields
.field public appid:J

.field public dstAppid:J

.field public dstSubAppidList:[J

.field public forceWebLogin:Z

.field public isUserAccountLocked:Z

.field public sigMap:I

.field public subAppid:J

.field public userAccount:Ljava/lang/String;

.field public userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

.field public webViewActivityClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->forceWebLogin:Z

    iput-boolean v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->isUserAccountLocked:Z

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->subAppid:J

    new-instance v0, Loicq/wlogin_sdk/request/WUserSigInfo;

    invoke-direct {v0}, Loicq/wlogin_sdk/request/WUserSigInfo;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/request/WtloginHelper$QuickLoginParam;->userSigInfo:Loicq/wlogin_sdk/request/WUserSigInfo;

    return-void
.end method
