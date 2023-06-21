.class public Lcom/kingroot/kinguser/ake;
.super Lcom/kingroot/kinguser/akd;
.source "SourceFile"


# static fields
.field private static volatile avf:Lcom/kingroot/kinguser/ake;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/kingroot/kinguser/akd;-><init>()V

    return-void
.end method

.method public static Al()Lcom/kingroot/kinguser/ake;
    .locals 2

    .prologue
    .line 9
    sget-object v0, Lcom/kingroot/kinguser/ake;->avf:Lcom/kingroot/kinguser/ake;

    if-nez v0, :cond_1

    .line 10
    const-class v1, Lcom/kingroot/kinguser/ake;

    monitor-enter v1

    .line 11
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/ake;->avf:Lcom/kingroot/kinguser/ake;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/kingroot/kinguser/ake;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ake;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ake;->avf:Lcom/kingroot/kinguser/ake;

    .line 14
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/ake;->avf:Lcom/kingroot/kinguser/ake;

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected Aj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "mem_free"

    return-object v0
.end method
