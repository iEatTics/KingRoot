.class public final Lcom/kingroot/kinguser/akg;
.super Lcom/kingroot/kinguser/akd;
.source "SourceFile"


# static fields
.field private static volatile avk:Lcom/kingroot/kinguser/akg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/kingroot/kinguser/akd;-><init>()V

    return-void
.end method

.method public static Ap()Lcom/kingroot/kinguser/akg;
    .locals 2

    .prologue
    .line 8
    sget-object v0, Lcom/kingroot/kinguser/akg;->avk:Lcom/kingroot/kinguser/akg;

    if-nez v0, :cond_1

    .line 9
    const-class v1, Lcom/kingroot/kinguser/akg;

    monitor-enter v1

    .line 10
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/akg;->avk:Lcom/kingroot/kinguser/akg;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/kingroot/kinguser/akg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/akg;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/akg;->avk:Lcom/kingroot/kinguser/akg;

    .line 13
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/akg;->avk:Lcom/kingroot/kinguser/akg;

    return-object v0

    .line 13
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
    .line 20
    const-string v0, "silent_install"

    return-object v0
.end method
