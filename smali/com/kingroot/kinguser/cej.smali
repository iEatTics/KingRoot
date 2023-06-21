.class public final Lcom/kingroot/kinguser/cej;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile bYh:Z

.field private static volatile bYi:Ljava/lang/String;

.field private static volatile bYj:Z

.field private static volatile bYk:Z

.field private static volatile bYl:J

.field private static volatile bYm:J

.field private static bYn:Ljava/lang/Object;

.field private static bYo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 88
    sput-boolean v1, Lcom/kingroot/kinguser/cej;->bYh:Z

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/cej;->bYi:Ljava/lang/String;

    .line 90
    sput-boolean v1, Lcom/kingroot/kinguser/cej;->bYj:Z

    .line 91
    sput-boolean v1, Lcom/kingroot/kinguser/cej;->bYk:Z

    .line 92
    sput-wide v2, Lcom/kingroot/kinguser/cej;->bYl:J

    .line 95
    sput-wide v2, Lcom/kingroot/kinguser/cej;->bYm:J

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cej;->bYn:Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cej;->bYo:Ljava/util/ArrayList;

    return-void
.end method

.method public static akX()Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    sget-object v4, Lcom/kingroot/kinguser/cej;->bYn:Ljava/lang/Object;

    monitor-enter v4

    .line 165
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 166
    sget-wide v2, Lcom/kingroot/kinguser/cej;->bYm:J

    sub-long/2addr v2, v6

    .line 168
    const-wide/32 v8, 0x4f1a00

    cmp-long v2, v2, v8

    if-lez v2, :cond_0

    move v3, v0

    .line 169
    :goto_0
    sget-wide v8, Lcom/kingroot/kinguser/cej;->bYm:J

    sub-long v6, v8, v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-ltz v2, :cond_1

    move v2, v0

    .line 170
    :goto_1
    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 172
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :goto_2
    return v0

    :cond_0
    move v3, v1

    .line 168
    goto :goto_0

    :cond_1
    move v2, v1

    .line 169
    goto :goto_1

    .line 176
    :cond_2
    monitor-exit v4

    move v0, v1

    goto :goto_2

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method
