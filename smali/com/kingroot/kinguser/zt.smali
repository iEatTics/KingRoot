.class public abstract Lcom/kingroot/kinguser/zt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile WK:Lcom/kingroot/kinguser/zu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/zt;->WK:Lcom/kingroot/kinguser/zu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 219
    sget-object v0, Lcom/kingroot/kinguser/zt;->WK:Lcom/kingroot/kinguser/zu;

    if-nez v0, :cond_1

    .line 220
    const-class v1, Lcom/kingroot/kinguser/zt;

    monitor-enter v1

    .line 221
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/zt;->WK:Lcom/kingroot/kinguser/zu;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/kingroot/kinguser/zu;

    const-string v2, "a4"

    invoke-static {v2}, Lcom/kingroot/kinguser/zq;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/kingroot/kinguser/zu;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/kingroot/kinguser/zt;->WK:Lcom/kingroot/kinguser/zu;

    .line 224
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/zt;->WK:Lcom/kingroot/kinguser/zu;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/zu;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
