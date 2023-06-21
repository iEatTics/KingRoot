.class public Lcom/kingroot/kinguser/bux;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

.field public bON:I

.field public bOO:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bux;->bOO:I

    .line 7
    return-void
.end method

.method public static a(Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;II)Lcom/kingroot/kinguser/bux;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/kingroot/kinguser/bux;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bux;-><init>()V

    .line 21
    iput p2, v0, Lcom/kingroot/kinguser/bux;->bOO:I

    .line 22
    iput p1, v0, Lcom/kingroot/kinguser/bux;->bON:I

    .line 23
    invoke-static {p0, p2}, Lcom/kingroot/kinguser/bur;->a(Lcom/tencent/qqpimsecure/seachsdk/common/AvailUpdateEntity;I)Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/bux;->appInfo:Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    .line 24
    return-object v0
.end method
