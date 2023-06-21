.class public abstract Lcom/kingroot/kinguser/qt;
.super Lcom/kingroot/kinguser/qu;
.source "SourceFile"


# instance fields
.field private Fa:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private Fb:J

.field private Fc:I

.field private Fd:I

.field private Fe:Z

.field private Ff:Z

.field private Fg:Z

.field private Fh:Z

.field private Fi:Z

.field private Fj:Z

.field private Fk:J

.field private Fl:J

.field private Fm:J


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 79
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/qu;-><init>(Landroid/widget/BaseAdapter;)V

    .line 55
    iput-boolean v2, p0, Lcom/kingroot/kinguser/qt;->Ff:Z

    .line 57
    iput-boolean v2, p0, Lcom/kingroot/kinguser/qt;->Fg:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/qt;->Fh:Z

    .line 62
    iput-boolean v2, p0, Lcom/kingroot/kinguser/qt;->Fi:Z

    .line 64
    iput-boolean v2, p0, Lcom/kingroot/kinguser/qt;->Fj:Z

    .line 74
    iput-wide v4, p0, Lcom/kingroot/kinguser/qt;->Fk:J

    .line 75
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/kingroot/kinguser/qt;->Fl:J

    .line 76
    iput-wide v4, p0, Lcom/kingroot/kinguser/qt;->Fm:J

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/qt;->Fa:Landroid/util/SparseArray;

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/qt;->Fb:J

    .line 84
    iput v3, p0, Lcom/kingroot/kinguser/qt;->Fc:I

    .line 85
    iput v3, p0, Lcom/kingroot/kinguser/qt;->Fd:I

    .line 87
    instance-of v0, p1, Lcom/kingroot/kinguser/qt;

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Lcom/kingroot/kinguser/qt;

    invoke-virtual {p1, v2}, Lcom/kingroot/kinguser/qt;->I(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qt;->hE()Landroid/widget/AbsListView;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/GridView;

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 230
    :goto_0
    iget v1, p0, Lcom/kingroot/kinguser/qt;->Fd:I

    if-le p1, v1, :cond_1

    if-nez v0, :cond_1

    .line 232
    iget v0, p0, Lcom/kingroot/kinguser/qt;->Fc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 233
    iput p1, p0, Lcom/kingroot/kinguser/qt;->Fc:I

    .line 236
    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/kingroot/kinguser/qt;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 237
    iput p1, p0, Lcom/kingroot/kinguser/qt;->Fd:I

    .line 239
    :cond_1
    return-void

    .line 228
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 243
    iget-wide v0, p0, Lcom/kingroot/kinguser/qt;->Fb:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/qt;->Fb:J

    .line 250
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_3

    .line 252
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setAlpha"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 254
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/qt;->Fo:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/kingroot/kinguser/qt;

    if-eqz v0, :cond_4

    .line 264
    iget-object v0, p0, Lcom/kingroot/kinguser/qt;->Fo:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/kingroot/kinguser/qt;

    .line 265
    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/qt;->b(Landroid/view/ViewGroup;Landroid/view/View;)[Lcom/android/animation/Animator;

    move-result-object v0

    move-object v1, v0

    .line 270
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/qt;->b(Landroid/view/ViewGroup;Landroid/view/View;)[Lcom/android/animation/Animator;

    move-result-object v2

    .line 271
    const-string v0, "alpha"

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {p2, v0, v3}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v3

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_1

    .line 274
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "isHardwareAccelerated"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 276
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "setLayerType"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/graphics/Paint;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 283
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 284
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 283
    invoke-virtual {v0, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    :cond_1
    :goto_2
    new-instance v0, Lcom/android/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/android/animation/AnimatorSet;-><init>()V

    .line 292
    invoke-direct {p0, v1, v2, v3}, Lcom/kingroot/kinguser/qt;->a([Lcom/android/animation/Animator;[Lcom/android/animation/Animator;Lcom/android/animation/Animator;)[Lcom/android/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/animation/AnimatorSet;->playTogether([Lcom/android/animation/Animator;)V

    .line 294
    invoke-direct {p0}, Lcom/kingroot/kinguser/qt;->hA()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/AnimatorSet;->setStartDelay(J)V

    .line 295
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qt;->hD()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/AnimatorSet;->setDuration(J)Lcom/android/animation/AnimatorSet;

    .line 297
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3fa66666    # 1.3f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 298
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_2

    .line 299
    new-instance v1, Lcom/kingroot/kinguser/qt$1;

    invoke-direct {v1, p0, p2}, Lcom/kingroot/kinguser/qt$1;-><init>(Lcom/kingroot/kinguser/qt;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/AnimatorSet;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 320
    :cond_2
    invoke-virtual {v0}, Lcom/android/animation/AnimatorSet;->start()V

    .line 322
    iget-object v1, p0, Lcom/kingroot/kinguser/qt;->Fa:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    return-void

    .line 258
    :cond_3
    new-instance v0, Lcom/kingroot/kinguser/bhi;

    invoke-direct {v0, p2}, Lcom/kingroot/kinguser/bhi;-><init>(Landroid/view/View;)V

    .line 259
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bhi;->setAlpha(F)V

    goto/16 :goto_0

    .line 268
    :cond_4
    new-array v0, v5, [Lcom/android/animation/Animator;

    move-object v1, v0

    goto/16 :goto_1

    .line 286
    :catch_0
    move-exception v0

    goto :goto_2

    .line 255
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 271
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a([Lcom/android/animation/Animator;[Lcom/android/animation/Animator;Lcom/android/animation/Animator;)[Lcom/android/animation/Animator;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 327
    array-length v0, p1

    array-length v2, p2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Lcom/android/animation/Animator;

    move v0, v1

    .line 330
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 331
    aget-object v3, p2, v0

    aput-object v3, v2, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    array-length v3, p1

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 335
    aput-object v4, v2, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 339
    :cond_1
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aput-object p3, v2, v0

    .line 340
    return-object v2
.end method

.method private d(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 220
    iget-object v0, p0, Lcom/kingroot/kinguser/qt;->Fa:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Animator;

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/android/animation/Animator;->end()V

    .line 223
    iget-object v0, p0, Lcom/kingroot/kinguser/qt;->Fa:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 225
    :cond_0
    return-void
.end method

.method private hA()J
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qt;->hE()Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 349
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qt;->hE()Landroid/widget/AbsListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 351
    sub-int/2addr v0, v1

    .line 352
    iget v1, p0, Lcom/kingroot/kinguser/qt;->Fd:I

    iget v2, p0, Lcom/kingroot/kinguser/qt;->Fc:I

    sub-int/2addr v1, v2

    .line 354
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qt;->hC()J

    move-result-wide v0

    .line 371
    :goto_0
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 362
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/qt;->Fd:I

    iget v1, p0, Lcom/kingroot/kinguser/qt;->Fc:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/qt;->hC()J

    move-result-wide v2

    mul-long/2addr v0, v2

    .line 363
    iget-wide v2, p0, Lcom/kingroot/kinguser/qt;->Fb:J

    invoke-virtual {p0}, Lcom/kingroot/kinguser/qt;->hB()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public E(Z)V
    .locals 0

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/kingroot/kinguser/qt;->Ff:Z

    .line 120
    return-void
.end method

.method public F(Z)V
    .locals 1

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/kingroot/kinguser/qt;->Fg:Z

    .line 123
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qt;->Fg:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/qt;->Fh:Z

    .line 124
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public G(Z)V
    .locals 1

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/kingroot/kinguser/qt;->Fh:Z

    .line 128
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qt;->Fh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/qt;->Fg:Z

    .line 129
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public H(Z)V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qt;->hE()Landroid/widget/AbsListView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\uff08\u256f\u2035\u25a1\u2032\uff09\u256f\ufe35\u2534\u2500\u2534 Call setListView() on this AnimationAdapter before setShouldAnimateNotVisible()!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/qt;->Fg:Z

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/qt;->Fh:Z

    .line 138
    iput-boolean p1, p0, Lcom/kingroot/kinguser/qt;->Fi:Z

    .line 139
    return-void
.end method

.method public I(Z)V
    .locals 0

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/kingroot/kinguser/qt;->Fe:Z

    .line 376
    return-void
.end method

.method protected abstract b(Landroid/view/ViewGroup;Landroid/view/View;)[Lcom/android/animation/Animator;
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/kingroot/kinguser/qt;->Fe:Z

    if-nez v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qt;->hE()Landroid/widget/AbsListView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\uff08\u256f\u2035\u25a1\u2032\uff09\u256f\ufe35\u2534\u2500\u2534  Call setListView() on this AnimationAdapter before setAdapter()!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    if-eqz p2, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qt;->hE()Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/qt;->d(Landroid/view/View;)V

    .line 174
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/kingroot/kinguser/qu;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 175
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/kingroot/kinguser/qt;->Ff:Z

    if-nez v1, :cond_3

    .line 210
    :cond_2
    :goto_0
    return-object v0

    .line 207
    :cond_3
    iget-boolean v1, p0, Lcom/kingroot/kinguser/qt;->Fe:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 208
    invoke-direct {p0, p1, v0, p3}, Lcom/kingroot/kinguser/qt;->a(ILandroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method protected hB()J
    .locals 2

    .prologue
    .line 379
    iget-wide v0, p0, Lcom/kingroot/kinguser/qt;->Fk:J

    return-wide v0
.end method

.method protected hC()J
    .locals 2

    .prologue
    .line 387
    iget-wide v0, p0, Lcom/kingroot/kinguser/qt;->Fl:J

    return-wide v0
.end method

.method protected hD()J
    .locals 2

    .prologue
    .line 395
    iget-wide v0, p0, Lcom/kingroot/kinguser/qt;->Fm:J

    return-wide v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/kingroot/kinguser/qu;->notifyDataSetChanged(Z)V

    .line 216
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 94
    iput v0, p0, Lcom/kingroot/kinguser/qt;->Fc:I

    .line 95
    iput v0, p0, Lcom/kingroot/kinguser/qt;->Fd:I

    .line 96
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/qt;->Fb:J

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/qt;->Fg:Z

    .line 99
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qt;->hF()Landroid/widget/BaseAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/kingroot/kinguser/qt;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/kingroot/kinguser/qt;->hF()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/qt;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/qt;->reset()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/qt;->Fa:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/qt;->Fa:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ltz v0, :cond_3

    .line 104
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/qt;->Fa:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/qt;->Fa:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 106
    iget-object v2, p0, Lcom/kingroot/kinguser/qt;->Fa:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/animation/Animator;

    .line 110
    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/android/animation/Animator;->end()V

    .line 104
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/qt;->Fa:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 116
    :cond_3
    return-void
.end method
