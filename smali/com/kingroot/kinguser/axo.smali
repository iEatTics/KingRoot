.class public Lcom/kingroot/kinguser/axo;
.super Lcom/kingroot/kinguser/yn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/yn",
        "<",
        "Lcom/kingroot/kinguser/model/RootMgrAppModel;",
        ">;"
    }
.end annotation


# instance fields
.field private acx:Landroid/widget/ImageView;

.field private acy:Landroid/widget/TextView;

.field private acz:Landroid/view/animation/Animation;

.field private ahB:Lcom/kingroot/kinguser/adi;

.field private ahC:Landroid/widget/ImageView;

.field private baA:Landroid/widget/TextView;

.field private baB:Landroid/view/View;

.field private baC:Landroid/view/View;

.field private baD:Landroid/view/View;

.field private baE:Z

.field private final baF:Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;

.field private baG:Lcom/kingroot/kinguser/bed;

.field private baH:Lcom/kingroot/kinguser/bed;

.field private baI:Landroid/view/View$OnClickListener;

.field private baJ:Landroid/view/View$OnClickListener;

.field private baK:Landroid/view/View$OnClickListener;

.field private bay:Lcom/kingroot/kinguser/aks;

.field private baz:Lcom/kingroot/kinguser/bih;

.field private mEmptyView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 313
    const-string v0, "root_mgr_page"

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/yn;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    .line 118
    iput-boolean v4, p0, Lcom/kingroot/kinguser/axo;->baE:Z

    .line 189
    new-instance v0, Lcom/kingroot/kinguser/page/RootMgrPage$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/page/RootMgrPage$3;-><init>(Lcom/kingroot/kinguser/axo;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->baF:Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;

    .line 198
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/axo$7;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/axo$7;-><init>(Lcom/kingroot/kinguser/axo;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->baG:Lcom/kingroot/kinguser/bed;

    .line 661
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/axo$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/axo$2;-><init>(Lcom/kingroot/kinguser/axo;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->baH:Lcom/kingroot/kinguser/bed;

    .line 888
    new-instance v0, Lcom/kingroot/kinguser/axo$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axo$3;-><init>(Lcom/kingroot/kinguser/axo;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->baI:Landroid/view/View$OnClickListener;

    .line 898
    new-instance v0, Lcom/kingroot/kinguser/axo$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axo$4;-><init>(Lcom/kingroot/kinguser/axo;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->baJ:Landroid/view/View$OnClickListener;

    .line 908
    new-instance v0, Lcom/kingroot/kinguser/axo$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axo$5;-><init>(Lcom/kingroot/kinguser/axo;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->baK:Landroid/view/View$OnClickListener;

    .line 314
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->bay:Lcom/kingroot/kinguser/aks;

    .line 315
    return-void
.end method

.method private UA()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baB:Landroid/view/View;

    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baB:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private UB()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 462
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baC:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baC:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baD:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baD:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    :cond_1
    return-void
.end method

.method private UC()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 566
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bbv;->WL()I

    move-result v2

    .line 567
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 568
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07024b

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    .line 574
    :goto_0
    return v0

    .line 570
    :cond_0
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 571
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703cc

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 574
    goto :goto_0
.end method

.method private Uy()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 263
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcom/kingroot/kinguser/adi;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/adi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->show()V

    .line 266
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 267
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adi;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 269
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 270
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    const v1, 0x7f030045

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->setContentView(I)V

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    const v1, 0x7f0f013f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->acy:Landroid/widget/TextView;

    .line 274
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    const v1, 0x7f0f0140

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->baA:Landroid/widget/TextView;

    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->acx:Landroid/widget/ImageView;

    .line 276
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    const v1, 0x7f0f00db

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->ahC:Landroid/widget/ImageView;

    .line 277
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axo;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->acz:Landroid/view/animation/Animation;

    .line 280
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    new-instance v1, Lcom/kingroot/kinguser/axo$8;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axo$8;-><init>(Lcom/kingroot/kinguser/axo;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/adi;->setCanceledOnTouchOutside(Z)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baA:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->ahC:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->acy:Landroid/widget/TextView;

    const-wide/32 v2, 0x7f070352

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axo;->V(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->acx:Landroid/widget/ImageView;

    const v1, 0x7f0202b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->acx:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/axo;->acz:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 298
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->show()V

    .line 299
    return-void
.end method

.method private Uz()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 358
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baB:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baB:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axo;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axo;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03011f

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->baB:Landroid/view/View;

    .line 368
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 369
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 370
    iget-object v2, p0, Lcom/kingroot/kinguser/axo;->baB:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baB:Landroid/view/View;

    const v1, 0x7f0f00f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 373
    new-instance v1, Lcom/kingroot/kinguser/axo$9;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axo$9;-><init>(Lcom/kingroot/kinguser/axo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axo;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/kingroot/kinguser/axo;->Uy()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axo;I)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axo;->hA(I)V

    return-void
.end method

.method private a(ILcom/kingroot/kinguser/model/RootMgrAppModel;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 121
    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    if-nez v2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    iget v2, p2, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    if-ne v2, v1, :cond_0

    .line 130
    iget-object v2, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    if-nez v2, :cond_2

    .line 131
    new-instance v2, Lcom/kingroot/kinguser/bih;

    iget-object v3, p0, Lcom/kingroot/kinguser/axo;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/bih;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    .line 133
    iget-object v2, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bih;->show()V

    .line 134
    iget-object v2, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    const v3, 0x7f02020e

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bih;->ja(I)V

    .line 140
    :goto_1
    iget-object v2, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    iget-object v3, p2, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/model/AppInfo;->PD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/bih;->setTitleText(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bih;->jb(I)V

    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    iget-object v2, p2, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bih;->lM(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070263

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bih;->lL(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070262

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bih;->lK(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    sget-object v2, Lcom/kingroot/kinguser/bid$a;->bti:Lcom/kingroot/kinguser/bid$a;

    const v3, 0x7f0e00b8

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/bih;->a(Lcom/kingroot/kinguser/bid$a;I)V

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    sget-object v2, Lcom/kingroot/kinguser/bid$a;->bth:Lcom/kingroot/kinguser/bid$a;

    const v3, 0x7f0e001a

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/bih;->a(Lcom/kingroot/kinguser/bid$a;I)V

    .line 147
    const/4 v0, 0x0

    .line 149
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    iget-object v3, p2, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zh;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    :goto_2
    if-eqz v0, :cond_3

    .line 152
    iget-object v2, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bih;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :goto_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    iget-object v2, p2, Lcom/kingroot/kinguser/model/RootMgrAppModel;->riskDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bih;->d(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    new-instance v2, Lcom/kingroot/kinguser/axo$1;

    invoke-direct {v2, p0, p1}, Lcom/kingroot/kinguser/axo$1;-><init>(Lcom/kingroot/kinguser/axo;I)V

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bih;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    new-instance v2, Lcom/kingroot/kinguser/axo$6;

    invoke-direct {v2, p0, p2}, Lcom/kingroot/kinguser/axo$6;-><init>(Lcom/kingroot/kinguser/axo;Lcom/kingroot/kinguser/model/RootMgrAppModel;)V

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bih;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 183
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x18812

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    move v0, v1

    .line 185
    goto/16 :goto_0

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bih;->show()V

    goto/16 :goto_1

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    const v2, 0x7f02016a

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bih;->setIcon(I)V

    goto :goto_3

    .line 150
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axo;ILcom/kingroot/kinguser/model/RootMgrAppModel;)Z
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/axo;->a(ILcom/kingroot/kinguser/model/RootMgrAppModel;)Z

    move-result v0

    return v0
.end method

.method private aF(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axo;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 396
    if-nez v1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baC:Landroid/view/View;

    if-nez v0, :cond_2

    .line 401
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axo;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03011f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->baC:Landroid/view/View;

    .line 402
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baC:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 403
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 404
    iget-object v2, p0, Lcom/kingroot/kinguser/axo;->baC:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baC:Landroid/view/View;

    const v1, 0x7f0f0316

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 408
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e00b8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baC:Landroid/view/View;

    const v1, 0x7f0f00f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 412
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 414
    new-instance v1, Lcom/kingroot/kinguser/axo$10;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axo$10;-><init>(Lcom/kingroot/kinguser/axo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baD:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baD:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axo;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baG:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axo;I)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axo;->hB(I)V

    return-void
.end method

.method public static synthetic c(Lcom/kingroot/kinguser/axo;)Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baF:Lcom/kingroot/kinguser/root/mgr/IAppRulesChangeListener;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/axo;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/kingroot/kinguser/axo;->UA()V

    return-void
.end method

.method static synthetic e(Lcom/kingroot/kinguser/axo;)Lcom/kingroot/kinguser/aks;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->bay:Lcom/kingroot/kinguser/aks;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/axo;)Z
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/kingroot/kinguser/axo;->UC()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/axo;)Lcom/kingroot/kinguser/yn$a;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vr:Lcom/kingroot/kinguser/yn$a;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/axo;)Lcom/kingroot/kinguser/yn$a;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vr:Lcom/kingroot/kinguser/yn$a;

    return-object v0
.end method

.method private hA(I)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vr:Lcom/kingroot/kinguser/yn$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vr:Lcom/kingroot/kinguser/yn$a;

    instance-of v0, v0, Lcom/kingroot/kinguser/agf;

    if-nez v0, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vr:Lcom/kingroot/kinguser/yn$a;

    check-cast v0, Lcom/kingroot/kinguser/agf;

    .line 586
    invoke-virtual {v0}, Lcom/kingroot/kinguser/agf;->vK()I

    move-result v1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    .line 587
    :goto_1
    if-eqz v1, :cond_3

    .line 588
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/agf;->cZ(I)V

    .line 593
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vr:Lcom/kingroot/kinguser/yn$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yn$a;->notifyDataSetChanged()V

    .line 596
    if-eqz v1, :cond_0

    .line 597
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->getLastVisiblePosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 598
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0, p1, p1}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->smoothScrollToPosition(II)V

    goto :goto_0

    .line 586
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 590
    :cond_3
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/agf;->cZ(I)V

    goto :goto_2
.end method

.method private hB(I)V
    .locals 9

    .prologue
    const/4 v1, 0x7

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 919
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->bay:Lcom/kingroot/kinguser/aks;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BQ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vr:Lcom/kingroot/kinguser/yn$a;

    check-cast v0, Lcom/kingroot/kinguser/agf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/agf;->vK()I

    move-result v0

    .line 925
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axo;->oV()Lcom/kingroot/kinguser/yn$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axo;->oV()Lcom/kingroot/kinguser/yn$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/yn$a;->oX()Ljava/util/List;

    move-result-object v2

    .line 927
    if-ltz v0, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 929
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/yn$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/yn$b;->data:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;

    .line 930
    if-ne v6, p1, :cond_6

    .line 931
    const/4 v2, 0x0

    iput v2, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQS:I

    .line 939
    :cond_2
    :goto_1
    if-eq p1, v6, :cond_3

    .line 940
    iget-object v2, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/bby;->ks(Ljava/lang/String;)V

    .line 944
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v2

    iget-object v3, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, p1, v4, v5}, Lcom/kingroot/kinguser/bbt;->updateRule(Ljava/lang/String;IJ)V

    .line 947
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v2

    const v3, 0x186c3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 951
    if-ne v6, p1, :cond_8

    .line 952
    const/4 v1, 0x5

    .line 958
    :cond_4
    :goto_2
    iget-object v0, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v8, v2}, Lcom/kingroot/kinguser/ady;->a(Ljava/lang/String;IILjava/util/List;)V

    .line 964
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vr:Lcom/kingroot/kinguser/yn$a;

    check-cast v0, Lcom/kingroot/kinguser/agf;

    invoke-virtual {v0, v8}, Lcom/kingroot/kinguser/agf;->cZ(I)V

    .line 965
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vr:Lcom/kingroot/kinguser/yn$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yn$a;->notifyDataSetChanged()V

    goto :goto_0

    .line 932
    :cond_6
    if-nez p1, :cond_7

    .line 933
    iput v6, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQS:I

    goto :goto_1

    .line 934
    :cond_7
    if-ne v7, p1, :cond_2

    .line 935
    iput v7, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQS:I

    goto :goto_1

    .line 953
    :cond_8
    if-nez p1, :cond_9

    .line 954
    const/4 v1, 0x6

    goto :goto_2

    .line 955
    :cond_9
    if-ne v7, p1, :cond_4

    goto :goto_2
.end method

.method static synthetic i(Lcom/kingroot/kinguser/axo;)Lcom/kingroot/kinguser/yn$a;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vr:Lcom/kingroot/kinguser/yn$a;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/axo;)Lcom/kingroot/kinguser/yn$a;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vr:Lcom/kingroot/kinguser/yn$a;

    return-object v0
.end method

.method private jZ(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axo;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    .line 442
    if-nez v1, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baD:Landroid/view/View;

    if-nez v0, :cond_2

    .line 447
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axo;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030112

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->baD:Landroid/view/View;

    .line 448
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baD:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 449
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 450
    iget-object v2, p0, Lcom/kingroot/kinguser/axo;->baD:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baD:Landroid/view/View;

    const v1, 0x7f0f012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 454
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baC:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baC:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/axo;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/kingroot/kinguser/axo;->vh()V

    return-void
.end method

.method private vh()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->ahB:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->dismiss()V

    .line 260
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 605
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/yn;->a(Landroid/os/Message;)V

    .line 607
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 609
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axo;->baH:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 613
    :pswitch_1
    iget-object v1, p0, Lcom/kingroot/kinguser/axo;->acy:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/axo;->ahC:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/axo;->acx:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/axo;->baA:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/kingroot/kinguser/axo;->acy:Landroid/widget/TextView;

    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 618
    iget-object v1, p0, Lcom/kingroot/kinguser/axo;->ahC:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 619
    iget-object v1, p0, Lcom/kingroot/kinguser/axo;->acx:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 622
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 623
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 627
    :cond_1
    if-eqz v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->acx:Landroid/widget/ImageView;

    const v1, 0x7f0202a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 629
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baA:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    :goto_1
    new-instance v0, Lcom/kingroot/kinguser/axo$12;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axo$12;-><init>(Lcom/kingroot/kinguser/axo;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 631
    :cond_2
    const/4 v0, 0x0

    .line 633
    const-wide/32 v2, 0x7f070386

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axo;->V(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 637
    :goto_2
    if-nez v0, :cond_3

    .line 638
    const-string v0, ""

    .line 640
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/axo;->baA:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->acx:Landroid/widget/ImageView;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 634
    :catch_0
    move-exception v1

    goto :goto_2

    .line 607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getDivider()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 972
    const-wide/32 v0, 0x7f0201c1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/axo;->Y(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 339
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/yn;->i(Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axo;->oV()Lcom/kingroot/kinguser/yn$a;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/kingroot/kinguser/yn$a;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setVisibility(I)V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected oI()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 507
    invoke-super {p0}, Lcom/kingroot/kinguser/yn;->oI()V

    .line 510
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-virtual {v0, v8}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vq:Lcom/kingroot/common/uilib/template/PinnedHeaderListView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0201c0

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/template/PinnedHeaderListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 514
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axo;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030146

    iget-object v2, p0, Lcom/kingroot/kinguser/axo;->Vh:Lcom/kingroot/kinguser/yp;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axo;->mEmptyView:Landroid/view/View;

    .line 515
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->mEmptyView:Landroid/view/View;

    const v1, 0x7f0f0357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 516
    if-eqz v0, :cond_0

    .line 517
    const v1, 0x7f070278

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 518
    const-wide/32 v2, 0x7f020170

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axo;->Y(J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 519
    const-wide/32 v2, 0x7f0a0093

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axo;->W(J)F

    move-result v2

    float-to-int v2, v2

    const-wide/32 v4, 0x7f0a0092

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/axo;->W(J)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 520
    invoke-virtual {v0, v6, v1, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->Vh:Lcom/kingroot/kinguser/yp;

    iget-object v1, p0, Lcom/kingroot/kinguser/axo;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1, v6}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    new-instance v0, Lcom/kingroot/kinguser/axo$11;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axo$11;-><init>(Lcom/kingroot/kinguser/axo;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/axo;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 562
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axo;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 563
    return-void
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 319
    new-instance v0, Lcom/kingroot/kinguser/bew;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/32 v2, 0x7f070178

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axo;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/bew;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method protected oU()Lcom/kingroot/kinguser/yn$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kingroot/kinguser/yn$a",
            "<",
            "Lcom/kingroot/kinguser/model/RootMgrAppModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Lcom/kingroot/kinguser/agf;

    iget-object v1, p0, Lcom/kingroot/kinguser/axo;->mContext:Landroid/content/Context;

    const v2, 0x7f0f000a

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/agf;-><init>(Landroid/content/Context;I)V

    .line 327
    iget-object v1, p0, Lcom/kingroot/kinguser/axo;->baI:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/kingroot/kinguser/axo;->baJ:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/kingroot/kinguser/axo;->baK:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/agf;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 328
    return-object v0
.end method

.method protected oW()I
    .locals 1

    .prologue
    .line 333
    const v0, 0x7f0300e3

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 473
    invoke-super {p0, p1, p2, p3}, Lcom/kingroot/kinguser/yn;->onActivityResult(IILandroid/content/Intent;)V

    .line 474
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 475
    const-string v0, "root_result"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axo;->baE:Z

    .line 477
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bih;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/axo;->baz:Lcom/kingroot/kinguser/bih;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bih;->dismiss()V

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/axo;->vh()V

    .line 309
    invoke-super {p0}, Lcom/kingroot/kinguser/yn;->onDestroy()V

    .line 310
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 481
    invoke-super {p0}, Lcom/kingroot/kinguser/yn;->onPostResume()V

    .line 482
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WL()I

    move-result v0

    .line 483
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->BQ()Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/kingroot/kinguser/axo;->Uz()V

    .line 503
    :goto_0
    return-void

    .line 485
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 487
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188c9

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 489
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 490
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axo;->baE:Z

    if-eqz v0, :cond_1

    const v0, 0x7f070294

    :goto_1
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 491
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axo;->baE:Z

    if-eqz v0, :cond_2

    const v0, 0x7f070295

    :goto_2
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-direct {p0, v2, v0}, Lcom/kingroot/kinguser/axo;->aF(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_1
    const v0, 0x7f070296

    goto :goto_1

    .line 491
    :cond_2
    const v0, 0x7f070297

    goto :goto_2

    .line 495
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 497
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188ca

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 499
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0702a5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/axo;->jZ(Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_4
    invoke-direct {p0}, Lcom/kingroot/kinguser/axo;->UB()V

    goto :goto_0
.end method
