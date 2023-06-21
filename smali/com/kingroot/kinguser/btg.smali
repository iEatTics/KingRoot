.class public Lcom/kingroot/kinguser/btg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static O(Landroid/view/View;)Lcom/kingroot/kinguser/btd;
    .locals 1

    .prologue
    .line 24
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/btg;->h(Landroid/view/View;F)Lcom/kingroot/kinguser/btd;

    move-result-object v0

    return-object v0
.end method

.method public static P(Landroid/view/View;)Lcom/kingroot/kinguser/btd;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 93
    const-string v0, "ads_SDK"

    const-string v1, "checkAttached:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-nez p0, :cond_0

    .line 95
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMH:Lcom/kingroot/kinguser/btd;

    .line 109
    :goto_0
    return-object v0

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMK:Lcom/kingroot/kinguser/btd;

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMJ:Lcom/kingroot/kinguser/btd;

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_4

    .line 104
    :cond_3
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMT:Lcom/kingroot/kinguser/btd;

    goto :goto_0

    .line 106
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3f666666    # 0.9f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 107
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMM:Lcom/kingroot/kinguser/btd;

    goto :goto_0

    .line 109
    :cond_5
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMG:Lcom/kingroot/kinguser/btd;

    goto :goto_0
.end method

.method public static h(Landroid/view/View;F)Lcom/kingroot/kinguser/btd;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 37
    const-string v0, "ads_SDK"

    const-string v1, "checkVisible:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 39
    if-nez p0, :cond_0

    .line 40
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMH:Lcom/kingroot/kinguser/btd;

    .line 85
    :goto_0
    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 44
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMI:Lcom/kingroot/kinguser/btd;

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMJ:Lcom/kingroot/kinguser/btd;

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    .line 50
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMK:Lcom/kingroot/kinguser/btd;

    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-gtz v3, :cond_5

    .line 53
    :cond_4
    sget-object v0, Lcom/kingroot/kinguser/btd;->bML:Lcom/kingroot/kinguser/btd;

    goto :goto_0

    .line 55
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    const v4, 0x3f666666    # 0.9f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 56
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMM:Lcom/kingroot/kinguser/btd;

    goto :goto_0

    .line 63
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 65
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 67
    :try_start_0
    invoke-virtual {p0, v5}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 72
    aget v6, v5, v10

    int-to-float v6, v6

    neg-float v7, p1

    int-to-float v8, v4

    mul-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 73
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMP:Lcom/kingroot/kinguser/btd;

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMO:Lcom/kingroot/kinguser/btd;

    goto :goto_0

    .line 75
    :cond_7
    aget v6, v5, v10

    int-to-float v6, v6

    int-to-float v4, v4

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, p1

    mul-float/2addr v4, v7

    add-float/2addr v4, v6

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_8

    .line 76
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMQ:Lcom/kingroot/kinguser/btd;

    goto :goto_0

    .line 78
    :cond_8
    aget v4, v5, v9

    if-gez v4, :cond_9

    .line 79
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMR:Lcom/kingroot/kinguser/btd;

    goto/16 :goto_0

    .line 81
    :cond_9
    aget v4, v5, v9

    add-int/2addr v3, v4

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v3, v2, :cond_a

    .line 82
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMS:Lcom/kingroot/kinguser/btd;

    goto/16 :goto_0

    .line 84
    :cond_a
    const-string v2, "ads_SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkVisible cost time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lcom/kingroot/kinguser/btd;->bMG:Lcom/kingroot/kinguser/btd;

    goto/16 :goto_0
.end method
