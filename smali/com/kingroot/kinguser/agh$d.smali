.class public Lcom/kingroot/kinguser/agh$d;
.super Lcom/kingroot/kinguser/agh$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public Vv:Landroid/widget/TextView;

.field public ajH:Landroid/widget/ImageView;

.field private ajV:Landroid/widget/ImageView;

.field public alT:Landroid/widget/TextView;

.field public alU:Landroid/widget/LinearLayout;

.field private alV:Ljava/lang/String;

.field private alW:Ljava/lang/String;

.field private alX:Ljava/lang/String;

.field private alY:Ljava/lang/String;

.field private alZ:Z

.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V
    .locals 2

    .prologue
    .line 638
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/agh$a;-><init>(Landroid/view/View;)V

    .line 635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/agh$d;->alZ:Z

    .line 639
    iput-object p1, p0, Lcom/kingroot/kinguser/agh$d;->context:Landroid/content/Context;

    .line 640
    invoke-static {p2}, Lcom/kingroot/kinguser/ws;->h(Landroid/view/View;)V

    .line 642
    const v0, 0x7f0f0242

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 643
    new-instance v1, Lcom/kingroot/kinguser/agh$d$1;

    invoke-direct {v1, p0, p3}, Lcom/kingroot/kinguser/agh$d$1;-><init>(Lcom/kingroot/kinguser/agh$d;Lcom/kingroot/kinguser/agh$k;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    const v0, 0x7f0f0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$d;->ajH:Landroid/widget/ImageView;

    .line 651
    const v0, 0x7f0f00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$d;->Vv:Landroid/widget/TextView;

    .line 652
    const v0, 0x7f0f014a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$d;->alT:Landroid/widget/TextView;

    .line 653
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$d;->itemView:Landroid/view/View;

    const v1, 0x7f0f020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$d;->ajV:Landroid/widget/ImageView;

    .line 655
    const v0, 0x7f0f0244

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$d;->alU:Landroid/widget/LinearLayout;

    .line 657
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 658
    const v1, 0x7f0702ef

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/agh$d;->alV:Ljava/lang/String;

    .line 659
    const v1, 0x7f0702f0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/agh$d;->alW:Ljava/lang/String;

    .line 660
    const v1, 0x7f0702ee

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/agh$d;->alX:Ljava/lang/String;

    .line 661
    const v1, 0x7f0702ed

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$d;->alY:Ljava/lang/String;

    .line 663
    return-void
.end method

.method private a(Landroid/view/View;FZ)V
    .locals 3

    .prologue
    .line 726
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 727
    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x12c

    .line 728
    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 730
    return-void

    .line 727
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private af(J)Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/32 v8, 0x5265c00

    const-wide/32 v6, 0x36ee80

    const-wide/32 v4, 0xea60

    .line 733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 734
    sub-long/2addr v0, p1

    .line 736
    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    .line 737
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$d;->alV:Ljava/lang/String;

    .line 743
    :goto_0
    return-object v0

    .line 738
    :cond_0
    cmp-long v2, v0, v6

    if-gtz v2, :cond_1

    .line 739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/agh$d;->alW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 740
    :cond_1
    cmp-long v2, v0, v8

    if-gtz v2, :cond_2

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/agh$d;->alX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 743
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v8

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/agh$d;->alY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/kingroot/kinguser/bcy;)V
    .locals 2

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/kingroot/kinguser/agh$d;->alZ:Z

    if-eqz v0, :cond_0

    .line 676
    :goto_0
    return-void

    .line 670
    :cond_0
    check-cast p1, Lcom/kingroot/kinguser/bdb;

    .line 671
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$d;->ajH:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdb;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$d;->Vv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdb;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$d;->alT:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdb;->Yu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/agh$d;->a(Lcom/kingroot/kinguser/bdb;Z)V

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/bdb;)V
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/agh$d;->a(Lcom/kingroot/kinguser/bdb;Z)V

    .line 680
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bdb;Z)V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 683
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdb;->gI()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 684
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$d;->alU:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$d;->ajV:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-direct {p0, v0, v1, p2}, Lcom/kingroot/kinguser/agh$d;->a(Landroid/view/View;FZ)V

    .line 686
    iget-boolean v0, p0, Lcom/kingroot/kinguser/agh$d;->alZ:Z

    if-eqz v0, :cond_0

    .line 723
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$d;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    move v2, v3

    move v4, v3

    .line 692
    :goto_1
    iget-object v0, p1, Lcom/kingroot/kinguser/bdb;->biK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 693
    iget-object v0, p1, Lcom/kingroot/kinguser/bdb;->biK:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bde;

    .line 695
    const v1, 0x7f0300ca

    iget-object v7, p0, Lcom/kingroot/kinguser/agh$d;->alU:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 697
    const v1, 0x7f0f00d1

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 698
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bde;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    const v1, 0x7f0f014a

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 701
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bde;->getTimestamp()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/kingroot/kinguser/agh$d;->af(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    const v0, 0x7f0f0148

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TimeLineView;

    .line 705
    iget-object v1, p1, Lcom/kingroot/kinguser/bdb;->biK:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 706
    if-nez v4, :cond_2

    .line 707
    if-ne v1, v5, :cond_1

    move v1, v3

    :goto_2
    invoke-virtual {v0, v3, v1}, Lcom/kingcore/uilib/TimeLineView;->b(ZZ)V

    .line 714
    :goto_3
    add-int/lit8 v1, v4, 0x1

    .line 716
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$d;->alU:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 692
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_1

    :cond_1
    move v1, v5

    .line 707
    goto :goto_2

    .line 708
    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-ne v4, v1, :cond_3

    .line 709
    invoke-virtual {v0, v5, v3}, Lcom/kingcore/uilib/TimeLineView;->b(ZZ)V

    goto :goto_3

    .line 711
    :cond_3
    invoke-virtual {v0, v5, v5}, Lcom/kingcore/uilib/TimeLineView;->b(ZZ)V

    goto :goto_3

    .line 718
    :cond_4
    iput-boolean v5, p0, Lcom/kingroot/kinguser/agh$d;->alZ:Z

    goto :goto_0

    .line 720
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$d;->alU:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$d;->ajV:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/kingroot/kinguser/agh$d;->a(Landroid/view/View;FZ)V

    goto/16 :goto_0
.end method
