.class Lcom/kingroot/kinguser/xs;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(FD)F
    .locals 3

    .prologue
    .line 95
    float-to-double v0, p0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static a(FDD)F
    .locals 11

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 164
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    cmpl-float v0, p0, v7

    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return p0

    .line 165
    :cond_1
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 166
    div-double v2, p3, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 167
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v6, 0x41200000    # 10.0f

    sub-float v7, p0, v7

    mul-float/2addr v6, v7

    float-to-double v8, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, p1

    float-to-double v6, v7

    sub-double v2, v6, v2

    mul-double/2addr v0, v2

    div-double/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    neg-double v0, v0

    double-to-float p0, v0

    goto :goto_0
.end method

.method public static a(Lcom/kingroot/kinguser/xq;F)F
    .locals 10
    .param p0    # Lcom/kingroot/kinguser/xq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 16
    sget-object v0, Lcom/kingroot/kinguser/xs$1;->UJ:[I

    invoke-virtual {p0}, Lcom/kingroot/kinguser/xq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    :pswitch_0
    return p1

    .line 20
    :pswitch_1
    invoke-static {p1, v8, v9}, Lcom/kingroot/kinguser/xs;->a(FD)F

    move-result p1

    goto :goto_0

    .line 22
    :pswitch_2
    invoke-static {p1, v8, v9}, Lcom/kingroot/kinguser/xs;->b(FD)F

    move-result p1

    goto :goto_0

    .line 24
    :pswitch_3
    invoke-static {p1, v8, v9}, Lcom/kingroot/kinguser/xs;->c(FD)F

    move-result p1

    goto :goto_0

    .line 26
    :pswitch_4
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/xs;->a(FD)F

    move-result p1

    goto :goto_0

    .line 28
    :pswitch_5
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/xs;->b(FD)F

    move-result p1

    goto :goto_0

    .line 30
    :pswitch_6
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/xs;->c(FD)F

    move-result p1

    goto :goto_0

    .line 32
    :pswitch_7
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/xs;->a(FD)F

    move-result p1

    goto :goto_0

    .line 34
    :pswitch_8
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/xs;->b(FD)F

    move-result p1

    goto :goto_0

    .line 36
    :pswitch_9
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/xs;->c(FD)F

    move-result p1

    goto :goto_0

    .line 38
    :pswitch_a
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/xs;->a(FD)F

    move-result p1

    goto :goto_0

    .line 40
    :pswitch_b
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/xs;->b(FD)F

    move-result p1

    goto :goto_0

    .line 42
    :pswitch_c
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {p1, v0, v1}, Lcom/kingroot/kinguser/xs;->c(FD)F

    move-result p1

    goto :goto_0

    .line 44
    :pswitch_d
    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sub-double v0, v6, v0

    double-to-float p1, v0

    goto :goto_0

    .line 46
    :pswitch_e
    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    goto :goto_0

    .line 48
    :pswitch_f
    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    float-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sub-double/2addr v2, v6

    mul-double/2addr v0, v2

    double-to-float p1, v0

    goto :goto_0

    .line 50
    :pswitch_10
    mul-float v0, p1, p1

    float-to-double v0, v0

    const-wide v2, 0x400599999999999aL    # 2.7

    float-to-double v4, p1

    mul-double/2addr v2, v4

    const-wide v4, 0x3ffb333333333333L    # 1.7

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float p1, v0

    goto/16 :goto_0

    .line 52
    :pswitch_11
    sub-float v0, p1, v4

    mul-float v1, v0, v0

    float-to-double v2, v1

    const-wide v4, 0x400599999999999aL    # 2.7

    float-to-double v0, v0

    mul-double/2addr v0, v4

    const-wide v4, 0x3ffb333333333333L    # 1.7

    add-double/2addr v0, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    double-to-float p1, v0

    goto/16 :goto_0

    .line 54
    :pswitch_12
    const v0, 0x3fd9999a    # 1.7f

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/xs;->d(FF)F

    move-result p1

    goto/16 :goto_0

    .line 56
    :pswitch_13
    mul-float v0, p1, p1

    sub-float v0, v4, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v0, v6

    neg-double v0, v0

    double-to-float p1, v0

    goto/16 :goto_0

    .line 58
    :pswitch_14
    sub-float v0, p1, v4

    mul-float/2addr v0, v0

    sub-float v0, v4, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    goto/16 :goto_0

    .line 60
    :pswitch_15
    mul-float v0, p1, v5

    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 61
    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    mul-float/2addr v0, v0

    sub-float v0, v4, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sub-double/2addr v0, v6

    mul-double/2addr v0, v2

    double-to-float p1, v0

    goto/16 :goto_0

    .line 63
    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-float/2addr v0, v5

    mul-float/2addr v0, v0

    sub-float v0, v4, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v6

    mul-double/2addr v0, v2

    double-to-float p1, v0

    goto/16 :goto_0

    .line 65
    :pswitch_16
    invoke-static {p1}, Lcom/kingroot/kinguser/xs;->p(F)F

    move-result p1

    goto/16 :goto_0

    .line 67
    :pswitch_17
    invoke-static {p1}, Lcom/kingroot/kinguser/xs;->q(F)F

    move-result p1

    goto/16 :goto_0

    .line 69
    :pswitch_18
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    .line 70
    mul-float v0, p1, v5

    invoke-static {v0}, Lcom/kingroot/kinguser/xs;->p(F)F

    move-result v0

    mul-float p1, v0, v2

    goto/16 :goto_0

    .line 72
    :cond_1
    mul-float v0, p1, v5

    sub-float/2addr v0, v4

    invoke-static {v0}, Lcom/kingroot/kinguser/xs;->q(F)F

    move-result v0

    mul-float/2addr v0, v2

    add-float p1, v0, v2

    goto/16 :goto_0

    .line 74
    :pswitch_19
    const-wide v0, 0x3fd3333333333333L    # 0.3

    invoke-static {p1, v6, v7, v0, v1}, Lcom/kingroot/kinguser/xs;->a(FDD)F

    move-result p1

    goto/16 :goto_0

    .line 77
    :pswitch_1a
    const-wide v0, 0x3fd3333333333333L    # 0.3

    invoke-static {p1, v6, v7, v0, v1}, Lcom/kingroot/kinguser/xs;->b(FDD)F

    move-result p1

    goto/16 :goto_0

    .line 80
    :pswitch_1b
    const-wide v0, 0x3fdccccccccccccdL    # 0.45

    invoke-static {p1, v6, v7, v0, v1}, Lcom/kingroot/kinguser/xs;->c(FDD)F

    move-result p1

    goto/16 :goto_0

    .line 16
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method private static b(FD)F
    .locals 5

    .prologue
    .line 104
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p0

    float-to-double v2, v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private static b(FDD)F
    .locals 11

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 177
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return p0

    .line 179
    :cond_1
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 180
    div-double v2, p3, v0

    div-double v4, v8, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 181
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v6, -0x3ee00000    # -10.0f

    mul-float/2addr v6, p0

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, p1

    float-to-double v6, p0

    sub-double v2, v6, v2

    mul-double/2addr v0, v2

    div-double/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v8

    double-to-float p0, v0

    goto :goto_0
.end method

.method private static c(FD)F
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 113
    mul-float v0, p0, v6

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 114
    float-to-double v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    .line 117
    :goto_0
    return v0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-float v0, v6, v0

    float-to-double v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private static c(FDD)F
    .locals 13

    .prologue
    .line 191
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 193
    div-double v2, p3, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 194
    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    .line 195
    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v4, v10

    mul-float/2addr v5, v4

    float-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v8, p1

    float-to-double v4, v4

    sub-double v2, v4, v2

    mul-double/2addr v0, v2

    div-double v0, v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v8

    mul-double/2addr v0, v6

    double-to-float v0, v0

    .line 197
    :goto_0
    return v0

    :cond_0
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 v5, -0x3ee00000    # -10.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v4, v8

    mul-float/2addr v5, v4

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, p1

    float-to-double v4, v4

    sub-double v2, v4, v2

    mul-double/2addr v0, v2

    div-double v0, v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method private static d(FF)F
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 126
    float-to-double v0, p1

    const-wide v2, 0x3ff8666666666666L    # 1.525

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 127
    mul-float v1, p0, v5

    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 128
    mul-float v2, v1, v1

    add-float v3, v0, v4

    mul-float/2addr v1, v3

    sub-float v0, v1, v0

    mul-float/2addr v0, v2

    float-to-double v0, v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    .line 130
    :goto_0
    return v0

    :cond_0
    sub-float/2addr v1, v5

    mul-float v2, v1, v1

    add-float v3, v0, v4

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    float-to-double v0, v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    goto :goto_0
.end method

.method private static p(F)F
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 138
    sub-float v0, v1, p0

    invoke-static {v0}, Lcom/kingroot/kinguser/xs;->q(F)F

    move-result v0

    sub-float v0, v1, v0

    return v0
.end method

.method private static q(F)F
    .locals 6

    .prologue
    const-wide v4, 0x401e400000000000L    # 7.5625

    .line 146
    float-to-double v0, p0

    const-wide v2, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 147
    float-to-double v0, p0

    mul-double/2addr v0, v4

    float-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 153
    :goto_0
    return v0

    .line 148
    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x3fe745d1745d1746L    # 0.7272727272727273

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 149
    float-to-double v0, p0

    const-wide v2, 0x3fe1745d1745d174L    # 0.5454545454545454

    sub-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v2, v0

    mul-double/2addr v2, v4

    float-to-double v0, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0

    .line 150
    :cond_1
    float-to-double v0, p0

    const-wide v2, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 151
    float-to-double v0, p0

    const-wide v2, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    sub-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v2, v0

    mul-double/2addr v2, v4

    float-to-double v0, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fee000000000000L    # 0.9375

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0

    .line 153
    :cond_2
    float-to-double v0, p0

    const-wide v2, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v2, v0

    mul-double/2addr v2, v4

    float-to-double v0, v0

    mul-double/2addr v0, v2

    const-wide v2, 0x3fef800000000000L    # 0.984375

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method
