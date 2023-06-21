.class public Lcom/kingroot/kinguser/aww;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"


# instance fields
.field private aDg:Lcom/kingroot/kinguser/zi;

.field private aRB:Lcom/kingroot/kinguser/bed;

.field private aVA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aga$a;",
            ">;"
        }
    .end annotation
.end field

.field private aVJ:Lcom/kingroot/kinguser/aga;

.field private aVK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aga$a;",
            ">;"
        }
    .end annotation
.end field

.field private aVL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aga$a;",
            ">;"
        }
    .end annotation
.end field

.field public aVM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aVN:Lcom/kingroot/kinguser/aga$b;

.field private aVO:Ljava/util/Comparator;

.field private aVz:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aww;->aDg:Lcom/kingroot/kinguser/zi;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aww;->aVA:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aww;->aVK:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aww;->aVL:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aww;->aVM:Ljava/util/List;

    .line 73
    new-instance v0, Lcom/kingroot/kinguser/aww$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aww$1;-><init>(Lcom/kingroot/kinguser/aww;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aww;->aVN:Lcom/kingroot/kinguser/aga$b;

    .line 131
    new-instance v0, Lcom/kingroot/kinguser/aww$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aww$2;-><init>(Lcom/kingroot/kinguser/aww;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aww;->aVO:Ljava/util/Comparator;

    .line 141
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/aww$3;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/aww$3;-><init>(Lcom/kingroot/kinguser/aww;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aww;->aRB:Lcom/kingroot/kinguser/bed;

    .line 87
    return-void
.end method

.method private TA()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aVA:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aVJ:Lcom/kingroot/kinguser/aga;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/kingroot/kinguser/aga;

    iget-object v1, p0, Lcom/kingroot/kinguser/aww;->aVA:Ljava/util/List;

    iget-object v2, p0, Lcom/kingroot/kinguser/aww;->aVN:Lcom/kingroot/kinguser/aga$b;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/aga;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/aga$b;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aww;->aVJ:Lcom/kingroot/kinguser/aga;

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aVz:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/kingroot/kinguser/aww;->aVJ:Lcom/kingroot/kinguser/aga;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aVz:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v2, p0, Lcom/kingroot/kinguser/aww;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aVz:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aVJ:Lcom/kingroot/kinguser/aga;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aga;->notifyDataSetChanged()V

    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aVz:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 128
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aww;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;Ljava/util/Map;)Lcom/kingroot/kinguser/aga$a;
    .locals 1

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/kingroot/kinguser/aww;->a(Ljava/lang/String;Ljava/util/List;ZLjava/util/List;Ljava/util/Map;)Lcom/kingroot/kinguser/aga$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;ZLjava/util/List;Ljava/util/Map;)Lcom/kingroot/kinguser/aga$a;
    .locals 8
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/AdvancePermModel;",
            ">;Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
            ">;)",
            "Lcom/kingroot/kinguser/aga$a;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 212
    :cond_0
    const/4 v0, 0x0

    .line 292
    :goto_0
    return-object v0

    .line 215
    :cond_1
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 220
    const/4 v4, 0x0

    .line 225
    :try_start_0
    const-string v0, "com.android.shell"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aDg:Lcom/kingroot/kinguser/zi;

    const v1, 0x7f070345

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aDg:Lcom/kingroot/kinguser/zi;

    const v1, 0x7f0202bd

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 228
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aDg:Lcom/kingroot/kinguser/zi;

    const v3, 0x7f07001d

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 229
    const/4 v5, 0x1

    :goto_1
    move-object v0, p1

    .line 278
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/aga$c;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/kingroot/kinguser/aga$c;

    move-result-object v0

    .line 279
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kingroot/kinguser/aga$c;->ajE:Z

    iput-boolean v1, v0, Lcom/kingroot/kinguser/aga$c;->ajF:Z

    .line 281
    if-eqz v5, :cond_8

    .line 282
    iget-object v1, p0, Lcom/kingroot/kinguser/aww;->aVL:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 292
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :cond_2
    const-string v0, "com.android.kinguser.console"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aDg:Lcom/kingroot/kinguser/zi;

    const v1, 0x7f070274

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aDg:Lcom/kingroot/kinguser/zi;

    const v1, 0x7f02016a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aDg:Lcom/kingroot/kinguser/zi;

    const v3, 0x7f07001d

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 235
    const/4 v5, 0x1

    goto :goto_1

    .line 237
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 239
    if-nez v5, :cond_4

    .line 240
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 243
    :cond_4
    invoke-static {p2}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 248
    :cond_5
    if-eqz p3, :cond_b

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 249
    const/4 v4, 0x1

    move v1, v4

    .line 253
    :goto_2
    invoke-interface {p5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 254
    if-eqz v0, :cond_a

    .line 257
    iget-object v3, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUH:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 260
    invoke-static {p1}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v0, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUH:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 263
    const/4 v0, 0x1

    :goto_3
    move v4, v0

    .line 270
    :goto_4
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 271
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aDg:Lcom/kingroot/kinguser/zi;

    const v3, 0x7f07001d

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 273
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_5
    move v5, v0

    goto/16 :goto_1

    .line 266
    :cond_6
    const/4 v4, 0x1

    goto :goto_4

    .line 273
    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    .line 284
    :cond_8
    iget-object v1, p0, Lcom/kingroot/kinguser/aww;->aVK:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_3

    :cond_a
    move v4, v1

    goto :goto_4

    :cond_b
    move v1, v4

    goto :goto_2
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aww;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aVK:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aww;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aVL:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/aww;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aVA:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/aww;)Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aVO:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/aww;)Lcom/kingroot/kinguser/zi;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/aww;->aDg:Lcom/kingroot/kinguser/zi;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/aww;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kingroot/kinguser/aww;->TA()V

    return-void
.end method


# virtual methods
.method protected oG()Landroid/view/View;
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aww;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 111
    const v1, 0x7f0300f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 112
    const v0, 0x7f0f0282

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aww;->aVz:Landroid/support/v7/widget/RecyclerView;

    .line 114
    return-object v1
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 97
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/aww;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 98
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070020

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1887f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 93
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aww;->aRB:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 106
    return-void
.end method
