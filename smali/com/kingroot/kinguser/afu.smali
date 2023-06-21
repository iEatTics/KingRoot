.class public Lcom/kingroot/kinguser/afu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/afu$a;,
        Lcom/kingroot/kinguser/afu$b;
    }
.end annotation


# instance fields
.field private ajj:Lcom/tencent/qqpim/discovery/AdRequestData;

.field private ajk:Lcom/kingroot/kinguser/brk;

.field private ajl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpim/discovery/AdDisplayModel;",
            ">;"
        }
    .end annotation
.end field

.field private ajm:Lcom/kingroot/kinguser/afv;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/afu;->ajl:Ljava/util/List;

    .line 53
    invoke-virtual {p0}, Lcom/kingroot/kinguser/afu;->init()V

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/afu$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/kingroot/kinguser/afu;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/afu;)Lcom/kingroot/kinguser/afv;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/afu;->ajm:Lcom/kingroot/kinguser/afv;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/afu;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/kingroot/kinguser/afu;->ajl:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/afu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/afu;->ajl:Ljava/util/List;

    return-object v0
.end method

.method private b(Lcom/tencent/qqpim/discovery/AdDisplayModel;)Z
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    .line 247
    if-eqz p1, :cond_0

    .line 254
    iget-wide v2, p1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJG:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJB:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :goto_0
    move v1, v0

    .line 262
    :goto_1
    if-eqz v1, :cond_0

    .line 264
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apv;->ia(Ljava/lang/String;)Z

    move-result v1

    .line 265
    if-nez v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/kingroot/kinguser/afu;->ajm:Lcom/kingroot/kinguser/afv;

    iget-object v2, p1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJv:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/afv;->fj(Ljava/lang/String;)V

    .line 271
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 255
    goto :goto_0

    .line 257
    :cond_2
    iget v2, p1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJD:I

    int-to-long v2, v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const-wide/32 v2, 0xdbba00

    .line 259
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJG:J

    sub-long/2addr v4, v6

    cmp-long v2, v4, v2

    if-ltz v2, :cond_4

    :goto_3
    move v1, v0

    goto :goto_1

    .line 257
    :cond_3
    iget v2, p1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJD:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    goto :goto_2

    :cond_4
    move v0, v1

    .line 259
    goto :goto_3
.end method

.method static synthetic c(Lcom/kingroot/kinguser/afu;)Lcom/tencent/qqpim/discovery/AdDisplayModel;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/kingroot/kinguser/afu;->vC()Lcom/tencent/qqpim/discovery/AdDisplayModel;

    move-result-object v0

    return-object v0
.end method

.method public static vB()Lcom/kingroot/kinguser/afu;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/kingroot/kinguser/afu$b;->vD()Lcom/kingroot/kinguser/afu;

    move-result-object v0

    return-object v0
.end method

.method private vC()Lcom/tencent/qqpim/discovery/AdDisplayModel;
    .locals 4

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/afu;->ajl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 231
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/discovery/AdDisplayModel;

    .line 233
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/afu;->b(Lcom/tencent/qqpim/discovery/AdDisplayModel;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/tencent/qqpim/discovery/AdDisplayModel;)V
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/bre;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/afu;->ajk:Lcom/kingroot/kinguser/brk;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/brk;->b(Landroid/view/View;Lcom/tencent/qqpim/discovery/AdDisplayModel;)V

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/afu$a;)V
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lcom/kingroot/kinguser/bre;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/afu;->ajk:Lcom/kingroot/kinguser/brk;

    new-instance v1, Lcom/kingroot/kinguser/afu$2;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/afu$2;-><init>(Lcom/kingroot/kinguser/afu;Lcom/kingroot/kinguser/afu$a;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/brk;->a(Lcom/kingroot/kinguser/brd;)V

    .line 219
    iget-object v0, p0, Lcom/kingroot/kinguser/afu;->ajk:Lcom/kingroot/kinguser/brk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brk;->ahE()V

    goto :goto_0
.end method

.method public a(ZLcom/kingroot/kinguser/afu$a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-static {}, Lcom/kingroot/kinguser/bre;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    if-eqz p2, :cond_0

    .line 84
    const/4 v0, -0x1

    invoke-interface {p2, v0}, Lcom/kingroot/kinguser/afu$a;->cT(I)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FV()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/afu;->ajk:Lcom/kingroot/kinguser/brk;

    new-instance v1, Lcom/kingroot/kinguser/afu$1;

    invoke-direct {v1, p0, p2}, Lcom/kingroot/kinguser/afu$1;-><init>(Lcom/kingroot/kinguser/afu;Lcom/kingroot/kinguser/afu$a;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/brk;->a(Lcom/kingroot/kinguser/brd;)V

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/afu;->ajk:Lcom/kingroot/kinguser/brk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brk;->ahC()V

    .line 161
    const/16 v1, 0x8

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0, v4, v4}, Lcom/kingroot/kinguser/aea;->b(IIII)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FY()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/uv;->kM()Lcom/kingroot/kinguser/uv;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/afv$a;->vE()Lcom/kingroot/kinguser/afv$a;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/afv;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/uv;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/afv;

    iput-object v0, p0, Lcom/kingroot/kinguser/afu;->ajm:Lcom/kingroot/kinguser/afv;

    .line 65
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/bre;->n(Landroid/content/Context;I)V

    .line 66
    invoke-static {v3}, Lcom/kingroot/kinguser/bre;->eD(Z)V

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/bre;->ahy()Lcom/kingroot/kinguser/bre;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/afy;

    invoke-direct {v1}, Lcom/kingroot/kinguser/afy;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bre;->a(Lcom/kingroot/kinguser/bri;)V

    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/bre;->ahy()Lcom/kingroot/kinguser/bre;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/afx;

    invoke-direct {v1}, Lcom/kingroot/kinguser/afx;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bre;->a(Lcom/kingroot/kinguser/brh;)V

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/bre;->ahy()Lcom/kingroot/kinguser/bre;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/afw;

    invoke-direct {v1}, Lcom/kingroot/kinguser/afw;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bre;->a(Lcom/kingroot/kinguser/brg;)V

    .line 71
    new-instance v0, Lcom/tencent/qqpim/discovery/AdRequestData;

    invoke-direct {v0}, Lcom/tencent/qqpim/discovery/AdRequestData;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/afu;->ajj:Lcom/tencent/qqpim/discovery/AdRequestData;

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/afu;->ajj:Lcom/tencent/qqpim/discovery/AdRequestData;

    const v1, 0x55d4e69

    iput v1, v0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/afu;->ajj:Lcom/tencent/qqpim/discovery/AdRequestData;

    iput v4, v0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJL:I

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/afu;->ajj:Lcom/tencent/qqpim/discovery/AdRequestData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJM:Ljava/util/ArrayList;

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/afu;->ajj:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget-object v0, v0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJM:Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v0, Lcom/kingroot/kinguser/brk;

    iget-object v1, p0, Lcom/kingroot/kinguser/afu;->ajj:Lcom/tencent/qqpim/discovery/AdRequestData;

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/brk;-><init>(Lcom/tencent/qqpim/discovery/AdRequestData;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/afu;->ajk:Lcom/kingroot/kinguser/brk;

    .line 78
    invoke-static {v4, v3, v3}, Lcom/kingroot/kinguser/aea;->g(III)V

    goto :goto_0
.end method
