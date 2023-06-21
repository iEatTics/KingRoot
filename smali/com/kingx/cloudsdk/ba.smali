.class public final Lcom/kingx/cloudsdk/ba;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static bBI:J


# instance fields
.field private final bBJ:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/kingx/cloudsdk/ba;->bBI:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingx/cloudsdk/ba;->bBJ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 35
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {p1}, Lcom/kingroot/kinguser/bmu;->bJ(Landroid/content/Context;)B

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 41
    iget-object v6, p0, Lcom/kingx/cloudsdk/ba;->bBJ:Ljava/lang/Object;

    monitor-enter v6

    .line 42
    :try_start_0
    sget-wide v0, Lcom/kingx/cloudsdk/ba;->bBI:J

    const-wide/16 v4, 0x2710

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/bmu;->d(JJJ)Z

    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 46
    monitor-exit v6

    .line 69
    :cond_0
    :goto_1
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    sput-wide v2, Lcom/kingx/cloudsdk/ba;->bBI:J

    .line 51
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    new-instance v0, Lcom/kingx/cloudsdk/ba$1;

    invoke-direct {v0, p0, p1}, Lcom/kingx/cloudsdk/ba$1;-><init>(Lcom/kingx/cloudsdk/ba;Landroid/content/Context;)V

    .line 66
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/ba$1;->co()Z

    goto :goto_1

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method
