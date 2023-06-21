.class public Lcom/kingroot/kinguser/bex;
.super Lcom/kingroot/kinguser/ada;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bex$a;
    }
.end annotation


# instance fields
.field private blK:Lcom/kingroot/kinguser/bex$a;

.field private blw:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bex;->blK:Lcom/kingroot/kinguser/bex$a;

    .line 46
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/bex$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/bex$1;-><init>(Lcom/kingroot/kinguser/bex;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bex;->blw:Lcom/kingroot/kinguser/bed;

    .line 70
    return-void
.end method

.method private ZA()V
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bex;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckMainActivity;->aL(Landroid/content/Context;)V

    .line 172
    return-void
.end method

.method private ZB()V
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bex;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingroot/kinguser/xmod/ui/CveInfoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 180
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188e0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 181
    return-void
.end method

.method private Zw()V
    .locals 3

    .prologue
    .line 208
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18878

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 209
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bex;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 210
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingroot/kinguser/activitys/AntiInjectAboutActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/bex;)Lcom/kingroot/kinguser/bex$a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/bex;->blK:Lcom/kingroot/kinguser/bex$a;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bex;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bex;->bo(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bex;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bex;->r(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bex;)Lcom/kingroot/common/utils/ui/ImageViewDot;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/bex;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    return-object v0
.end method

.method private bo(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 184
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/kingroot/kinguser/bid;

    invoke-direct {v1, p1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bid;->show()V

    .line 187
    const v2, 0x7f070058

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 188
    const v2, 0x7f070056

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 189
    const v2, 0x7f070055

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 190
    const v2, 0x7f070057

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/kingroot/kinguser/bex$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bex$6;-><init>(Lcom/kingroot/kinguser/bex;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 197
    new-instance v0, Lcom/kingroot/kinguser/bex$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bex$7;-><init>(Lcom/kingroot/kinguser/bex;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 204
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bex;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/kingroot/kinguser/bex;->Zw()V

    return-void
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bex;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/kingroot/kinguser/bex;->ZB()V

    return-void
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bex;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/kingroot/kinguser/bex;->ZA()V

    return-void
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bex;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/bex;->blw:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method private r(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 100
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18875

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 102
    new-instance v0, Lcom/kingroot/kinguser/aic;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bex;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kingroot/kinguser/aic;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v1

    .line 106
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    .line 107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/aii;->xO()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ahl;->xo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    const v1, 0x7f0702ec

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/biq;->ada()Lcom/kingroot/kinguser/biq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/biq;->adb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const v1, 0x7f07044e

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bfw;->abe()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    const v1, 0x7f0704e9

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_2
    const v1, 0x7f0702b9

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v1, Lcom/kingroot/kinguser/aic$b;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bex;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/kingroot/kinguser/bex$4;

    invoke-direct {v6, p0, v3, v2}, Lcom/kingroot/kinguser/bex$4;-><init>(Lcom/kingroot/kinguser/bex;Ljava/util/List;Lcom/kingroot/kinguser/zi;)V

    invoke-direct {v1, v4, v3, v5, v6}, Lcom/kingroot/kinguser/aic$b;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/kingroot/kinguser/aic$a;)V

    .line 144
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aic;->Y(Ljava/util/List;)V

    .line 145
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aic;->a(Lcom/kingroot/kinguser/aic$b;)V

    .line 147
    new-instance v1, Lcom/kingroot/kinguser/bex$5;

    invoke-direct {v1, p0, v0, v3, v2}, Lcom/kingroot/kinguser/bex$5;-><init>(Lcom/kingroot/kinguser/bex;Lcom/kingroot/kinguser/aic;Ljava/util/List;Lcom/kingroot/kinguser/zi;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aic;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 167
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->show()V

    .line 168
    return-void

    .line 113
    :cond_3
    const v1, 0x7f0702dd

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bex$a;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/kingroot/kinguser/bex;->blK:Lcom/kingroot/kinguser/bex$a;

    .line 216
    return-void
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/kingroot/kinguser/ada;->oI()V

    .line 76
    new-instance v0, Lcom/kingroot/kinguser/bex$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bex$2;-><init>(Lcom/kingroot/kinguser/bex;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bex;->c(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bex;->c(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bex;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    const v1, 0x7f0202ac

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 89
    new-instance v0, Lcom/kingroot/kinguser/bex$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bex$3;-><init>(Lcom/kingroot/kinguser/bex;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bex;->b(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bex;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method
