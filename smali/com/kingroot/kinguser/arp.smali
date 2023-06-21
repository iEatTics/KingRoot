.class public Lcom/kingroot/kinguser/arp;
.super Lcom/kingroot/kinguser/arl;
.source "SourceFile"


# instance fields
.field private final aLZ:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/kingroot/kinguser/atz;",
            ">;"
        }
    .end annotation
.end field

.field private aMa:J

.field private aMb:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/arl;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/arp;->aLZ:Ljava/util/Collection;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/arp;->aMa:J

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/arp;->aMb:I

    return-void
.end method


# virtual methods
.method public LY()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/kingroot/kinguser/arl;->LY()V

    .line 69
    return-void
.end method

.method protected MG()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lcom/kingroot/kinguser/arp;->aMb:I

    .line 35
    iput-wide v8, p0, Lcom/kingroot/kinguser/arp;->aMa:J

    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/arp;->aLZ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;->Ou()Ljava/util/Map;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/kingroot/kinguser/asm;->Od()Lcom/kingroot/kinguser/asm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/asm;->Oe()Ljava/util/List;

    move-result-object v3

    .line 45
    invoke-static {}, Lcom/kingroot/kinguser/ake;->Al()Lcom/kingroot/kinguser/ake;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/ake;->Ak()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/arp;->aLZ:Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/arp;->aLZ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/arp;->aMb:I

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/arp;->aLZ:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/atz;

    .line 59
    iget-wide v4, p0, Lcom/kingroot/kinguser/arp;->aMa:J

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atz;->PF()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/kingroot/kinguser/arp;->aMa:J

    goto :goto_1

    .line 62
    :cond_2
    iget-wide v2, p0, Lcom/kingroot/kinguser/arp;->aMa:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/kingroot/kinguser/arp;->aMb:I

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method protected MH()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 73
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 102
    :cond_0
    return v6

    .line 77
    :cond_1
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    .line 78
    const-string v0, "activity"

    .line 79
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 80
    iget-object v1, p0, Lcom/kingroot/kinguser/arp;->aLZ:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/atz;

    .line 81
    iget v4, v1, Lcom/kingroot/kinguser/atz;->mFlag:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 84
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/aie;->xx()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/aie;->xw()Lcom/kingroot/kinguser/aie;

    move-result-object v4

    iget-object v1, v1, Lcom/kingroot/kinguser/atz;->adZ:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/kingroot/kinguser/aie;->eh(Ljava/lang/String;)Z

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aie;->xw()Lcom/kingroot/kinguser/aie;

    move-result-object v4

    iget-object v5, v1, Lcom/kingroot/kinguser/atz;->adZ:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lcom/kingroot/kinguser/aie;->n(Landroid/content/Context;Ljava/lang/String;)Z

    .line 91
    iget-object v1, v1, Lcom/kingroot/kinguser/atz;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v1, v1, Lcom/kingroot/kinguser/atz;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public No()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/kingroot/kinguser/arp;->aMa:J

    return-wide v0
.end method
