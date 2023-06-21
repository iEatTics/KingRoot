.class Lcom/kingroot/kinguser/cft$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cdG:Lcom/kingroot/kinguser/cft;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cft;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/kingroot/kinguser/cft$1;->cdG:Lcom/kingroot/kinguser/cft;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/cft$1;->cdG:Lcom/kingroot/kinguser/cft;

    invoke-static {v0}, Lcom/kingroot/kinguser/cft;->a(Lcom/kingroot/kinguser/cft;)V

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/cft$1;->cdG:Lcom/kingroot/kinguser/cft;

    invoke-static {v0}, Lcom/kingroot/kinguser/cft;->b(Lcom/kingroot/kinguser/cft;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.tencent.tmsdk.HeartBeatPlot.ACTION_HEARTBEAT_PLOT_ALARM_CYCLE"

    const-wide/16 v2, 0x3e8

    iget-object v4, p0, Lcom/kingroot/kinguser/cft$1;->cdG:Lcom/kingroot/kinguser/cft;

    invoke-static {v4}, Lcom/kingroot/kinguser/cft;->c(Lcom/kingroot/kinguser/cft;)Lcom/kingroot/kinguser/cft$b;

    move-result-object v4

    invoke-interface {v4}, Lcom/kingroot/kinguser/cft$b;->amA()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/cfr;->b(Landroid/content/Context;Ljava/lang/String;J)Landroid/app/PendingIntent;

    .line 41
    return-void
.end method
