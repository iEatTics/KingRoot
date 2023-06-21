.class public Lcom/kingroot/kinguser/awx;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aue$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/awx$a;
    }
.end annotation


# instance fields
.field private aDg:Lcom/kingroot/kinguser/zi;

.field private aVA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/awx$a;",
            ">;"
        }
    .end annotation
.end field

.field private aVR:Landroid/widget/ImageView;

.field private aVS:Landroid/widget/TextView;

.field private aVT:Lcom/kingroot/kinguser/aue$a;

.field private aVU:Landroid/view/View;

.field private aVV:Z

.field private aVW:Lcom/kingroot/kinguser/awx$a;

.field private final aVX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/awx;->aVA:Ljava/util/List;

    .line 42
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/awx;->aDg:Lcom/kingroot/kinguser/zi;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/awx;->aVV:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/awx;->aVX:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/awx;)Lcom/kingroot/kinguser/aue$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/awx;->aVT:Lcom/kingroot/kinguser/aue$a;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/awx;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/awx;->aVR:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/awx;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/awx;->aVS:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/awx;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/awx;->aVU:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/awx;)Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/awx;->aVA:Ljava/util/List;

    return-object v0
.end method

.method private e(ZI)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awx;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 242
    const v0, 0x7f0f0207

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 243
    if-eqz p1, :cond_1

    .line 244
    const v0, 0x7f020239

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 248
    :goto_1
    return-void

    .line 242
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method static synthetic f(Lcom/kingroot/kinguser/awx;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/kingroot/kinguser/awx;->aVV:Z

    return v0
.end method


# virtual methods
.method public N(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/kingroot/kinguser/awx;->b(ILjava/lang/String;Z)V

    .line 183
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/aue$a;)V
    .locals 1

    .prologue
    .line 252
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aue$a;

    iput-object v0, p0, Lcom/kingroot/kinguser/awx;->aVT:Lcom/kingroot/kinguser/aue$a;

    .line 253
    return-void
.end method

.method public b(ILjava/lang/String;Z)V
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awx;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/awx$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kingroot/kinguser/awx$4;-><init>(Lcom/kingroot/kinguser/awx;ILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method

.method public cM(Z)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 209
    iput-boolean p1, p0, Lcom/kingroot/kinguser/awx;->aVV:Z

    .line 211
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awx;->getContentView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0f0283

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 212
    if-eqz p1, :cond_0

    .line 213
    invoke-static {v0}, Lcom/kingroot/kinguser/ws;->h(Landroid/view/View;)V

    .line 219
    :goto_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awx;->getContentView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0f0284

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/kingroot/kinguser/awx;->aVX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 221
    if-eqz p1, :cond_2

    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 215
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 219
    goto :goto_1

    :cond_2
    move v3, v1

    .line 221
    goto :goto_3

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/awx;->aVA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/awx$a;

    .line 226
    iget-object v0, v0, Lcom/kingroot/kinguser/awx$a;->ajG:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/awx;->e(ZI)V

    goto :goto_4

    .line 228
    :cond_4
    return-void
.end method

.method public cN(Z)V
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awx;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/awx$5;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/awx$5;-><init>(Lcom/kingroot/kinguser/awx;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 6

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awx;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 94
    const v1, 0x7f0300f6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    const v0, 0x7f0f01a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/awx;->aVU:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/awx;->aVU:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/awx;->aVU:Landroid/view/View;

    new-instance v2, Lcom/kingroot/kinguser/awx$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/awx$1;-><init>(Lcom/kingroot/kinguser/awx;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f0f024b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/awx;->aVR:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f0f024c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/awx;->aVS:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/awx;->aVT:Lcom/kingroot/kinguser/aue$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aue$a;->start()V

    .line 108
    const v0, 0x7f0f0283

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    const v2, 0x7f0f0285

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 112
    iget-object v3, p0, Lcom/kingroot/kinguser/awx;->aVA:Ljava/util/List;

    new-instance v4, Lcom/kingroot/kinguser/awx$a;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, v2}, Lcom/kingroot/kinguser/awx$a;-><init>(Lcom/kingroot/kinguser/awx;ILandroid/view/View;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/awx;->aDg:Lcom/kingroot/kinguser/zi;

    const v5, 0x7f020062

    .line 113
    invoke-virtual {v2, v5}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/kingroot/kinguser/awx$a;->g(Landroid/graphics/drawable/Drawable;)Lcom/kingroot/kinguser/awx$a;

    move-result-object v2

    iget-object v4, p0, Lcom/kingroot/kinguser/awx;->aDg:Lcom/kingroot/kinguser/zi;

    const v5, 0x7f07003a

    .line 114
    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/awx$a;->jV(Ljava/lang/String;)Lcom/kingroot/kinguser/awx$a;

    move-result-object v2

    .line 112
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const v2, 0x7f0f0287

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/kingroot/kinguser/awx;->aVA:Ljava/util/List;

    new-instance v4, Lcom/kingroot/kinguser/awx$a;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5, v2}, Lcom/kingroot/kinguser/awx$a;-><init>(Lcom/kingroot/kinguser/awx;ILandroid/view/View;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/awx;->aDg:Lcom/kingroot/kinguser/zi;

    const v5, 0x7f020063

    .line 119
    invoke-virtual {v2, v5}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/kingroot/kinguser/awx$a;->g(Landroid/graphics/drawable/Drawable;)Lcom/kingroot/kinguser/awx$a;

    move-result-object v2

    iget-object v4, p0, Lcom/kingroot/kinguser/awx;->aDg:Lcom/kingroot/kinguser/zi;

    const v5, 0x7f070037

    .line 120
    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/awx$a;->jV(Ljava/lang/String;)Lcom/kingroot/kinguser/awx$a;

    move-result-object v2

    .line 118
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v2, p0, Lcom/kingroot/kinguser/awx;->aVX:Ljava/util/ArrayList;

    const v3, 0x7f0f0286

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    const v2, 0x7f0f0289

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 125
    iget-object v3, p0, Lcom/kingroot/kinguser/awx;->aVA:Ljava/util/List;

    new-instance v4, Lcom/kingroot/kinguser/awx$a;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5, v2}, Lcom/kingroot/kinguser/awx$a;-><init>(Lcom/kingroot/kinguser/awx;ILandroid/view/View;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/awx;->aDg:Lcom/kingroot/kinguser/zi;

    const v5, 0x7f02005f

    .line 126
    invoke-virtual {v2, v5}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/kingroot/kinguser/awx$a;->g(Landroid/graphics/drawable/Drawable;)Lcom/kingroot/kinguser/awx$a;

    move-result-object v2

    iget-object v4, p0, Lcom/kingroot/kinguser/awx;->aDg:Lcom/kingroot/kinguser/zi;

    const v5, 0x7f07003c

    .line 127
    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/awx$a;->jV(Ljava/lang/String;)Lcom/kingroot/kinguser/awx$a;

    move-result-object v2

    .line 125
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v2, p0, Lcom/kingroot/kinguser/awx;->aVX:Ljava/util/ArrayList;

    const v3, 0x7f0f0288

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    const v2, 0x7f0f028b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 132
    new-instance v3, Lcom/kingroot/kinguser/awx$a;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4, v2}, Lcom/kingroot/kinguser/awx$a;-><init>(Lcom/kingroot/kinguser/awx;ILandroid/view/View;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/awx;->aDg:Lcom/kingroot/kinguser/zi;

    const v4, 0x7f020061

    .line 133
    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/awx$a;->g(Landroid/graphics/drawable/Drawable;)Lcom/kingroot/kinguser/awx$a;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/awx;->aDg:Lcom/kingroot/kinguser/zi;

    const v4, 0x7f0703d3

    .line 134
    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/awx$a;->jV(Ljava/lang/String;)Lcom/kingroot/kinguser/awx$a;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/awx;->aVW:Lcom/kingroot/kinguser/awx$a;

    .line 135
    iget-object v2, p0, Lcom/kingroot/kinguser/awx;->aVA:Ljava/util/List;

    iget-object v3, p0, Lcom/kingroot/kinguser/awx;->aVW:Lcom/kingroot/kinguser/awx$a;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v2, p0, Lcom/kingroot/kinguser/awx;->aVX:Ljava/util/ArrayList;

    const v3, 0x7f0f028a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const v0, 0x7f0f028d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/awx$2;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/awx$2;-><init>(Lcom/kingroot/kinguser/awx;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-object v1
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/awx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070034

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ada;->getWholeView()Landroid/view/View;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_0

    .line 79
    const v2, 0x7f0f0336

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1887e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 71
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/awx;->aVT:Lcom/kingroot/kinguser/aue$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aue$a;->PJ()V

    .line 89
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStart()V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/awx;->aVW:Lcom/kingroot/kinguser/awx$a;

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/kingroot/kinguser/awx;->aVW:Lcom/kingroot/kinguser/awx$a;

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WP()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/akt;->Gj()Lcom/kingroot/kinguser/akt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akt;->Gk()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 62
    :goto_0
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/awx$a;->do(Z)Lcom/kingroot/kinguser/awx$a;

    .line 65
    :cond_0
    return-void

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u(IZ)V
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awx;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/awx$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/kingroot/kinguser/awx$3;-><init>(Lcom/kingroot/kinguser/awx;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method
