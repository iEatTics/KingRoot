.class public Lcom/kingroot/kinguser/cfb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cfb$b;,
        Lcom/kingroot/kinguser/cfb$a;
    }
.end annotation


# static fields
.field private static bZx:Lcom/kingroot/kinguser/cet;

.field private static bZy:Lcom/kingroot/kinguser/cet;

.field private static bZz:Lcom/kingroot/kinguser/cfb$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static alA()Lcom/kingroot/kinguser/cfb$b;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/kingroot/kinguser/cfb;->bZz:Lcom/kingroot/kinguser/cfb$b;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lcom/kingroot/kinguser/cfb;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/cfb;->bZz:Lcom/kingroot/kinguser/cfb$b;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/kingroot/kinguser/cfb$b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cfb$b;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cfb;->bZz:Lcom/kingroot/kinguser/cfb$b;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/cfb;->bZz:Lcom/kingroot/kinguser/cfb$b;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static aly()Lcom/kingroot/kinguser/cet;
    .locals 2

    .prologue
    .line 11
    sget-object v0, Lcom/kingroot/kinguser/cfb;->bZx:Lcom/kingroot/kinguser/cet;

    if-nez v0, :cond_1

    .line 12
    const-class v1, Lcom/kingroot/kinguser/cfb;

    monitor-enter v1

    .line 13
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/cfb;->bZx:Lcom/kingroot/kinguser/cet;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/kingroot/kinguser/cfb$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cfb$a;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cfb;->bZx:Lcom/kingroot/kinguser/cet;

    .line 16
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/cfb;->bZx:Lcom/kingroot/kinguser/cet;

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static alz()Lcom/kingroot/kinguser/cet;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/kingroot/kinguser/cfb;->bZy:Lcom/kingroot/kinguser/cet;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/kingroot/kinguser/cfb;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/cfb;->bZy:Lcom/kingroot/kinguser/cet;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/kingroot/kinguser/cfb$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cfb$a;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cfb;->bZy:Lcom/kingroot/kinguser/cet;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/cfb;->bZy:Lcom/kingroot/kinguser/cet;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
