.class public final Lcom/kingroot/kinguser/boj;
.super Ljava/lang/Object;


# static fields
.field public static bFp:Lcom/kingroot/kinguser/bnw;


# direct methods
.method public static b(Ljava/lang/String;ZJJLjava/util/Map;Z)Z
    .locals 10

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v6, p6

    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    :try_start_1
    sget-object v1, Lcom/kingroot/kinguser/boj;->bFp:Lcom/kingroot/kinguser/bnw;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kingroot/kinguser/boj;->bFp:Lcom/kingroot/kinguser/bnw;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    move-object v2, p0

    move v3, p1

    move-object/from16 v8, p6

    invoke-interface/range {v1 .. v9}, Lcom/kingroot/kinguser/bnw;->a(Ljava/lang/String;ZJJLjava/util/Map;Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v0

    move v0, v8

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
