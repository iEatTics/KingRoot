.class public Lcom/kingroot/kinguser/bft;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bnd:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/kingroot/kinguser/bft$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bft$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bft;->bnd:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bft$1;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/kinguser/bft;-><init>()V

    return-void
.end method

.method public static aaL()Lcom/kingroot/kinguser/bft;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/kingroot/kinguser/bft;->bnd:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bft;

    return-object v0
.end method


# virtual methods
.method public a(ZJ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Lcom/kingroot/kinguser/bfu;->ws()Ljava/util/List;

    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 42
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 45
    iget-boolean v3, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    if-eq v3, p1, :cond_1

    .line 46
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 50
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-eqz v3, :cond_0

    iget-wide v4, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnv:J

    invoke-static {v4, v5, p2, p3}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    const-wide v4, 0x1cf7c5800L

    cmp-long v3, p2, v4

    if-nez v3, :cond_2

    .line 53
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bft;->d(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    .line 55
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 60
    :cond_3
    return-object v1
.end method

.method public aaJ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/kingroot/kinguser/bfv;->aaJ()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public aaM()V
    .locals 0

    .prologue
    .line 139
    invoke-static {}, Lcom/kingroot/kinguser/bfv;->aaR()I

    .line 140
    return-void
.end method

.method public addRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V
    .locals 0

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {p1}, Lcom/kingroot/kinguser/bfv;->a(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)J

    goto :goto_0
.end method

.method public bR(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 95
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bft;->e(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method

.method public c(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfu;->li(Ljava/lang/String;)Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    .line 67
    invoke-static {p1}, Lcom/kingroot/kinguser/bfu;->f(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)J

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bft;->e(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V

    goto :goto_0
.end method

.method public d(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    .locals 0

    .prologue
    .line 75
    invoke-static {p1}, Lcom/kingroot/kinguser/bfu;->h(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)I

    .line 76
    return-void
.end method

.method public dP(Z)V
    .locals 0

    .prologue
    .line 89
    invoke-static {p1}, Lcom/kingroot/kinguser/bfu;->dR(Z)I

    .line 90
    return-void
.end method

.method public deleteRule(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)V
    .locals 0

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {p1}, Lcom/kingroot/kinguser/bfv;->b(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)J

    goto :goto_0
.end method

.method public e(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    .locals 6

    .prologue
    .line 104
    iget-object v0, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfu;->li(Ljava/lang/String;)Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    .line 107
    iget-boolean v1, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    iput-boolean v1, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    .line 109
    iget v1, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    if-lez v1, :cond_0

    .line 110
    iget v1, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    iget v2, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    .line 111
    iget v1, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    const/16 v2, 0x3e7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    .line 113
    :cond_0
    iget-wide v2, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnv:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 114
    iget-wide v2, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnv:J

    iput-wide v2, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnv:J

    .line 116
    :cond_1
    invoke-static {v0}, Lcom/kingroot/kinguser/bfu;->g(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)J

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_2
    invoke-static {p1}, Lcom/kingroot/kinguser/bfu;->f(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)J

    goto :goto_0
.end method

.method public lh(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {p1}, Lcom/kingroot/kinguser/bfu;->lj(Ljava/lang/String;)I

    goto :goto_0
.end method
