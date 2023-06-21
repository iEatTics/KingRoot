.class public Lcom/kingroot/kinguser/buz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

.field public id:J

.field public orderId:J

.field public pkgName:Ljava/lang/String;

.field public timeEnd:J

.field public timeStart:J

.field public tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v1, p0, Lcom/kingroot/kinguser/buz;->pkgName:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/buz;->versionCode:I

    .line 11
    iput-object v1, p0, Lcom/kingroot/kinguser/buz;->tipsInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/TipsInfo;

    .line 5
    return-void
.end method
