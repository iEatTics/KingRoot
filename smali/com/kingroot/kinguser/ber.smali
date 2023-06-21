.class public Lcom/kingroot/kinguser/ber;
.super Lcom/kingroot/kinguser/ada;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ber$a;
    }
.end annotation


# instance fields
.field private blt:Lcom/kingroot/kinguser/ber$a;

.field private blu:Z

.field private blv:Z

.field private blw:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ber;->blt:Lcom/kingroot/kinguser/ber$a;

    .line 40
    iput-boolean v1, p0, Lcom/kingroot/kinguser/ber;->blu:Z

    .line 41
    iput-boolean v1, p0, Lcom/kingroot/kinguser/ber;->blv:Z

    .line 43
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/ber$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/ber$1;-><init>(Lcom/kingroot/kinguser/ber;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ber;->blw:Lcom/kingroot/kinguser/bed;

    .line 67
    return-void
.end method

.method private Zv()V
    .locals 4

    .prologue
    .line 208
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1877a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 209
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ber;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 210
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingroot/kinguser/activitys/SoftwareProtectListActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070316

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 212
    const-string v3, "setting_title"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v2, "software.protect_list.page"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method private Zw()V
    .locals 3

    .prologue
    .line 219
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1877e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 220
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ber;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 221
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kingroot/kinguser/activitys/AntiInjectAboutActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/ber;)Lcom/kingroot/kinguser/ber$a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/ber;->blt:Lcom/kingroot/kinguser/ber$a;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ber;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ber;->bo(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ber;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ber;->r(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ber;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ber;->blu:Z

    return v0
.end method

.method private bo(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 183
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 184
    new-instance v1, Lcom/kingroot/kinguser/bid;

    invoke-direct {v1, p1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 185
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bid;->show()V

    .line 186
    const v2, 0x7f070058

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 187
    const v2, 0x7f070056

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 188
    const v2, 0x7f070055

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 189
    const v2, 0x7f070057

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/kingroot/kinguser/ber$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ber$7;-><init>(Lcom/kingroot/kinguser/ber;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 196
    new-instance v0, Lcom/kingroot/kinguser/ber$8;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ber$8;-><init>(Lcom/kingroot/kinguser/ber;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 203
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/ber;)Lcom/kingroot/common/utils/ui/ImageViewDot;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/ber;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/ber;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/kingroot/kinguser/ber;->Zv()V

    return-void
.end method

.method static synthetic e(Lcom/kingroot/kinguser/ber;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/kingroot/kinguser/ber;->Zw()V

    return-void
.end method

.method static synthetic f(Lcom/kingroot/kinguser/ber;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/ber;->blw:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method private r(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 111
    new-instance v0, Lcom/kingroot/kinguser/aic;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ber;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kingroot/kinguser/aic;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 113
    iget-boolean v1, p0, Lcom/kingroot/kinguser/ber;->blv:Z

    if-eqz v1, :cond_0

    .line 114
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 115
    new-instance v2, Lcom/kingroot/kinguser/aic$b;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ber;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/kingroot/kinguser/ber$4;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/ber$4;-><init>(Lcom/kingroot/kinguser/ber;)V

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/kingroot/kinguser/aic$b;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/kingroot/kinguser/aic$a;)V

    .line 132
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aic;->Y(Ljava/util/List;)V

    .line 133
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aic;->a(Lcom/kingroot/kinguser/aic$b;)V

    .line 134
    new-instance v1, Lcom/kingroot/kinguser/ber$5;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/ber$5;-><init>(Lcom/kingroot/kinguser/ber;Lcom/kingroot/kinguser/aic;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aic;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->show()V

    .line 155
    iget-object v0, p0, Lcom/kingroot/kinguser/ber;->abC:Lcom/kingroot/common/utils/ui/ImageViewDot;

    invoke-static {}, Lcom/kingroot/kinguser/bhq;->acE()Lcom/kingroot/kinguser/bhq;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/kingroot/kinguser/bhq;->iR(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/common/utils/ui/ImageViewDot;->setShowDot(Z)V

    .line 180
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 158
    new-instance v2, Lcom/kingroot/kinguser/aic$b;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ber;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v6, v4}, Lcom/kingroot/kinguser/aic$b;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/kingroot/kinguser/aic$a;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aic;->Y(Ljava/util/List;)V

    .line 160
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aic;->a(Lcom/kingroot/kinguser/aic$b;)V

    .line 161
    new-instance v1, Lcom/kingroot/kinguser/ber$6;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/ber$6;-><init>(Lcom/kingroot/kinguser/ber;Lcom/kingroot/kinguser/aic;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aic;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->show()V

    goto :goto_0
.end method


# virtual methods
.method public dI(Z)V
    .locals 0

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/kingroot/kinguser/ber;->blu:Z

    .line 228
    return-void
.end method

.method public dJ(Z)V
    .locals 0

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/kingroot/kinguser/ber;->blv:Z

    .line 233
    return-void
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/kingroot/kinguser/ada;->oI()V

    .line 84
    new-instance v0, Lcom/kingroot/kinguser/ber$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ber$2;-><init>(Lcom/kingroot/kinguser/ber;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ber;->c(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ber;->c(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ber;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 98
    const v1, 0x7f0202ac

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    new-instance v0, Lcom/kingroot/kinguser/ber$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ber$3;-><init>(Lcom/kingroot/kinguser/ber;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ber;->b(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ber;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method

.method protected oY()Landroid/view/View;
    .locals 3

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ber;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030130

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 77
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ber;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
