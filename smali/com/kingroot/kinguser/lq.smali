.class public Lcom/kingroot/kinguser/lq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/hf;


# static fields
.field private static volatile uY:Lcom/kingroot/kinguser/lq;


# instance fields
.field private uZ:Lcom/kingroot/kinguser/lp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private be(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/lq;->uZ:Lcom/kingroot/kinguser/lp;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/lp;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/kingroot/kinguser/lq;->uZ:Lcom/kingroot/kinguser/lp;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, p1, v0}, Lcom/kingroot/kinguser/lp;->a(Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method public static dW()Lcom/kingroot/kinguser/lq;
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/kingroot/kinguser/lq;->uY:Lcom/kingroot/kinguser/lq;

    if-nez v0, :cond_1

    .line 14
    const-class v1, Lcom/kingroot/kinguser/lq;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/lq;->uY:Lcom/kingroot/kinguser/lq;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/kingroot/kinguser/lq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/lq;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/lq;->uY:Lcom/kingroot/kinguser/lq;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/lq;->uY:Lcom/kingroot/kinguser/lq;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/lp;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/kingroot/kinguser/lq;->uZ:Lcom/kingroot/kinguser/lp;

    .line 25
    return-void
.end method

.method public dX()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/lq;->uZ:Lcom/kingroot/kinguser/lp;

    const-string v1, "last_start_uranus_rebooted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/lp;->a(Ljava/lang/String;I)V

    .line 37
    return-void
.end method

.method public dY()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "total_failed_count"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/lq;->be(Ljava/lang/String;)V

    .line 72
    const-string v0, "continues_failed_count"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/lq;->be(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public dZ()V
    .locals 3

    .prologue
    .line 77
    const-string v0, "total_reboot_count"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/lq;->be(Ljava/lang/String;)V

    .line 79
    const-string v0, "continues_reboot_count"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/lq;->be(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/lq;->uZ:Lcom/kingroot/kinguser/lp;

    const-string v1, "last_start_uranus_rebooted"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/lp;->a(Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public ea()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/lq;->uZ:Lcom/kingroot/kinguser/lp;

    const-string v1, "continues_failed_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/lp;->a(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public eb()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/lq;->uZ:Lcom/kingroot/kinguser/lp;

    const-string v1, "continues_reboot_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/lp;->a(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method public notifyManuallyReboot()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/lt;->eg()Lcom/kingroot/kinguser/lt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/lt;->eh()V

    .line 66
    return-void
.end method
