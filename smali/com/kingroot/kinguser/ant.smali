.class public Lcom/kingroot/kinguser/ant;
.super Lcom/kingroot/kinguser/yo;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


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

.field private aDA:I

.field private aDB:Z

.field private aDy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;",
            ">;"
        }
    .end annotation
.end field

.field private aDz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppsMarketCategoryPage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ant;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/yo;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/ant;->aDA:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ant;->aDB:Z

    .line 51
    return-void
.end method

.method private JC()V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/ant;->Vc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ym;

    .line 111
    instance-of v2, v0, Lcom/kingroot/kinguser/anv;

    if-eqz v2, :cond_0

    .line 112
    check-cast v0, Lcom/kingroot/kinguser/anv;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anv;->JC()V

    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method

.method private JD()V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/ant;->Vc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ym;

    .line 120
    instance-of v2, v0, Lcom/kingroot/kinguser/anv;

    if-eqz v2, :cond_0

    .line 121
    check-cast v0, Lcom/kingroot/kinguser/anv;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anv;->JD()V

    goto :goto_0

    .line 124
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/ant;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/ant;->aDz:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/ant;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/kingroot/kinguser/ant;->aDA:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/ant;->aDA:I

    return v0
.end method

.method public static synthetic c(Lcom/kingroot/kinguser/ant;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/kingroot/kinguser/ant;->JC()V

    return-void
.end method

.method public static synthetic d(Lcom/kingroot/kinguser/ant;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/ant;->aDy:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/ant;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/ant;->Vx:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method protected L(Ljava/util/List;)V
    .locals 4
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
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ant;->aDy:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ant;->aDz:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/kingroot/kinguser/anv;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ant;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ant;->aDy:Ljava/util/List;

    const/4 v3, 0x1

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/kingroot/kinguser/anv;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/ant;Ljava/util/List;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v0, Lcom/kingroot/kinguser/anv;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ant;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ant;->aDz:Ljava/util/List;

    const/4 v3, 0x2

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/kingroot/kinguser/anv;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/ant;Ljava/util/List;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method protected a(ILcom/kingroot/kinguser/ym;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 129
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ant;->aBS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 130
    if-ne v1, p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/ant;->aBS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/ant;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v4, 0x7f0e00b6

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/ant;->X(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ant;->aBS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/ant;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v4, 0x7f0e00a9

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/ant;->X(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 138
    :cond_1
    return-void
.end method

.method protected oI()V
    .locals 4

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ant;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030116

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 149
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ant;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/ant;->aBS:Ljava/util/ArrayList;

    .line 155
    iget-object v1, p0, Lcom/kingroot/kinguser/ant;->aBS:Ljava/util/ArrayList;

    const v2, 0x7f0f0018

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, p0, Lcom/kingroot/kinguser/ant;->aBS:Ljava/util/ArrayList;

    const v2, 0x7f0f0019

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/ant;->aBT:Ljava/util/ArrayList;

    .line 160
    const v1, 0x7f0f001a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 161
    const v2, 0x7f0f001b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    const v2, 0x7f0703fa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 163
    const v2, 0x7f0703f9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v2, p0, Lcom/kingroot/kinguser/ant;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, p0, Lcom/kingroot/kinguser/ant;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/ant;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    const-wide/32 v2, 0x7f0e00a9

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/ant;->X(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v2, p0, Lcom/kingroot/kinguser/ant;->aBT:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 170
    new-instance v3, Lcom/kingroot/kinguser/ant$1;

    invoke-direct {v3, p0, v2}, Lcom/kingroot/kinguser/ant$1;-><init>(Lcom/kingroot/kinguser/ant;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ant;->Vx:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 180
    const/4 v1, 0x3

    const v2, 0x7f0f0017

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/ant;->aBT:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v2, 0x7f0e00b6

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/ant;->X(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 142
    new-instance v0, Lcom/kingroot/kinguser/ano;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703fb

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ano;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/yo;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1893f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 66
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/kingroot/kinguser/yo;->onResume()V

    .line 189
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ant;->aDB:Z

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ant;->aDB:Z

    .line 191
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ant;->sb()V

    .line 193
    :cond_0
    return-void
.end method

.method public sb()V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/kingroot/kinguser/ant;->JD()V

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/ant;->aDA:I

    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$1;-><init>(Lcom/kingroot/kinguser/ant;)V

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/ams;->a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadCategoryListener;)V

    .line 89
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$2;-><init>(Lcom/kingroot/kinguser/ant;)V

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/ams;->a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadCategoryListener;)V

    .line 106
    return-void
.end method
