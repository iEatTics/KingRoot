.class public Lcom/kingroot/kinguser/agh$j;
.super Lcom/kingroot/kinguser/agh$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field private final amk:Landroid/widget/RelativeLayout;

.field private final aml:Landroid/widget/LinearLayout;

.field private final amm:Lcom/kingcore/uilib/ProgressWhell;

.field private final amn:Landroid/widget/TextView;

.field private final amo:Landroid/widget/TextView;

.field private final amp:Landroid/widget/LinearLayout;

.field private final amq:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V
    .locals 3

    .prologue
    .line 310
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/agh$b;-><init>(Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V

    .line 312
    const v0, 0x7f0f0110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amk:Landroid/widget/RelativeLayout;

    .line 313
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amk:Landroid/widget/RelativeLayout;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;I)V

    .line 316
    const v0, 0x7f0f0111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$j;->aml:Landroid/widget/LinearLayout;

    .line 318
    const v0, 0x7f0f0113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amn:Landroid/widget/TextView;

    .line 319
    const v0, 0x7f0f0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amo:Landroid/widget/TextView;

    .line 320
    const v0, 0x7f0f0112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/ProgressWhell;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amm:Lcom/kingcore/uilib/ProgressWhell;

    .line 321
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amm:Lcom/kingcore/uilib/ProgressWhell;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0121

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setBarColor(I)V

    .line 322
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amm:Lcom/kingcore/uilib/ProgressWhell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 323
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amm:Lcom/kingcore/uilib/ProgressWhell;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setBarWidth(I)V

    .line 324
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amm:Lcom/kingcore/uilib/ProgressWhell;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setCircleRadius(I)V

    .line 325
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amm:Lcom/kingcore/uilib/ProgressWhell;

    new-instance v1, Lcom/kingroot/kinguser/agh$j$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/agh$j$1;-><init>(Lcom/kingroot/kinguser/agh$j;)V

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setCallback(Lcom/kingcore/uilib/ProgressWhell$a;)V

    .line 337
    const v0, 0x7f0f0115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amp:Landroid/widget/LinearLayout;

    .line 338
    const v0, 0x7f0f0116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amq:Landroid/widget/TextView;

    .line 339
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/agh$j;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amk:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/bdg;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 351
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->YB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lcom/kingroot/kinguser/yr;->pb()Lcom/kingroot/kinguser/acr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/agh$j;->ajH:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->getIconResId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/acr;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 354
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 355
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    iget-object v1, p0, Lcom/kingroot/kinguser/agh$j;->ajP:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->alL:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->Yw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->alM:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->Yx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->alN:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->Yy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->alL:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->alM:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->alO:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->alP:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->alO:Landroid/widget/Button;

    const v1, 0x7f0702d9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 376
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->alP:Landroid/widget/Button;

    const v1, 0x7f0702f6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 378
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amn:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->Yz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/agh$j;->ajP:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amq:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->YA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amk:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->aml:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->ajP:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->ajH:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->ajP:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/agh$j;)Lcom/kingcore/uilib/ProgressWhell;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amm:Lcom/kingcore/uilib/ProgressWhell;

    return-object v0
.end method

.method private q(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 423
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 424
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 425
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 426
    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->start()V

    .line 427
    return-void

    .line 423
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method a(Lcom/kingroot/kinguser/bcy;)V
    .locals 1

    .prologue
    .line 343
    check-cast p1, Lcom/kingroot/kinguser/bdg;

    .line 345
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/agh$j;->a(Lcom/kingroot/kinguser/bdg;)V

    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/agh$j;->a(Lcom/kingroot/kinguser/bdg;Z)V

    .line 347
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bdg;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 393
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->Yv()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 420
    :goto_0
    return-void

    .line 396
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amk:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->aml:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 403
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amk:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->aml:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 406
    if-eqz p2, :cond_0

    .line 407
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amk:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/agh$j;->q(Landroid/view/View;)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 414
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amk:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->aml:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$j;->amp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b(Lcom/kingroot/kinguser/bdg;)V
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/agh$j;->a(Lcom/kingroot/kinguser/bdg;Z)V

    .line 390
    return-void
.end method

.method public bridge synthetic onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/agh$b;->onClick(Landroid/view/View;)V

    return-void
.end method
