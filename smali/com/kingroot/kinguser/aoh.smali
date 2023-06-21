.class public Lcom/kingroot/kinguser/aoh;
.super Lcom/kingroot/kinguser/yo;
.source "SourceFile"


# instance fields
.field private aBS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private aBT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private aBg:Lcom/kingroot/kinguser/ano;

.field private aFx:Lcom/kingroot/kinguser/anl;

.field private aFy:Lcom/kingroot/kinguser/anl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/yo;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aoh;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/aoh;->Vx:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method protected L(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ym;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/kingroot/kinguser/aog;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/aoh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/aog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoh;->aFy:Lcom/kingroot/kinguser/anl;

    .line 53
    new-instance v0, Lcom/kingroot/kinguser/aod;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/aoh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/aod;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoh;->aFx:Lcom/kingroot/kinguser/anl;

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/aoh;->aFy:Lcom/kingroot/kinguser/anl;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/aoh;->aFx:Lcom/kingroot/kinguser/anl;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method protected a(ILcom/kingroot/kinguser/ym;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 66
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoh;->aBS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 67
    if-ne v1, p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/aoh;->aBS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/aoh;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v4, 0x7f0e00b6

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/aoh;->X(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoh;->aBS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/aoh;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v4, 0x7f0e00a9

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/aoh;->X(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 75
    :cond_1
    instance-of v0, p2, Lcom/kingroot/kinguser/aod;

    if-eqz v0, :cond_2

    .line 78
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18936

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 80
    :cond_2
    return-void
.end method

.method protected oI()V
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aoh;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030116

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 95
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aoh;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/aoh;->aBS:Ljava/util/ArrayList;

    .line 101
    iget-object v1, p0, Lcom/kingroot/kinguser/aoh;->aBS:Ljava/util/ArrayList;

    const v2, 0x7f0f0018

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/kingroot/kinguser/aoh;->aBS:Ljava/util/ArrayList;

    const v2, 0x7f0f0019

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/aoh;->aBT:Ljava/util/ArrayList;

    .line 106
    iget-object v2, p0, Lcom/kingroot/kinguser/aoh;->aBT:Ljava/util/ArrayList;

    const v1, 0x7f0f001a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/kingroot/kinguser/aoh;->aBT:Ljava/util/ArrayList;

    const v2, 0x7f0f001b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/aoh;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    const-wide/32 v2, 0x7f0e00a9

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/aoh;->X(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v2, p0, Lcom/kingroot/kinguser/aoh;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 112
    new-instance v3, Lcom/kingroot/kinguser/aoh$1;

    invoke-direct {v3, p0, v2}, Lcom/kingroot/kinguser/aoh$1;-><init>(Lcom/kingroot/kinguser/aoh;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoh;->Vx:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 122
    const/4 v1, 0x3

    const v2, 0x7f0f0017

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/aoh;->aBT:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v2, 0x7f0e00b6

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/aoh;->X(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lcom/kingroot/kinguser/ano;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/aoh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704af

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ano;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoh;->aBg:Lcom/kingroot/kinguser/ano;

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/aoh;->aFy:Lcom/kingroot/kinguser/anl;

    iget-object v1, p0, Lcom/kingroot/kinguser/aoh;->aBg:Lcom/kingroot/kinguser/ano;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/anl;->a(Lcom/kingroot/kinguser/ano;)V

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/aoh;->aFx:Lcom/kingroot/kinguser/anl;

    iget-object v1, p0, Lcom/kingroot/kinguser/aoh;->aBg:Lcom/kingroot/kinguser/ano;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/anl;->a(Lcom/kingroot/kinguser/ano;)V

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/aoh;->aBg:Lcom/kingroot/kinguser/ano;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/yo;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1892f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 48
    return-void
.end method
