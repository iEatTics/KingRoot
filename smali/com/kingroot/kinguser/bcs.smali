.class public Lcom/kingroot/kinguser/bcs;
.super Lcom/kingroot/kinguser/bcq;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bcs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private biF:Lcom/kingroot/kinguser/arv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/kingroot/kinguser/bcs$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bcs$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bcs;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcq;-><init>()V

    .line 43
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bcs;->biF:Lcom/kingroot/kinguser/arv;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bcs$1;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcs;-><init>()V

    return-void
.end method

.method public static Yc()Lcom/kingroot/kinguser/bcs;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/kingroot/kinguser/bcs;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bcs;

    return-object v0
.end method

.method private Yd()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 110
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    .line 111
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/kingroot/kinguser/aio;->d(Lcom/kingroot/kinguser/abc;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final XO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const-string v0, "riskapp"

    return-object v0
.end method

.method protected dE(Z)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/bdh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/awc;->SB()Lcom/kingroot/kinguser/awc;

    move-result-object v0

    const/16 v2, 0x8

    .line 64
    invoke-virtual {v0, v2, p1}, Lcom/kingroot/kinguser/awc;->v(IZ)Ljava/util/List;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 68
    new-instance v3, Lcom/kingroot/kinguser/bdh;

    invoke-direct {v3}, Lcom/kingroot/kinguser/bdh;-><init>()V

    .line 69
    iget-object v4, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/kingroot/kinguser/bdh;->name:Ljava/lang/String;

    .line 70
    iget v4, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->aUI:I

    iput v4, v3, Lcom/kingroot/kinguser/bdh;->level:I

    .line 71
    iget-object v4, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->riskDescription:Ljava/lang/String;

    iput-object v4, v3, Lcom/kingroot/kinguser/bdh;->desc:Ljava/lang/String;

    .line 73
    iget-object v0, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/arv;->NC()Ljava/util/List;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;

    .line 81
    new-instance v3, Lcom/kingroot/kinguser/bdh;

    invoke-direct {v3}, Lcom/kingroot/kinguser/bdh;-><init>()V

    .line 82
    invoke-virtual {v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->Nw()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/bdh;->name:Ljava/lang/String;

    .line 83
    invoke-virtual {v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->Nx()I

    move-result v4

    iput v4, v3, Lcom/kingroot/kinguser/bdh;->level:I

    .line 84
    invoke-virtual {v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->Ny()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/bdh;->desc:Ljava/lang/String;

    .line 86
    invoke-virtual {v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;->Nw()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 90
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bcs;->k(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 97
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bcs;->l(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-direct {p0}, Lcom/kingroot/kinguser/bcs;->Yd()Z

    move-result v2

    if-nez v2, :cond_3

    .line 100
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 105
    :cond_3
    return-object v1
.end method

.method protected i(Ljava/util/List;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 184
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return v2

    .line 189
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    invoke-static {v0}, Lcom/kingroot/kinguser/aff;->fe(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    invoke-static {v0}, Lcom/kingroot/kinguser/aff;->fb(Ljava/lang/String;)Z

    .line 207
    :cond_1
    :goto_2
    invoke-static {v0}, Lcom/kingroot/kinguser/aff;->fc(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 208
    invoke-static {v0}, Lcom/kingroot/kinguser/aff;->eZ(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_3
    and-int/2addr v0, v1

    :goto_4
    move v1, v0

    .line 210
    goto :goto_1

    .line 193
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v6

    .line 194
    const/4 v4, 0x0

    .line 196
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v6, v0, v7}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 202
    :goto_5
    if-eqz v4, :cond_1

    .line 203
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/kingroot/kinguser/aff;->V(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move v0, v3

    .line 208
    goto :goto_3

    :cond_4
    move v2, v1

    .line 211
    goto :goto_0

    .line 197
    :catch_0
    move-exception v6

    goto :goto_5

    .line 199
    :catch_1
    move-exception v6

    goto :goto_5

    :cond_5
    move v0, v1

    goto :goto_4
.end method

.method public k(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 122
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_1
    return-object v1
.end method

.method public kE(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bcq;->kE(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/bcs;->biF:Lcom/kingroot/kinguser/arv;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/arv;->markTreatedRiskApps(Ljava/util/List;)V

    .line 150
    return-void
.end method

.method public l(Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 134
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/afp;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0

    .line 143
    :cond_1
    return-object v1
.end method
