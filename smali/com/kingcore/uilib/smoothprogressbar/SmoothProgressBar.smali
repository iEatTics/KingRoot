.class public Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f0100e4

    invoke-direct {p0, p1, p2, v0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21

    .prologue
    .line 37
    invoke-direct/range {p0 .. p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    new-instance v3, Lcom/kingroot/kinguser/qr$a;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lcom/kingroot/kinguser/qr$a;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v3}, Lcom/kingroot/kinguser/qr$a;->hy()Lcom/kingroot/kinguser/qr;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 45
    sget-object v3, Lcom/kingroot/kinguser/afs$a;->SmoothProgressBar:[I

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 48
    const/4 v4, 0x1

    const v6, 0x7f0e00f5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 49
    const/4 v4, 0x4

    const v7, 0x7f0c0004

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    .line 50
    const/4 v4, 0x3

    const v8, 0x7f0a0129

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v3, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 51
    const/4 v4, 0x2

    const v9, 0x7f0a012a

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual {v3, v4, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    .line 52
    const/4 v4, 0x5

    const v10, 0x7f07051b

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 53
    const/4 v4, 0x6

    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 54
    const/4 v4, 0x7

    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 55
    const/16 v4, 0x8

    const/4 v13, -0x1

    invoke-virtual {v3, v4, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 56
    const/16 v13, 0x9

    const v14, 0x7f0b0009

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 57
    const/16 v14, 0xa

    const v15, 0x7f0b0007

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 58
    const/16 v15, 0xb

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 59
    const/16 v16, 0xc

    const v17, 0x7f0b0008

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 60
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 61
    const/16 v18, 0xe

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    .line 62
    const/16 v19, 0xf

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    .line 63
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    const/4 v3, 0x0

    .line 67
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_1

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 70
    :cond_1
    if-nez v3, :cond_6

    .line 71
    packed-switch v4, :pswitch_data_0

    .line 83
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v4, v3

    .line 87
    :goto_1
    const/4 v3, 0x0

    .line 89
    if-eqz v15, :cond_2

    .line 90
    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 93
    :cond_2
    new-instance v5, Lcom/kingroot/kinguser/qr$a;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/kingroot/kinguser/qr$a;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v5, v10}, Lcom/kingroot/kinguser/qr$a;->j(F)Lcom/kingroot/kinguser/qr$a;

    move-result-object v5

    .line 95
    invoke-virtual {v5, v11}, Lcom/kingroot/kinguser/qr$a;->k(F)Lcom/kingroot/kinguser/qr$a;

    move-result-object v5

    .line 96
    invoke-virtual {v5, v12}, Lcom/kingroot/kinguser/qr$a;->l(F)Lcom/kingroot/kinguser/qr$a;

    move-result-object v5

    .line 97
    invoke-virtual {v5, v4}, Lcom/kingroot/kinguser/qr$a;->a(Landroid/view/animation/Interpolator;)Lcom/kingroot/kinguser/qr$a;

    move-result-object v4

    .line 98
    invoke-virtual {v4, v7}, Lcom/kingroot/kinguser/qr$a;->aM(I)Lcom/kingroot/kinguser/qr$a;

    move-result-object v4

    .line 99
    invoke-virtual {v4, v8}, Lcom/kingroot/kinguser/qr$a;->aN(I)Lcom/kingroot/kinguser/qr$a;

    move-result-object v4

    .line 100
    invoke-virtual {v4, v9}, Lcom/kingroot/kinguser/qr$a;->i(F)Lcom/kingroot/kinguser/qr$a;

    move-result-object v4

    .line 101
    invoke-virtual {v4, v13}, Lcom/kingroot/kinguser/qr$a;->A(Z)Lcom/kingroot/kinguser/qr$a;

    move-result-object v4

    .line 102
    invoke-virtual {v4, v14}, Lcom/kingroot/kinguser/qr$a;->B(Z)Lcom/kingroot/kinguser/qr$a;

    move-result-object v4

    .line 103
    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/qr$a;->C(Z)Lcom/kingroot/kinguser/qr$a;

    move-result-object v4

    .line 104
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/qr$a;->D(Z)Lcom/kingroot/kinguser/qr$a;

    move-result-object v4

    .line 106
    if-eqz v17, :cond_3

    .line 107
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/qr$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/kingroot/kinguser/qr$a;

    .line 110
    :cond_3
    if-eqz v18, :cond_4

    .line 111
    invoke-virtual {v4}, Lcom/kingroot/kinguser/qr$a;->hz()Lcom/kingroot/kinguser/qr$a;

    .line 114
    :cond_4
    if-eqz v3, :cond_5

    array-length v5, v3

    if-lez v5, :cond_5

    .line 115
    invoke-virtual {v4, v3}, Lcom/kingroot/kinguser/qr$a;->b([I)Lcom/kingroot/kinguser/qr$a;

    .line 119
    :goto_2
    invoke-virtual {v4}, Lcom/kingroot/kinguser/qr$a;->hy()Lcom/kingroot/kinguser/qr;

    move-result-object v3

    .line 120
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 73
    :pswitch_0
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v4, v3

    .line 74
    goto :goto_1

    .line 76
    :pswitch_1
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object v4, v3

    .line 77
    goto :goto_1

    .line 79
    :pswitch_2
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v4, v3

    .line 80
    goto :goto_1

    .line 117
    :cond_5
    invoke-virtual {v4, v6}, Lcom/kingroot/kinguser/qr$a;->aO(I)Lcom/kingroot/kinguser/qr$a;

    goto :goto_2

    :cond_6
    move-object v4, v3

    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hu()Lcom/kingroot/kinguser/qr;
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/kingroot/kinguser/qr;

    if-nez v1, :cond_1

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The drawable is not a SmoothProgressDrawable"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_1
    check-cast v0, Lcom/kingroot/kinguser/qr;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 205
    invoke-virtual {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->isIndeterminate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/kingroot/kinguser/qr;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/qr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/qr;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_0
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 221
    invoke-virtual {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/kingroot/kinguser/qr;

    if-eqz v1, :cond_0

    .line 223
    check-cast v0, Lcom/kingroot/kinguser/qr;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 224
    :cond_0
    return-void
.end method

.method public setProgressiveStartActivated(Z)V
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->hu()Lcom/kingroot/kinguser/qr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->setProgressiveStartActivated(Z)V

    .line 272
    return-void
.end method

.method public setSmoothProgressDrawableBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->hu()Lcom/kingroot/kinguser/qr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    return-void
.end method

.method public setSmoothProgressDrawableCallbacks(Lcom/kingroot/kinguser/qr$b;)V
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->hu()Lcom/kingroot/kinguser/qr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->a(Lcom/kingroot/kinguser/qr$b;)V

    .line 276
    return-void
.end method

.method public setSmoothProgressDrawableColor(I)V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->hu()Lcom/kingroot/kinguser/qr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->setColor(I)V

    .line 236
    return-void
.end method

.method public setSmoothProgressDrawableColors([I)V
    .locals 1

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->hu()Lcom/kingroot/kinguser/qr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->setColors([I)V

    .line 232
    return-void
.end method

.method public setSmoothProgressDrawableInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->hu()Lcom/kingroot/kinguser/qr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 228
    return-void
.end method

.method public setSmoothProgressDrawableMirrorMode(Z)V
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->hu()Lcom/kingroot/kinguser/qr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->y(Z)V

    .line 268
    return-void
.end method

.method public setSmoothProgressDrawableProgressiveStartSpeed(F)V
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->hu()Lcom/kingroot/kinguser/qr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->g(F)V

    .line 244
    return-void
.end method

.method public setSmoothProgressDrawableProgressiveStopSpeed(F)V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->hu()Lcom/kingroot/kinguser/qr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->h(F)V

    .line 248
    return-void
.end method

.method public setSmoothProgressDrawableReversed(Z)V
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->hu()Lcom/kingroot/kinguser/qr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->x(Z)V

    .line 264
    return-void
.end method

.method public setSmoothProgressDrawableSectionsCount(I)V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->hu()Lcom/kingroot/kinguser/qr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->aG(I)V

    .line 252
    return-void
.end method

.method public setSmoothProgressDrawableSeparatorLength(I)V
    .locals 1

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->hu()Lcom/kingroot/kinguser/qr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->aH(I)V

    .line 256
    return-void
.end method

.method public setSmoothProgressDrawableSpeed(F)V
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->hu()Lcom/kingroot/kinguser/qr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->setSpeed(F)V

    .line 240
    return-void
.end method

.method public setSmoothProgressDrawableStrokeWidth(F)V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->hu()Lcom/kingroot/kinguser/qr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->setStrokeWidth(F)V

    .line 260
    return-void
.end method

.method public setSmoothProgressDrawableUseGradients(Z)V
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/kingcore/uilib/smoothprogressbar/SmoothProgressBar;->hu()Lcom/kingroot/kinguser/qr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/qr;->z(Z)V

    .line 284
    return-void
.end method
