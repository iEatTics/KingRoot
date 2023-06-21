.class public Lcom/kingroot/kinguser/awc;
.super Lcom/kingroot/kinguser/avj;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/awc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aNa:Lcom/kingroot/kinguser/br;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/kingroot/kinguser/awc$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/awc$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/awc;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const v0, 0x9dac

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;-><init>(I)V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/awc;->mLock:Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awc;->SE()V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/awc$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kingroot/kinguser/awc;-><init>()V

    return-void
.end method

.method public static SB()Lcom/kingroot/kinguser/awc;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/kingroot/kinguser/awc;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/awc;

    return-object v0
.end method

.method private V(II)Z
    .locals 1

    .prologue
    .line 96
    and-int v0, p1, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Y(II)Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingroot/kinguser/awc;->b(IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private b(IIZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p3}, Lcom/kingroot/kinguser/awc;->dl(Z)Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 116
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/aff;->fd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-static {v1, v4}, Lcom/kingroot/kinguser/aab;->k(Ljava/lang/String;I)I

    move-result v1

    .line 127
    if-ne v1, p1, :cond_0

    .line 132
    if-eqz p2, :cond_1

    .line 133
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kQ:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/kingroot/kinguser/aab;->k(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/kingroot/kinguser/awc;->V(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    :cond_1
    :try_start_0
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 147
    :goto_1
    new-instance v4, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;

    iget-object v5, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    iget-object v6, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->jF(Ljava/lang/String;)Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;

    .line 149
    invoke-virtual {v4, v1}, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->hm(I)Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;

    .line 150
    invoke-virtual {v4}, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo$a;->SA()Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    const/4 v1, 0x1

    goto :goto_1

    .line 153
    :cond_2
    return-object v2
.end method

.method private dl(Z)Lcom/kingroot/kinguser/br;
    .locals 2

    .prologue
    .line 192
    iget-object v1, p0, Lcom/kingroot/kinguser/awc;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/awc;->aNa:Lcom/kingroot/kinguser/br;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awc;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/awc;->aNa:Lcom/kingroot/kinguser/br;

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/awc;->aNa:Lcom/kingroot/kinguser/br;

    monitor-exit v1

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public SC()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/awc;->Y(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public SD()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/awc;->Y(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public SE()V
    .locals 6

    .prologue
    .line 219
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/awc$2;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/awc$2;-><init>(Lcom/kingroot/kinguser/awc;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 241
    return-void
.end method

.method public h(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 247
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/kingroot/kinguser/awc;->v(IZ)Ljava/util/List;

    move-result-object v0

    .line 248
    invoke-virtual {p0, v3, v3}, Lcom/kingroot/kinguser/awc;->v(IZ)Ljava/util/List;

    move-result-object v1

    .line 249
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/awc;->v(IZ)Ljava/util/List;

    move-result-object v2

    .line 254
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 255
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 256
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 259
    iget-object v0, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 262
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 265
    iget-object v0, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 267
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 268
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 271
    iget-object v0, v0, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 274
    :cond_5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 276
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 278
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 283
    :cond_7
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/awb;->g(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 284
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/awb;->banRiskAppsAutoStart(Ljava/util/Set;)V

    .line 285
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/awb;->banRiskAppsRoot(Ljava/util/Set;)V

    .line 286
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/awb;->e(Ljava/util/Set;)V

    .line 287
    return-void
.end method

.method public hn(I)Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/awc;->v(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected uy()V
    .locals 2

    .prologue
    .line 203
    iget-object v1, p0, Lcom/kingroot/kinguser/awc;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awc;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/awc;->aNa:Lcom/kingroot/kinguser/br;

    .line 205
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awc;->SE()V

    .line 206
    monitor-exit v1

    .line 208
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public v(IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/kingroot/kinguser/awc;->b(IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
