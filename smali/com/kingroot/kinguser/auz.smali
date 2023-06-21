.class public Lcom/kingroot/kinguser/auz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/auz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aTi:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/kingroot/kinguser/auz$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/auz$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/auz;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/auz$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/auz$2;-><init>(Lcom/kingroot/kinguser/auz;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/auz;->aTi:Lcom/kingroot/kinguser/bed;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/auz$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kingroot/kinguser/auz;-><init>()V

    return-void
.end method

.method public static Rc()Lcom/kingroot/kinguser/auz;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/kingroot/kinguser/auz;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/auz;

    return-object v0
.end method

.method private Re()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 127
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->yj()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/adw;->eF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->yf()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->un()I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CM()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 141
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CN()I

    move-result v0

    .line 142
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 148
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CU()J

    move-result-wide v0

    .line 149
    const-wide/32 v4, 0xf731400

    .line 150
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->aY(J)V

    .line 157
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->ym()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tl()Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/adw;->tn()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/adw;->cD(I)V

    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/kingroot/kinguser/adw;->cC(I)V

    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v2

    const-string v3, "kmPlugins.zip"

    invoke-virtual {v2, v1, v3, v0, v6}, Lcom/kingroot/kinguser/adw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/auz;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kingroot/kinguser/auz;->Re()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/auz;ZZ)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/auz;->h(ZZ)V

    return-void
.end method

.method private h(ZZ)V
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CF()Z

    move-result v0

    .line 78
    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeg;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    .line 90
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CH()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    .line 91
    if-eqz p2, :cond_2

    .line 94
    iget v0, v1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->err:I

    if-nez v0, :cond_0

    .line 98
    iget-object v0, v1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, v1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    iget-object v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/kingroot/kinguser/auz$3;

    invoke-direct {v2, p0, v1}, Lcom/kingroot/kinguser/auz$3;-><init>(Lcom/kingroot/kinguser/auz;Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {v1}, Lcom/kingroot/kinguser/aei;->f(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    goto :goto_0

    .line 119
    :cond_3
    invoke-static {v1}, Lcom/kingroot/kinguser/aei;->d(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    goto :goto_0
.end method


# virtual methods
.method public Rd()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/auz;->aTi:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 56
    return-void
.end method
