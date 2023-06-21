.class public Lcom/kingroot/kinguser/aio;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static d(Lcom/kingroot/kinguser/abc;)Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 35
    invoke-static {p0}, Lcom/kingroot/kinguser/aio;->e(Lcom/kingroot/kinguser/abc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return v8

    .line 43
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ait;->ys()Ljava/lang/String;

    move-result-object v1

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 47
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    move-object v6, v0

    .line 51
    :goto_1
    sget-object v0, Lcom/kingroot/kinguser/aas;->XR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 52
    invoke-static {p0}, Lcom/kingroot/kinguser/aio;->e(Lcom/kingroot/kinguser/abc;)Z

    move-result v9

    .line 55
    if-eqz v6, :cond_1

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fy()J

    move-result-wide v0

    .line 60
    const-wide/32 v4, 0x5265c00

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bC(J)V

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    if-eqz v9, :cond_2

    move v0, v7

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v6}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, v6, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, v6, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x1879f

    invoke-virtual {v0, v2, v7, v1, v8}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    :cond_1
    move v8, v9

    .line 78
    goto :goto_0

    :cond_2
    move v0, v8

    .line 66
    goto :goto_2

    :cond_3
    move v0, v8

    .line 67
    goto :goto_3

    :cond_4
    move-object v6, v0

    goto :goto_1
.end method

.method private static e(Lcom/kingroot/kinguser/abc;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 86
    .line 88
    :try_start_0
    const-string v1, "cat /proc/mounts"

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    iget-object v1, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 96
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 97
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 98
    const-string v5, " /system "

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    const-string v5, "rw,"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    const/4 v0, 0x1

    .line 102
    goto :goto_0

    .line 97
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :catch_0
    move-exception v1

    goto :goto_0
.end method
