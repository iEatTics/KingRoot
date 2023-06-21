.class public Lcom/kingroot/kinguser/avg;
.super Lcom/kingroot/kinguser/avb;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kingroot/kinguser/avb;-><init>()V

    return-void
.end method

.method private Rs()V
    .locals 6

    .prologue
    .line 119
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/avg$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/avg$1;-><init>(Lcom/kingroot/kinguser/avg;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 146
    return-void
.end method

.method private Rt()V
    .locals 6

    .prologue
    .line 149
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/avg$2;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/avg$2;-><init>(Lcom/kingroot/kinguser/avg;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 167
    return-void
.end method

.method private js(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x3

    .line 189
    :goto_0
    return v0

    .line 177
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/avg$3;

    invoke-direct {v5, p0, p1}, Lcom/kingroot/kinguser/avg$3;-><init>(Lcom/kingroot/kinguser/avg;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    move-result v0

    .line 186
    if-eqz v0, :cond_1

    .line 187
    const/4 v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public j(Lcom/kingroot/kinguser/abc;)I
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 37
    .line 38
    iget-object v3, p0, Lcom/kingroot/kinguser/avg;->aTk:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/avg;->aTk:Ljava/lang/String;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 45
    const-string v3, ""

    .line 46
    if-eqz v5, :cond_b

    array-length v4, v5

    if-lt v4, v2, :cond_b

    .line 47
    array-length v4, v5

    if-le v4, v2, :cond_2

    .line 48
    const/4 v2, 0x2

    aget-object v2, v5, v2

    move v3, v1

    .line 50
    :goto_1
    array-length v4, v5

    if-ge v3, v4, :cond_3

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v5, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v4

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 56
    :cond_3
    const-string v3, "r1"

    const/4 v4, 0x0

    aget-object v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aii;->xO()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const/4 v2, 0x1

    aget-object v2, v5, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    aget-object v2, v5, v2

    const-string v3, "open"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/akr;->BL()Lcom/kingroot/kinguser/akr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/akr;->BM()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    invoke-direct {p0}, Lcom/kingroot/kinguser/avg;->Rs()V

    :cond_4
    :goto_2
    move v1, v0

    .line 115
    goto :goto_0

    .line 68
    :cond_5
    const/4 v2, 0x1

    aget-object v2, v5, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    aget-object v2, v5, v2

    const-string v3, "close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    invoke-direct {p0}, Lcom/kingroot/kinguser/avg;->Rt()V

    goto :goto_2

    .line 111
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    .line 75
    :cond_6
    const-string v3, "r2"

    const/4 v4, 0x0

    aget-object v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 76
    const/4 v2, 0x1

    aget-object v2, v5, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    aget-object v2, v5, v2

    const-string v3, "run"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 79
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/kingroot/kinguser/alb;->fb(I)V

    goto :goto_2

    .line 82
    :cond_7
    const-string v3, "r3"

    const/4 v4, 0x0

    aget-object v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 83
    const/4 v2, 0x1

    aget-object v2, v5, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    aget-object v2, v5, v2

    const-string v3, "run"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 87
    invoke-static {}, Lcom/kingroot/kinguser/avv;->Sj()Lcom/kingroot/kinguser/avv;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/avv;->di(Z)V

    goto :goto_2

    .line 91
    :cond_8
    const-string v3, "r4"

    const/4 v4, 0x0

    aget-object v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 92
    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    aget-object v0, v5, v0

    const-string v3, "run"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 94
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/avg;->js(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2

    .line 96
    :cond_9
    const-string v2, "r5"

    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 97
    const/4 v2, 0x1

    aget-object v2, v5, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    aget-object v2, v5, v2

    const-string v3, "run"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 101
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/activitys/AdDownloadActivity;->aL(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_a
    move v0, v1

    .line 106
    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 109
    goto/16 :goto_2

    :cond_c
    move v0, v1

    goto/16 :goto_2
.end method
