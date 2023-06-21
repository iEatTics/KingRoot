.class public final Lcom/kingroot/common/utils/system/ProcessUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/utils/system/ProcessUtils$a;,
        Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;,
        Lcom/kingroot/common/utils/system/ProcessUtils$b;
    }
.end annotation


# direct methods
.method public static O(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v0

    .line 40
    :goto_0
    if-nez v3, :cond_1

    .line 60
    :goto_1
    return v1

    :cond_0
    move v3, v1

    .line 39
    goto :goto_0

    .line 43
    :cond_1
    new-array v4, v3, [I

    move v2, v1

    .line 44
    :goto_2
    if-ge v2, v3, :cond_2

    .line 45
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v4, v2

    .line 44
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 47
    :cond_2
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    .line 48
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 52
    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    array-length v3, v2

    move v0, v1

    :goto_3
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 57
    invoke-virtual {v4}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    add-int/2addr v0, v4

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    .line 60
    goto :goto_1
.end method

.method public static final P(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingroot/common/utils/system/ProcessUtils;->g(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a([BIC)I
    .locals 3

    .prologue
    .line 282
    add-int/lit8 v0, p1, -0x1

    .line 283
    :goto_0
    add-int/lit8 v1, v0, 0x1

    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 284
    array-length v0, p0

    if-eq v1, v0, :cond_0

    aget-byte v0, p0, v1

    if-ne v0, p2, :cond_2

    .line 289
    :cond_0
    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/kingroot/common/utils/system/ProcessUtils$b;)Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 553
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 574
    :goto_0
    return-object v0

    .line 557
    :cond_1
    const-string v0, " "

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/aab;->L(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_2

    array-length v2, v0

    if-ge v2, v3, :cond_3

    :cond_2
    move-object v0, v1

    .line 559
    goto :goto_0

    .line 562
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/kingroot/common/utils/system/ProcessUtils$b;->getIndex(I)I

    move-result v2

    aget-object v2, v0, v2

    .line 563
    const/4 v3, 0x1

    .line 564
    invoke-virtual {p1, v3}, Lcom/kingroot/common/utils/system/ProcessUtils$b;->getIndex(I)I

    move-result v3

    aget-object v3, v0, v3

    .line 563
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 565
    const/4 v4, 0x2

    .line 566
    invoke-virtual {p1, v4}, Lcom/kingroot/common/utils/system/ProcessUtils$b;->getIndex(I)I

    move-result v4

    aget-object v4, v0, v4

    .line 565
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 567
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/kingroot/common/utils/system/ProcessUtils$b;->getIndex(I)I

    move-result v5

    aget-object v5, v0, v5

    .line 569
    new-instance v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;-><init>(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 574
    goto :goto_0
.end method

.method public static an(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 713
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/common/utils/system/ProcessUtils;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static cc(I)Lcom/kingroot/common/utils/system/ProcessUtils$a;
    .locals 6

    .prologue
    .line 184
    const-wide/16 v0, 0x0

    .line 185
    new-instance v2, Lcom/kingroot/common/utils/system/ProcessUtils$a;

    invoke-direct {v2}, Lcom/kingroot/common/utils/system/ProcessUtils$a;-><init>()V

    .line 186
    invoke-static {p0}, Lcom/kingroot/kinguser/aat;->bZ(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/kingroot/common/utils/system/ProcessUtils$a;->mCpuTime:J

    .line 187
    iput-wide v0, v2, Lcom/kingroot/common/utils/system/ProcessUtils$a;->mStartTime:J

    .line 188
    return-object v2
.end method

.method public static cd(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 198
    :try_start_0
    const-string v0, ""

    .line 201
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "/proc/%d/cmdline"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/rs;->h(Ljava/lang/String;I)[B

    move-result-object v1

    .line 202
    if-eqz v1, :cond_0

    .line 204
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/kingroot/common/utils/system/ProcessUtils;->a([BIC)I

    move-result v2

    .line 205
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 208
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "/proc/%d/status"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x96

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/rs;->h(Ljava/lang/String;I)[B

    move-result-object v1

    .line 210
    if-eqz v1, :cond_1

    .line 212
    const/4 v2, 0x6

    .line 213
    const/4 v0, 0x7

    const/16 v3, 0xa

    invoke-static {v1, v0, v3}, Lcom/kingroot/common/utils/system/ProcessUtils;->a([BIC)I

    move-result v3

    .line 214
    if-nez v3, :cond_2

    .line 215
    const-string v0, ""

    .line 225
    :cond_1
    :goto_0
    return-object v0

    .line 217
    :cond_2
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 225
    const-string v0, ""

    goto :goto_0
.end method

.method public static ce(I)Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 370
    .line 374
    :try_start_0
    invoke-static {p0}, Lcom/kingroot/common/utils/system/ProcessUtils;->cd(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 375
    :try_start_1
    new-instance v3, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "/proc/%d/status"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kingroot/kinguser/rs;->cy(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 377
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 378
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 379
    array-length v6, v3

    :goto_0
    if-ge v0, v6, :cond_2

    aget-object v7, v3, v0

    .line 380
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 381
    array-length v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_0

    .line 379
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_0
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 388
    :catch_0
    move-exception v0

    move v0, v2

    move-object v3, v4

    :goto_2
    move v4, v0

    move-object v5, v3

    move v3, v2

    .line 392
    :goto_3
    if-eqz v5, :cond_1

    if-eq v4, v2, :cond_1

    if-ne v3, v2, :cond_3

    :cond_1
    move-object v0, v1

    .line 395
    :goto_4
    return-object v0

    .line 386
    :cond_2
    const-string v0, "PPid"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 387
    :try_start_2
    const-string v0, "Uid"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "\\s+"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    move-object v5, v4

    move v4, v3

    move v3, v0

    .line 390
    goto :goto_3

    .line 395
    :cond_3
    new-instance v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    invoke-direct {v0, p0, v4, v5, v3}, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;-><init>(IILjava/lang/String;I)V

    goto :goto_4

    .line 388
    :catch_1
    move-exception v0

    move v0, v2

    move-object v3, v1

    goto :goto_2

    :catch_2
    move-exception v0

    move v0, v3

    move-object v3, v4

    goto :goto_2
.end method

.method private static eh(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service call activity 79 s16 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ei(Ljava/lang/String;)Lcom/kingroot/common/utils/system/ProcessUtils$b;
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 515
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v5

    .line 548
    :goto_0
    return-object v0

    .line 519
    :cond_0
    const-string v1, " "

    invoke-static {p0, v1}, Lcom/kingroot/kinguser/aab;->L(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 520
    if-eqz v8, :cond_1

    array-length v1, v8

    if-ge v1, v3, :cond_2

    :cond_1
    move-object v0, v5

    .line 521
    goto :goto_0

    .line 527
    :cond_2
    const/4 v2, 0x2

    .line 528
    const/16 v1, 0x8

    .line 530
    array-length v9, v8

    move v6, v0

    move v4, v0

    move v11, v2

    move v2, v0

    move v0, v1

    move v1, v11

    :goto_1
    if-ge v6, v9, :cond_7

    aget-object v7, v8, v6

    .line 531
    const-string v10, "USER"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v4, v2

    .line 541
    :cond_3
    :goto_2
    add-int/lit8 v7, v2, 0x1

    .line 530
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v7

    goto :goto_1

    .line 533
    :cond_4
    const-string v10, "PID"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v3, v2

    .line 534
    goto :goto_2

    .line 535
    :cond_5
    const-string v10, "PPID"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v1, v2

    .line 536
    goto :goto_2

    .line 537
    :cond_6
    const-string v10, "NAME"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 538
    add-int/lit8 v0, v2, 0x1

    goto :goto_2

    .line 544
    :cond_7
    new-instance v2, Lcom/kingroot/common/utils/system/ProcessUtils$b;

    invoke-direct {v2, v4, v3, v1, v0}, Lcom/kingroot/common/utils/system/ProcessUtils$b;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    move-object v0, v5

    .line 548
    goto :goto_0
.end method

.method public static ej(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 693
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 704
    :cond_0
    :goto_0
    return v0

    .line 697
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 698
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kingroot/common/utils/system/ProcessUtils;->g(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 700
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 701
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    iget v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    goto :goto_0
.end method

.method public static final f(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    const/4 v0, 0x0

    .line 485
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 486
    :try_start_1
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 487
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 488
    if-nez v0, :cond_0

    .line 510
    :goto_0
    return-object v1

    .line 491
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 492
    if-eqz v0, :cond_1

    .line 496
    iget v3, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_1

    .line 499
    iget-object v3, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 500
    if-eqz p1, :cond_2

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 501
    new-instance v4, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    iget v5, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    iget v6, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    iget-object v7, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_2
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 504
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 507
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    move-object v1, v0

    .line 510
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 509
    goto :goto_2

    .line 507
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static final g(Ljava/util/List;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 415
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 419
    :try_start_0
    const-string v3, "ps"

    invoke-static {v3}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v3

    .line 420
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 421
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, v2

    .line 472
    :goto_0
    return-object v0

    .line 426
    :cond_1
    iget-object v3, v3, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 427
    if-eqz v5, :cond_2

    array-length v3, v5

    if-ge v3, v0, :cond_3

    :cond_2
    move-object v0, v2

    .line 428
    goto :goto_0

    .line 433
    :cond_3
    const/4 v3, 0x0

    aget-object v4, v5, v3

    .line 434
    const/4 v3, 0x0

    .line 435
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 436
    const-string v6, "PID"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 437
    invoke-static {v4}, Lcom/kingroot/common/utils/system/ProcessUtils;->ei(Ljava/lang/String;)Lcom/kingroot/common/utils/system/ProcessUtils$b;

    move-result-object v3

    move v4, v0

    .line 444
    :goto_1
    if-nez v3, :cond_4

    .line 445
    new-instance v3, Lcom/kingroot/common/utils/system/ProcessUtils$b;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/16 v9, 0x8

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/kingroot/common/utils/system/ProcessUtils$b;-><init>(IIII)V

    .line 449
    :cond_4
    if-eqz v4, :cond_7

    :goto_2
    array-length v1, v5

    if-ge v0, v1, :cond_b

    .line 450
    aget-object v1, v5, v0

    invoke-static {v1, v3}, Lcom/kingroot/common/utils/system/ProcessUtils;->a(Ljava/lang/String;Lcom/kingroot/common/utils/system/ProcessUtils$b;)Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    move-result-object v1

    .line 451
    if-nez v1, :cond_8

    .line 449
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v4, v1

    .line 439
    goto :goto_1

    :cond_7
    move v0, v1

    .line 449
    goto :goto_2

    .line 455
    :cond_8
    if-eqz p0, :cond_9

    iget-object v4, v1, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 457
    :cond_9
    if-eqz p1, :cond_a

    .line 458
    invoke-static {v1}, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->access$200(Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;)V

    .line 461
    :cond_a
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 469
    :catch_0
    move-exception v0

    :cond_b
    move-object v0, v2

    .line 472
    goto :goto_0

    :cond_c
    move v4, v0

    goto :goto_1
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 72
    invoke-static {p1}, Lcom/kingroot/common/utils/system/ProcessUtils;->eh(Ljava/lang/String;)Z

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/kingroot/common/utils/system/ProcessUtils;->n(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static n(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/kingroot/common/utils/system/ProcessUtils;->o(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method private static o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 123
    const-string v0, "activity"

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 125
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    .line 127
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 128
    if-nez v0, :cond_1

    .line 157
    :cond_0
    return-void

    .line 132
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 133
    iget-object v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    const/4 v1, 0x0

    .line 136
    :try_start_0
    iget-object v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 143
    :goto_1
    if-eqz v1, :cond_2

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-boolean v1, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v1, :cond_2

    .line 145
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 146
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0

    .line 139
    :catch_1
    move-exception v4

    goto :goto_1

    .line 137
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 673
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    :cond_0
    :goto_0
    return v0

    .line 677
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 678
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-static {v2, v1}, Lcom/kingroot/common/utils/system/ProcessUtils;->g(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 680
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    .line 681
    goto :goto_0
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 721
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 737
    :goto_0
    return v0

    .line 725
    :cond_0
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 726
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 727
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 728
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 729
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 730
    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    .line 737
    goto :goto_0
.end method

.method public static qI()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-static {}, Lcom/kingroot/common/utils/system/ProcessUtils;->qJ()Ljava/util/List;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 244
    :goto_0
    return-object v0

    .line 237
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 239
    iget v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_1

    .line 240
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 244
    goto :goto_0
.end method

.method public static qJ()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 253
    if-nez v2, :cond_1

    .line 278
    :cond_0
    return-object v0

    .line 257
    :cond_1
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 258
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 257
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_3
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 264
    const/16 v6, 0x39

    if-gt v5, v6, :cond_2

    const/16 v6, 0x30

    if-lt v5, v6, :cond_2

    .line 269
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 270
    invoke-static {v4}, Lcom/kingroot/common/utils/system/ProcessUtils;->ce(I)Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    move-result-object v4

    .line 271
    if-eqz v4, :cond_2

    .line 272
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 274
    :catch_0
    move-exception v4

    goto :goto_1
.end method
