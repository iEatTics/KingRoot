.class public Lcom/kingroot/kinguser/wq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/wq$a;
    }
.end annotation


# instance fields
.field private Nf:Landroid/widget/FrameLayout;

.field private Ng:Landroid/widget/FrameLayout;

.field private Nh:Landroid/widget/FrameLayout;

.field private Ni:Landroid/widget/FrameLayout;

.field private Nj:Landroid/support/percent/PercentRelativeLayout;

.field private Nk:Lcom/kingroot/kinguser/wq$a;

.field private Nl:Lcom/kingroot/kinguser/wq$a;

.field private Nm:Lcom/kingroot/kinguser/wq$a;

.field private Nn:Lcom/kingroot/kinguser/wq$a;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/wq;->G(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private G(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 240
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/wq;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03003a

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/percent/PercentRelativeLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/wq;->Nj:Landroid/support/percent/PercentRelativeLayout;

    .line 244
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nj:Landroid/support/percent/PercentRelativeLayout;

    const v1, 0x7f0f0105

    .line 245
    invoke-virtual {v0, v1}, Landroid/support/percent/PercentRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/wq;->Nf:Landroid/widget/FrameLayout;

    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nj:Landroid/support/percent/PercentRelativeLayout;

    const v1, 0x7f0f0106

    .line 247
    invoke-virtual {v0, v1}, Landroid/support/percent/PercentRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/wq;->Ng:Landroid/widget/FrameLayout;

    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nj:Landroid/support/percent/PercentRelativeLayout;

    const v1, 0x7f0f0107

    .line 249
    invoke-virtual {v0, v1}, Landroid/support/percent/PercentRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/wq;->Nh:Landroid/widget/FrameLayout;

    .line 250
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nj:Landroid/support/percent/PercentRelativeLayout;

    const v1, 0x7f0f0108

    .line 251
    invoke-virtual {v0, v1}, Landroid/support/percent/PercentRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/wq;->Ni:Landroid/widget/FrameLayout;

    .line 253
    new-instance v0, Lcom/kingroot/kinguser/wq$a;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/kingroot/kinguser/wq$a;-><init>(Landroid/view/View;FI)V

    iput-object v0, p0, Lcom/kingroot/kinguser/wq;->Nk:Lcom/kingroot/kinguser/wq$a;

    .line 254
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nk:Lcom/kingroot/kinguser/wq$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/wq;->Nf:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/kingroot/kinguser/wq$a;->Ns:Landroid/view/ViewGroup;

    .line 255
    new-instance v0, Lcom/kingroot/kinguser/wq$a;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/kingroot/kinguser/wq$a;-><init>(Landroid/view/View;FI)V

    iput-object v0, p0, Lcom/kingroot/kinguser/wq;->Nl:Lcom/kingroot/kinguser/wq$a;

    .line 256
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nl:Lcom/kingroot/kinguser/wq$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/wq;->Ng:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/kingroot/kinguser/wq$a;->Ns:Landroid/view/ViewGroup;

    .line 257
    new-instance v0, Lcom/kingroot/kinguser/wq$a;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/kingroot/kinguser/wq$a;-><init>(Landroid/view/View;FI)V

    iput-object v0, p0, Lcom/kingroot/kinguser/wq;->Nm:Lcom/kingroot/kinguser/wq$a;

    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nm:Lcom/kingroot/kinguser/wq$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/wq;->Nh:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/kingroot/kinguser/wq$a;->Ns:Landroid/view/ViewGroup;

    .line 259
    new-instance v0, Lcom/kingroot/kinguser/wq$a;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/kingroot/kinguser/wq$a;-><init>(Landroid/view/View;FI)V

    iput-object v0, p0, Lcom/kingroot/kinguser/wq;->Nn:Lcom/kingroot/kinguser/wq$a;

    .line 260
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nn:Lcom/kingroot/kinguser/wq$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/wq;->Ni:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/kingroot/kinguser/wq$a;->Ns:Landroid/view/ViewGroup;

    .line 261
    return-void
.end method

.method private a(Lcom/kingroot/kinguser/wq$a;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    .line 117
    iput-object p2, p1, Lcom/kingroot/kinguser/wq$a;->view:Landroid/view/View;

    .line 118
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/wq;->a(Lcom/kingroot/kinguser/wq$a;)V

    .line 120
    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->Nu:Lcom/android/animation/Animator;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->Nu:Lcom/android/animation/Animator;

    invoke-virtual {v0, p2}, Lcom/android/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->Nu:Lcom/android/animation/Animator;

    new-instance v1, Lcom/kingroot/kinguser/wq$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/wq$2;-><init>(Lcom/kingroot/kinguser/wq;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/Animator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 128
    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->Nu:Lcom/android/animation/Animator;

    invoke-virtual {v0}, Lcom/android/animation/Animator;->start()V

    .line 131
    :cond_0
    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->view:Landroid/view/View;

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/wq$a;Ljava/lang/Runnable;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->Ns:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 153
    if-gtz v0, :cond_2

    .line 154
    if-eqz p2, :cond_0

    .line 155
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 182
    :cond_1
    :goto_0
    return-object v0

    .line 160
    :cond_2
    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->Nv:Lcom/android/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->view:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->Nv:Lcom/android/animation/Animator;

    iget-object v1, p1, Lcom/kingroot/kinguser/wq$a;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->Nv:Lcom/android/animation/Animator;

    new-instance v1, Lcom/kingroot/kinguser/wq$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/wq$3;-><init>(Lcom/kingroot/kinguser/wq;Lcom/kingroot/kinguser/wq$a;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/Animator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 172
    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->Ns:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 173
    iget-object v1, p1, Lcom/kingroot/kinguser/wq$a;->Nv:Lcom/android/animation/Animator;

    invoke-virtual {v1}, Lcom/android/animation/Animator;->start()V

    goto :goto_0

    .line 175
    :cond_3
    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->Ns:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 176
    iget-object v1, p1, Lcom/kingroot/kinguser/wq$a;->Ns:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 177
    if-eqz p2, :cond_1

    .line 178
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/wq;Lcom/kingroot/kinguser/wq$a;Landroid/view/View;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/wq;->a(Lcom/kingroot/kinguser/wq$a;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;F)V
    .locals 1

    .prologue
    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/percent/PercentRelativeLayout$LayoutParams;

    .line 278
    invoke-virtual {v0}, Landroid/support/percent/PercentRelativeLayout$LayoutParams;->getPercentLayoutInfo()Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v0

    iput p2, v0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    .line 279
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nj:Landroid/support/percent/PercentRelativeLayout;

    invoke-virtual {v0}, Landroid/support/percent/PercentRelativeLayout;->requestLayout()V

    .line 280
    return-void
.end method

.method private a(Lcom/kingroot/kinguser/wq$a;)V
    .locals 2

    .prologue
    .line 264
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->view:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->view:Landroid/view/View;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wq;->nG()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    :cond_0
    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p1, Lcom/kingroot/kinguser/wq$a;->Ns:Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/kingroot/kinguser/wq$a;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 273
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/wq;Landroid/view/ViewGroup;F)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/wq;->a(Landroid/view/ViewGroup;F)V

    return-void
.end method

.method private e([I)[Lcom/kingroot/kinguser/wq$a;
    .locals 3

    .prologue
    .line 226
    array-length v0, p1

    new-array v1, v0, [Lcom/kingroot/kinguser/wq$a;

    .line 227
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 228
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/wq;->bH(I)Lcom/kingroot/kinguser/wq$a;

    move-result-object v2

    aput-object v2, v1, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    return-object v1
.end method

.method private f(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/percent/PercentRelativeLayout$LayoutParams;

    .line 236
    invoke-virtual {v0}, Landroid/support/percent/PercentRelativeLayout$LayoutParams;->getPercentLayoutInfo()Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v0

    iget v0, v0, Landroid/support/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:F

    return v0
.end method

.method private nG()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 284
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public a(IIF)Landroid/view/View;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 325
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p2}, Lcom/kingroot/kinguser/wq;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 326
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/kingroot/kinguser/wq;->b(Landroid/view/View;IF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/wq;->bH(I)Lcom/kingroot/kinguser/wq$a;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/kingroot/kinguser/wq$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/kingroot/kinguser/wq$1;-><init>(Lcom/kingroot/kinguser/wq;Lcom/kingroot/kinguser/wq$a;Landroid/view/View;)V

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/wq;->a(Lcom/kingroot/kinguser/wq$a;Ljava/lang/Runnable;)Landroid/view/View;

    .line 89
    iget-object v0, v0, Lcom/kingroot/kinguser/wq$a;->view:Landroid/view/View;

    return-object v0
.end method

.method public a(IIIII)V
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/wq;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 370
    return-void
.end method

.method public a([I[F)V
    .locals 3
    .param p2    # [F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/wq;->e([I)[Lcom/kingroot/kinguser/wq$a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/wq;->d([I)[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/kingroot/kinguser/wq;->a([Lcom/kingroot/kinguser/wq$a;[F[FZ)V

    .line 65
    return-void
.end method

.method public a([I[FZ)V
    .locals 2
    .param p2    # [F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/wq;->e([I)[Lcom/kingroot/kinguser/wq$a;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/wq;->d([I)[F

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/kingroot/kinguser/wq;->a([Lcom/kingroot/kinguser/wq$a;[F[FZ)V

    .line 74
    return-void
.end method

.method protected a([Lcom/kingroot/kinguser/wq$a;[F[FZ)V
    .locals 7

    .prologue
    .line 186
    if-eqz p4, :cond_1

    .line 187
    const-wide/16 v4, 0x12c

    new-instance v6, Lcom/kingroot/kinguser/wq$4;

    invoke-direct {v6, p0}, Lcom/kingroot/kinguser/wq$4;-><init>(Lcom/kingroot/kinguser/wq;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lcom/kingroot/kinguser/bhj;->a([Lcom/kingroot/kinguser/wq$a;[F[FJLcom/kingroot/kinguser/bhj$a;)Lcom/android/animation/AnimatorSet;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/android/animation/AnimatorSet;->start()V

    .line 211
    :cond_0
    return-void

    .line 205
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 206
    aget-object v1, p1, v0

    .line 207
    iget-object v1, v1, Lcom/kingroot/kinguser/wq$a;->Ns:Landroid/view/ViewGroup;

    aget v2, p3, v0

    invoke-direct {p0, v1, v2}, Lcom/kingroot/kinguser/wq;->a(Landroid/view/ViewGroup;F)V

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/view/View;IF)Landroid/view/View;
    .locals 2
    .param p3    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0, p2}, Lcom/kingroot/kinguser/wq;->bH(I)Lcom/kingroot/kinguser/wq$a;

    move-result-object v0

    .line 334
    iput p3, v0, Lcom/kingroot/kinguser/wq$a;->Nt:F

    .line 335
    iput-object p1, v0, Lcom/kingroot/kinguser/wq$a;->view:Landroid/view/View;

    .line 336
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/wq;->a(Lcom/kingroot/kinguser/wq$a;)V

    .line 337
    iget-object v1, v0, Lcom/kingroot/kinguser/wq$a;->Ns:Landroid/view/ViewGroup;

    iget v0, v0, Lcom/kingroot/kinguser/wq$a;->Nt:F

    invoke-direct {p0, v1, v0}, Lcom/kingroot/kinguser/wq;->a(Landroid/view/ViewGroup;F)V

    .line 338
    return-object p1
.end method

.method public bG(I)F
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/wq;->bH(I)Lcom/kingroot/kinguser/wq$a;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/wq$a;->Ns:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/wq;->f(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method protected bH(I)Lcom/kingroot/kinguser/wq$a;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nk:Lcom/kingroot/kinguser/wq$a;

    .line 298
    :goto_0
    return-object v0

    .line 293
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nl:Lcom/kingroot/kinguser/wq$a;

    goto :goto_0

    .line 295
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nm:Lcom/kingroot/kinguser/wq$a;

    goto :goto_0

    .line 297
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nn:Lcom/kingroot/kinguser/wq$a;

    goto :goto_0

    .line 300
    :cond_3
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid view type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bI(I)Landroid/widget/FrameLayout;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nf:Landroid/widget/FrameLayout;

    .line 318
    :goto_0
    return-object v0

    .line 309
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Ng:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 311
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nh:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 313
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Ni:Landroid/widget/FrameLayout;

    goto :goto_0

    .line 316
    :cond_3
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid view type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d([I)[F
    .locals 3

    .prologue
    .line 218
    array-length v0, p1

    new-array v1, v0, [F

    .line 219
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 220
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/wq;->bG(I)F

    move-result v2

    aput v2, v1, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_0
    return-object v1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/wq;->Nj:Landroid/support/percent/PercentRelativeLayout;

    return-object v0
.end method

.method public remove(I)V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/wq;->bH(I)Lcom/kingroot/kinguser/wq$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/wq;->a(Lcom/kingroot/kinguser/wq$a;Ljava/lang/Runnable;)Landroid/view/View;

    .line 114
    return-void
.end method
