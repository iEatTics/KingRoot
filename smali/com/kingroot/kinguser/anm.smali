.class public Lcom/kingroot/kinguser/anm;
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

.field private aBU:Lcom/kingroot/kinguser/ann;

.field private aBV:Lcom/kingroot/kinguser/aoj;

.field private aBW:Z

.field private aBX:Z

.field private aBg:Lcom/kingroot/kinguser/ano;

.field private final mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/yo;-><init>(Landroid/content/Context;)V

    .line 175
    new-instance v0, Lcom/kingroot/kinguser/anm$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anm$2;-><init>(Lcom/kingroot/kinguser/anm;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anm;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anm;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/kingroot/kinguser/anm;->Vz:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anm;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->Vx:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/anm;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/kingroot/kinguser/anm;->VA:I

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/anm;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/kingroot/kinguser/anm;->VA:I

    return p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/anm;)Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->Vc:Ljava/util/List;

    return-object v0
.end method

.method private i(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    const-string v0, "key_click_content_from_app_update_notification"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_click_btn_from_app_update_notification"

    .line 154
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    :cond_0
    iput-boolean v2, p0, Lcom/kingroot/kinguser/anm;->aBW:Z

    .line 157
    const-string v0, "key_click_btn_from_app_update_notification"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    iput-boolean v2, p0, Lcom/kingroot/kinguser/anm;->aBX:Z

    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->aBV:Lcom/kingroot/kinguser/aoj;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->aBV:Lcom/kingroot/kinguser/aoj;

    iget-boolean v1, p0, Lcom/kingroot/kinguser/anm;->aBX:Z

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aoj;->cF(Z)V

    .line 163
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18971

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 168
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->sO()V

    .line 170
    :cond_2
    return-void

    .line 165
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18970

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method


# virtual methods
.method protected L(Ljava/util/List;)V
    .locals 3
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
    .line 69
    new-instance v0, Lcom/kingroot/kinguser/any;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/any;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anm;->aBU:Lcom/kingroot/kinguser/ann;

    .line 70
    new-instance v0, Lcom/kingroot/kinguser/aoj;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anm;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kingroot/kinguser/anm;->aBX:Z

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/aoj;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anm;->aBV:Lcom/kingroot/kinguser/aoj;

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->aBU:Lcom/kingroot/kinguser/ann;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->aBV:Lcom/kingroot/kinguser/aoj;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method protected a(ILcom/kingroot/kinguser/ym;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 83
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->aBS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 84
    if-ne v1, p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->aBS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v4, 0x7f0e0019

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/anm;->X(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->aBS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v4, 0x7f0e00a9

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/anm;->X(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 92
    :cond_1
    instance-of v0, p2, Lcom/kingroot/kinguser/aoj;

    if-eqz v0, :cond_2

    .line 94
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18975

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 99
    :goto_2
    return-void

    .line 97
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188f3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_2
.end method

.method protected oG()Landroid/view/View;
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/kingroot/kinguser/yo;->oG()Landroid/view/View;

    .line 61
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/NoScrollViewPager;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/NoScrollViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anm;->Vx:Landroid/support/v4/view/ViewPager;

    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->Vx:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/kingroot/kinguser/anm;->Vy:Lcom/kingroot/kinguser/yo$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->Vx:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/kingroot/kinguser/anm;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->Vx:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method protected oI()V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 114
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anm;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/anm;->aBS:Ljava/util/ArrayList;

    .line 120
    iget-object v1, p0, Lcom/kingroot/kinguser/anm;->aBS:Ljava/util/ArrayList;

    const v2, 0x7f0f0018

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lcom/kingroot/kinguser/anm;->aBS:Ljava/util/ArrayList;

    const v2, 0x7f0f0019

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/anm;->aBT:Ljava/util/ArrayList;

    .line 125
    iget-object v2, p0, Lcom/kingroot/kinguser/anm;->aBT:Ljava/util/ArrayList;

    const v1, 0x7f0f001a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/kingroot/kinguser/anm;->aBT:Ljava/util/ArrayList;

    const v2, 0x7f0f001b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    const-wide/32 v2, 0x7f0e00a9

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/anm;->X(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v2, p0, Lcom/kingroot/kinguser/anm;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 131
    new-instance v3, Lcom/kingroot/kinguser/anm$1;

    invoke-direct {v3, p0, v2}, Lcom/kingroot/kinguser/anm$1;-><init>(Lcom/kingroot/kinguser/anm;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->Vx:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 141
    const/4 v1, 0x3

    const v2, 0x7f0f0017

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 144
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->aBT:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v2, 0x7f0e0019

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/anm;->X(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-boolean v0, p0, Lcom/kingroot/kinguser/anm;->aBW:Z

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->Vx:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 149
    :cond_1
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Lcom/kingroot/kinguser/ano;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070470

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ano;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anm;->aBg:Lcom/kingroot/kinguser/ano;

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->aBg:Lcom/kingroot/kinguser/ano;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ano;->Jn()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->aBU:Lcom/kingroot/kinguser/ann;

    iget-object v1, p0, Lcom/kingroot/kinguser/anm;->aBg:Lcom/kingroot/kinguser/ano;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ann;->a(Lcom/kingroot/kinguser/ano;)V

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/anm;->aBg:Lcom/kingroot/kinguser/ano;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/yo;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/anm;->i(Landroid/content/Intent;)V

    .line 56
    :cond_0
    return-void
.end method
