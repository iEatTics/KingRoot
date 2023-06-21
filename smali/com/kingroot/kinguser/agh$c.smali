.class Lcom/kingroot/kinguser/agh$c;
.super Lcom/kingroot/kinguser/agh$a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field ajH:Landroid/widget/ImageView;

.field ajL:Landroid/view/View;

.field ajP:Landroid/widget/TextView;

.field private alK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/agh$k;",
            ">;"
        }
    .end annotation
.end field

.field alN:Landroid/widget/Button;

.field alO:Landroid/widget/Button;

.field alP:Landroid/widget/Button;

.field alQ:Landroid/widget/TextView;

.field alR:Landroid/support/v7/widget/RecyclerView;

.field alS:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/kingroot/kinguser/agh$k;)V
    .locals 3

    .prologue
    .line 765
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/agh$a;-><init>(Landroid/view/View;)V

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$c;->alK:Ljava/lang/ref/WeakReference;

    .line 766
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$c;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0f0109

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;I)V

    .line 768
    const v0, 0x7f0f010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$c;->alS:Landroid/view/View;

    .line 769
    const v0, 0x7f0f010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$c;->ajH:Landroid/widget/ImageView;

    .line 770
    const v0, 0x7f0f010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$c;->ajP:Landroid/widget/TextView;

    .line 771
    const v0, 0x7f0f012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$c;->alQ:Landroid/widget/TextView;

    .line 773
    const v0, 0x7f0f012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$c;->alR:Landroid/support/v7/widget/RecyclerView;

    .line 774
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$c;->alR:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v2, p0, Lcom/kingroot/kinguser/agh$c;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 776
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$c;->alS:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    const v0, 0x7f0f010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$c;->alN:Landroid/widget/Button;

    .line 779
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$c;->alN:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    const v0, 0x7f0f0118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 783
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 785
    const v0, 0x7f0f00df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$c;->alO:Landroid/widget/Button;

    .line 786
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$c;->alO:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    const v0, 0x7f0f0123

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$c;->alP:Landroid/widget/Button;

    .line 789
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$c;->alP:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    const v0, 0x7f0f0122

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$c;->ajL:Landroid/view/View;

    .line 792
    if-eqz p2, :cond_0

    .line 793
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/agh$c;->alK:Ljava/lang/ref/WeakReference;

    .line 797
    :cond_0
    return-void
.end method


# virtual methods
.method a(Lcom/kingroot/kinguser/bcy;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 801
    instance-of v0, p1, Lcom/kingroot/kinguser/bda;

    if-nez v0, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    check-cast p1, Lcom/kingroot/kinguser/bda;

    .line 806
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bda;->Mq()Ljava/util/List;

    move-result-object v0

    .line 808
    iget-object v1, p0, Lcom/kingroot/kinguser/agh$c;->alO:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 809
    iget-object v1, p0, Lcom/kingroot/kinguser/agh$c;->alP:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 811
    iget-object v1, p0, Lcom/kingroot/kinguser/agh$c;->alO:Landroid/widget/Button;

    const v2, 0x7f0702d9

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 812
    iget-object v1, p0, Lcom/kingroot/kinguser/agh$c;->alP:Landroid/widget/Button;

    const v2, 0x7f0702f6

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 814
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 818
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bda;->getCount()I

    move-result v1

    .line 819
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704b9

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 820
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 819
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 821
    iget-object v3, p0, Lcom/kingroot/kinguser/agh$c;->ajP:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 824
    new-instance v3, Lcom/kingroot/kinguser/biw$b;

    .line 825
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f070515

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lcom/kingroot/kinguser/biw$b;-><init>(ILjava/lang/String;)V

    .line 824
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    .line 827
    if-eqz v0, :cond_2

    .line 828
    new-instance v4, Lcom/kingroot/kinguser/biw$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v0}, Lcom/kingroot/kinguser/biw$b;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 832
    :cond_3
    if-lt v1, v7, :cond_4

    .line 833
    new-instance v0, Lcom/kingroot/kinguser/biw$b;

    const/4 v1, 0x2

    const-string v3, ""

    invoke-direct {v0, v1, v3}, Lcom/kingroot/kinguser/biw$b;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_4
    new-instance v0, Lcom/kingroot/kinguser/biw;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/biw;-><init>(Ljava/util/List;)V

    .line 837
    iget-object v1, p0, Lcom/kingroot/kinguser/agh$c;->alR:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$c;->alK:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/agh$c;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agh$k;

    .line 847
    if-eqz v0, :cond_0

    .line 851
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 852
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 865
    :sswitch_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agh$c;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/agh$k;->f(Landroid/view/View;I)V

    goto :goto_0

    .line 854
    :sswitch_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agh$c;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/agh$k;->c(Landroid/view/View;I)V

    goto :goto_0

    .line 857
    :sswitch_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agh$c;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/agh$k;->d(Landroid/view/View;I)V

    goto :goto_0

    .line 861
    :sswitch_3
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agh$c;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/agh$k;->e(Landroid/view/View;I)V

    goto :goto_0

    .line 852
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f00df -> :sswitch_0
        0x7f0f010a -> :sswitch_1
        0x7f0f010f -> :sswitch_2
        0x7f0f0123 -> :sswitch_3
    .end sparse-switch
.end method
