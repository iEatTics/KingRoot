.class Lcom/kingroot/kinguser/afj$a;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private ahL:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/afj$a;->ahL:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/afj$1;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/kingroot/kinguser/afj$a;-><init>()V

    return-void
.end method


# virtual methods
.method public ff(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    :goto_0
    return v0

    .line 131
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/afj$a;->ahL:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 83
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/afj$a;->ahL:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    return-void

    .line 88
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 91
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Eq()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 92
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/arv;->getAllRiskApps()Ljava/util/List;

    move-result-object v3

    .line 94
    if-eqz v1, :cond_2

    .line 95
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 99
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/awc;->SB()Lcom/kingroot/kinguser/awc;

    move-result-object v1

    const/4 v3, -0x1

    .line 100
    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/awc;->hn(I)Ljava/util/List;

    move-result-object v1

    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;

    .line 102
    iget-object v1, v1, Lcom/kingroot/kinguser/net/commoncloudlist/RiskControlInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0

    .line 91
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 104
    :cond_4
    invoke-static {v2}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/asj;->NU()V

    .line 109
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/arv;->removeAppInfos(Ljava/util/List;)V

    .line 113
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/awb;->removeAppInfos(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
