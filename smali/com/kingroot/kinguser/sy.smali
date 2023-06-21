.class public Lcom/kingroot/kinguser/sy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static GP:Lcom/kingroot/kinguser/su;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static jv()Lcom/kingroot/kinguser/su;
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/kingroot/kinguser/sy;->GP:Lcom/kingroot/kinguser/su;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/kingroot/kinguser/sy;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/sy;->GP:Lcom/kingroot/kinguser/su;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 30
    new-instance v0, Lcom/kingroot/kinguser/tb;

    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/tb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kingroot/kinguser/sy;->GP:Lcom/kingroot/kinguser/su;

    .line 36
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/sy;->GP:Lcom/kingroot/kinguser/su;

    return-object v0

    .line 33
    :cond_2
    :try_start_1
    new-instance v0, Lcom/kingroot/kinguser/sz;

    invoke-direct {v0}, Lcom/kingroot/kinguser/sz;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/sy;->GP:Lcom/kingroot/kinguser/su;

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
