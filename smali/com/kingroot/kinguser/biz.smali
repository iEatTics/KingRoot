.class public Lcom/kingroot/kinguser/biz;
.super Lcom/kingroot/kinguser/bje;
.source "SourceFile"


# instance fields
.field final aWl:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bvk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private bvl:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private bvm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private bvn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bvo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bvp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private bvq:Lcom/kingroot/kinguser/arv;

.field private bvr:Lcom/kingroot/kinguser/bjh;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/kingroot/kinguser/bje;-><init>()V

    .line 70
    new-instance v0, Lcom/kingroot/kinguser/biz$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/biz$1;-><init>(Lcom/kingroot/kinguser/biz;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/biz;->aWl:Ljava/util/Comparator;

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/bjh;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bjh;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/biz;->bvr:Lcom/kingroot/kinguser/bjh;

    .line 52
    return-void
.end method

.method private a(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;Ljava/util/List;Ljava/util/Map;Lcom/kingroot/kinguser/arv;)V
    .locals 7
    .param p1    # Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/kingroot/kinguser/arv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
            ">;",
            "Lcom/kingroot/kinguser/arv;",
            ")V"
        }
    .end annotation

    .prologue
    const v6, 0x7f07008e

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 182
    invoke-virtual {p1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p4, v3}, Lcom/kingroot/kinguser/arv;->getRiskType(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/avu;->hi(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 189
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v1, v6, v2}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 197
    if-eqz v0, :cond_0

    .line 199
    iget-object v1, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUH:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 200
    if-nez v1, :cond_3

    .line 201
    invoke-static {v3}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 208
    :cond_3
    if-eqz v1, :cond_0

    .line 209
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 210
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->riskDescription:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-virtual {v1, v6, v2}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->setDescription(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static a(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 243
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adr()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 86
    invoke-super {p0}, Lcom/kingroot/kinguser/bje;->adr()Z

    .line 88
    invoke-virtual {p0}, Lcom/kingroot/kinguser/biz;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 89
    if-nez v2, :cond_0

    .line 130
    :goto_0
    return v0

    .line 98
    :cond_0
    const/16 v3, 0x40

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 103
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/biz;->bY(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/biz;->bvk:Ljava/util/List;

    .line 104
    iget-object v2, p0, Lcom/kingroot/kinguser/biz;->bvk:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/biz;->bvl:Ljava/util/Iterator;

    .line 106
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/kingroot/kinguser/biz;->bvn:Ljava/util/Set;

    .line 109
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->Eq()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    move v0, v1

    .line 110
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/biz;->bvq:Lcom/kingroot/kinguser/arv;

    .line 111
    iget-object v2, p0, Lcom/kingroot/kinguser/biz;->bvq:Lcom/kingroot/kinguser/arv;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/arv;->getAllRiskApps()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/biz;->bvo:Ljava/util/List;

    .line 113
    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/biz;->bvn:Ljava/util/Set;

    iget-object v2, p0, Lcom/kingroot/kinguser/biz;->bvo:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 118
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/awc;->SB()Lcom/kingroot/kinguser/awc;

    move-result-object v0

    const/4 v2, 0x2

    .line 119
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/awc;->hn(I)Ljava/util/List;

    move-result-object v0

    .line 120
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kingroot/kinguser/biz;->bvp:Ljava/util/HashMap;

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 122
    iget-object v3, p0, Lcom/kingroot/kinguser/biz;->bvn:Ljava/util/Set;

    iget-object v4, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v3, p0, Lcom/kingroot/kinguser/biz;->bvp:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 127
    :cond_3
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/biy;->by(Landroid/content/Context;)Z

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/biz;->bvm:Ljava/util/List;

    move v0, v1

    .line 130
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public ads()Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/biz;->bvl:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 141
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/biz;->h(Landroid/content/pm/PackageInfo;)Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_1

    .line 150
    invoke-virtual {v2}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/biz;->lX(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->aC(Z)V

    .line 151
    invoke-static {v0}, Lcom/kingroot/kinguser/biz;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->aB(Z)V

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/biz;->bvn:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/biz;->bvn:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->aD(Z)V

    .line 155
    iget-object v0, p0, Lcom/kingroot/kinguser/biz;->bvo:Ljava/util/List;

    iget-object v1, p0, Lcom/kingroot/kinguser/biz;->bvp:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/kingroot/kinguser/biz;->bvq:Lcom/kingroot/kinguser/arv;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/kingroot/kinguser/biz;->a(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;Ljava/util/List;Ljava/util/Map;Lcom/kingroot/kinguser/arv;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/biz;->bvm:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1
    return-object v2

    .line 149
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public adt()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/biz;->bvk:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/biz;->bvk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public adu()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/biz;->bvm:Ljava/util/List;

    return-object v0
.end method

.method public adv()V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Lcom/kingroot/kinguser/bjg;

    const-string v1, "autostart_snapshot.conf"

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bjg;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kingroot/kinguser/biz;->bvm:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjg;->t(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method protected h(Landroid/content/pm/PackageInfo;)Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/biz;->bvr:Lcom/kingroot/kinguser/bjh;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bjh;->k(Landroid/content/pm/PackageInfo;)Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->populate()V

    .line 60
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adz()I

    move-result v1

    if-nez v1, :cond_1

    .line 61
    const/4 v0, 0x0

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->ady()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/biz;->aWl:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/biz;->bvl:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/biz;->bvl:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
