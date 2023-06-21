.class public Lcom/kingroot/kinguser/apz$c;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/apz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/apz$c$a;
    }
.end annotation


# instance fields
.field public Vv:Landroid/widget/TextView;

.field public aKA:Landroid/widget/TextView;

.field public aKB:Landroid/support/v7/widget/RecyclerView;

.field public aKC:Lcom/kingroot/kinguser/apz$c$a;

.field public aKD:Landroid/widget/ImageView;

.field public aKE:Landroid/widget/TextView;

.field public aKF:I

.field public aKG:Landroid/view/View;

.field private aKq:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/aqf;",
            ">;"
        }
    .end annotation
.end field

.field public aKt:Landroid/widget/TextView;

.field public aKy:Landroid/widget/ImageView;

.field public aKz:Landroid/widget/TextView;

.field public alk:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/kingroot/kinguser/aqf;)V
    .locals 6

    .prologue
    const v5, 0x7f0f023c

    const v4, 0x7f0f014a

    const v3, 0x7f0f0148

    const v2, 0x7f0f00d1

    .line 353
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKq:Ljava/lang/ref/WeakReference;

    .line 354
    new-instance v0, Lcom/kingroot/kinguser/apz$c$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/apz$c$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKC:Lcom/kingroot/kinguser/apz$c$a;

    .line 356
    if-eqz p3, :cond_0

    .line 357
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKq:Ljava/lang/ref/WeakReference;

    .line 359
    :cond_0
    iput p2, p0, Lcom/kingroot/kinguser/apz$c;->aKF:I

    .line 360
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->Vv:Landroid/widget/TextView;

    .line 361
    packed-switch p2, :pswitch_data_0

    .line 395
    :pswitch_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKA:Landroid/widget/TextView;

    .line 396
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKG:Landroid/view/View;

    .line 402
    :goto_0
    return-void

    .line 363
    :pswitch_1
    const v0, 0x7f0f023b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKE:Landroid/widget/TextView;

    .line 364
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKE:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKy:Landroid/widget/ImageView;

    .line 369
    const v0, 0x7f0f023a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKz:Landroid/widget/TextView;

    .line 370
    const v0, 0x7f0f01a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKt:Landroid/widget/TextView;

    .line 371
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 375
    :pswitch_3
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKy:Landroid/widget/ImageView;

    .line 376
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKA:Landroid/widget/TextView;

    .line 377
    const v0, 0x7f0f020c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->alk:Landroid/widget/ImageView;

    .line 378
    const v0, 0x7f0f000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKB:Landroid/support/v7/widget/RecyclerView;

    .line 379
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKG:Landroid/view/View;

    .line 380
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKB:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kingroot/kinguser/apz$c;->aKC:Lcom/kingroot/kinguser/apz$c$a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 381
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 382
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKB:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 383
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 388
    :pswitch_4
    const v0, 0x7f0f01ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKD:Landroid/widget/ImageView;

    .line 389
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->Vv:Landroid/widget/TextView;

    .line 390
    const v0, 0x7f0f0239

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKz:Landroid/widget/TextView;

    .line 391
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private Mp()Lcom/kingroot/kinguser/aqf;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKq:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKq:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqf;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Mr()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKB:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 461
    return-void
.end method

.method public a(ILjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqc;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 443
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 444
    iget-object v1, p0, Lcom/kingroot/kinguser/apz$c;->aKB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/kingroot/kinguser/apz$c;->aKB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/apz$c;->aKC:Lcom/kingroot/kinguser/apz$c$a;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/apz$c$a;->setData(Ljava/util/List;)V

    .line 449
    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 451
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKC:Lcom/kingroot/kinguser/apz$c$a;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/apz$c$a;->notifyItemInserted(I)V

    .line 457
    :cond_1
    :goto_0
    return-void

    .line 452
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKC:Lcom/kingroot/kinguser/apz$c$a;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/apz$c$a;->notifyItemChanged(I)V

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/aqc;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/aqc;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aqc;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/high16 v3, -0x3ccc0000    # -180.0f

    const-wide/16 v4, 0x12c

    const/4 v2, 0x0

    .line 425
    iget-boolean v0, p1, Lcom/kingroot/kinguser/aqc;->akd:Z

    if-nez v0, :cond_0

    .line 427
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18866

    .line 428
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 429
    invoke-virtual {p0, v2, p2, v2}, Lcom/kingroot/kinguser/apz$c;->a(ILjava/util/List;Z)V

    .line 430
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKG:Landroid/view/View;

    invoke-static {v0, v4, v5, v7}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;JLcom/android/animation/AnimatorListenerAdapter;)V

    .line 431
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c;->alk:Landroid/widget/ImageView;

    invoke-static {v0, v6, v3, v4, v5}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;FFJ)V

    .line 432
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKB:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 439
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/apz$c;->Mr()V

    .line 435
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKG:Landroid/view/View;

    const/16 v1, 0x12c

    invoke-static {v0, v1, v7}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;ILcom/android/animation/AnimatorListenerAdapter;)V

    .line 436
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c;->alk:Landroid/widget/ImageView;

    invoke-static {v0, v3, v6, v4, v5}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;FFJ)V

    .line 437
    iget-object v0, p0, Lcom/kingroot/kinguser/apz$c;->aKB:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/kingroot/kinguser/apz$c;->Mp()Lcom/kingroot/kinguser/aqf;

    move-result-object v0

    .line 407
    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 412
    const v2, 0x7f0f023b

    if-ne v1, v2, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/kingroot/kinguser/apz$c;->getPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/aqf;->l(Landroid/view/View;I)V

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/apz$c;->getPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/aqf;->c(Landroid/view/View;I)V

    goto :goto_0
.end method
