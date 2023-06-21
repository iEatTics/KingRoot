.class public Lcom/kingroot/kinguser/auu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aul$a;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private Zu:Z

.field private aRB:Lcom/kingroot/kinguser/bed;

.field private final aRz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private aSV:Lcom/kingroot/kinguser/aul$b;

.field private aSW:Lcom/kingroot/kinguser/advance/install/IInjectCallback;

.field private aSX:Lcom/kingroot/kinguser/bed;

.field private alI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agi$c;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/kingroot/kinguser/aul$b;)V
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/aul$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "commonSilentInstallPagePresenter"

    iput-object v0, p0, Lcom/kingroot/kinguser/auu;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/auu;->alI:Ljava/util/List;

    .line 77
    new-instance v0, Lcom/kingroot/kinguser/mvp/presenter/SilentInstallPagePresenter$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/mvp/presenter/SilentInstallPagePresenter$2;-><init>(Lcom/kingroot/kinguser/auu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/auu;->aSW:Lcom/kingroot/kinguser/advance/install/IInjectCallback;

    .line 130
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/auu$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/auu$2;-><init>(Lcom/kingroot/kinguser/auu;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/auu;->aRB:Lcom/kingroot/kinguser/bed;

    .line 148
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/auu$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/auu$3;-><init>(Lcom/kingroot/kinguser/auu;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/auu;->aSX:Lcom/kingroot/kinguser/bed;

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/auu;->aRz:Ljava/lang/ref/WeakReference;

    .line 54
    invoke-static {p2}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aul$b;

    iput-object v0, p0, Lcom/kingroot/kinguser/auu;->aSV:Lcom/kingroot/kinguser/aul$b;

    .line 55
    return-void
.end method

.method private QU()V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/kingroot/kinguser/auu;->alI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v0

    const-wide v2, 0x9a7ec800L

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/agy;->ai(J)Ljava/util/Map;

    move-result-object v3

    .line 192
    invoke-static {v3}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    return-void

    .line 197
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Eq()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v2, v0

    .line 199
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v0

    .line 200
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 201
    if-eqz v2, :cond_2

    .line 202
    invoke-virtual {v0}, Lcom/kingroot/kinguser/arv;->getAllRiskApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 207
    invoke-static {}, Lcom/kingroot/kinguser/awc;->SB()Lcom/kingroot/kinguser/awc;

    move-result-object v0

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/awc;->hn(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 208
    iget-object v7, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move v2, v1

    .line 197
    goto :goto_0

    .line 211
    :cond_4
    iput v1, p0, Lcom/kingroot/kinguser/auu;->mCount:I

    .line 213
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 217
    iget v7, p0, Lcom/kingroot/kinguser/auu;->mCount:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/kingroot/kinguser/auu;->mCount:I

    .line 220
    invoke-direct {p0, v2, v4, v5, v0}, Lcom/kingroot/kinguser/auu;->a(ZLjava/util/List;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v7

    .line 219
    invoke-static {v0, v7, v1}, Lcom/kingroot/kinguser/agi$c;->a(Ljava/lang/String;ZLjava/util/List;)Lcom/kingroot/kinguser/agi$c;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/kingroot/kinguser/auu;->alI:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method static synthetic a(Lcom/kingroot/kinguser/auu;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/kingroot/kinguser/auu;->Zu:Z

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/auu;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/kingroot/kinguser/auu;->Zu:Z

    return p1
.end method

.method private a(ZLjava/util/List;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 4
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 161
    if-eqz p1, :cond_0

    invoke-interface {p2, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 183
    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 167
    if-eqz v0, :cond_2

    .line 170
    iget-object v2, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUH:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    invoke-static {p4}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUH:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 176
    goto :goto_0

    :cond_1
    move v0, v1

    .line 179
    goto :goto_0

    .line 183
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/auu;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/auu;->aRB:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/auu;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/auu;->mCount:I

    return v0
.end method

.method public static synthetic d(Lcom/kingroot/kinguser/auu;)Lcom/kingroot/kinguser/aul$b;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/auu;->aSV:Lcom/kingroot/kinguser/aul$b;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/auu;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kingroot/kinguser/auu;->QU()V

    return-void
.end method

.method static synthetic f(Lcom/kingroot/kinguser/auu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/auu;->alI:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public PJ()V
    .locals 6

    .prologue
    .line 60
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/auu$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/auu$1;-><init>(Lcom/kingroot/kinguser/auu;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 75
    return-void
.end method

.method public Qt()V
    .locals 0

    .prologue
    .line 106
    invoke-static {}, Lcom/kingroot/kinguser/activitys/SilentInstallSettingActivity;->vw()V

    .line 107
    return-void
.end method

.method public Qu()V
    .locals 0

    .prologue
    .line 111
    invoke-static {}, Lcom/kingroot/kinguser/activitys/SilentInstallAppSettingActivity;->vw()V

    .line 112
    return-void
.end method

.method public R(II)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/auu;->alI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/auu;->alI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agi$c;

    .line 121
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/agi$c;->db(I)V

    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/agi$c;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Lcom/kingroot/kinguser/agy;->p(Ljava/lang/String;I)V

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/auu;->aSV:Lcom/kingroot/kinguser/aul$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aul$b;->Qv()V

    goto :goto_0
.end method

.method public cX(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    if-nez p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/auu;->alI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/auu;->aSX:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->bZ(Z)V

    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/auu;->aSV:Lcom/kingroot/kinguser/aul$b;

    invoke-interface {v0, v2, v2, v2}, Lcom/kingroot/kinguser/aul$b;->a(IZZ)V

    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/auu;->aSV:Lcom/kingroot/kinguser/aul$b;

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/aul$b;->cW(Z)V

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/auu;->aSV:Lcom/kingroot/kinguser/aul$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aul$b;->Qw()V

    .line 98
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aks;->bZ(Z)V

    .line 99
    invoke-static {}, Lcom/kingroot/kinguser/agt;->wb()Lcom/kingroot/kinguser/agt;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/auu;->aSW:Lcom/kingroot/kinguser/advance/install/IInjectCallback;

    invoke-virtual {v0, v1, v3}, Lcom/kingroot/kinguser/agt;->a(Lcom/kingroot/kinguser/advance/install/IInjectCallback;Z)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method
