.class final Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 111
    new-instance v0, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$2$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$2$1;-><init>(Lcom/kingroot/kinguser/common/check/DaemonRunningCheckUnit$2;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method
