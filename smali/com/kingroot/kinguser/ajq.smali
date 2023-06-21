.class public Lcom/kingroot/kinguser/ajq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lcom/kingroot/kinguser/ady;->d(Ljava/lang/String;II)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v3

    invoke-virtual {v3, v1, v4, v0}, Lcom/kingroot/kinguser/ady;->d(Ljava/lang/String;II)V

    goto :goto_1

    .line 97
    :cond_3
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eq v0, v5, :cond_4

    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4, v0}, Lcom/kingroot/kinguser/ady;->d(Ljava/lang/String;II)V

    goto :goto_2

    .line 106
    :cond_5
    return-void
.end method


# virtual methods
.method public g(ZZ)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 37
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/avs;->RY()Lcom/kingroot/kinguser/avs;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v8}, Lcom/kingroot/kinguser/avs;->hb(I)Ljava/util/List;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v8}, Lcom/kingroot/kinguser/avs;->hd(I)Ljava/util/List;

    move-result-object v2

    .line 45
    invoke-virtual {v0, v8}, Lcom/kingroot/kinguser/avs;->hc(I)Ljava/util/List;

    move-result-object v3

    .line 46
    if-nez p1, :cond_1

    .line 48
    const-string v4, "/system/bin/su"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v4, "/system/xbin/su"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_1
    new-instance v4, Ljava/lang/String;

    const-string v5, "656D6461656D6F6E"

    invoke-static {v5}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 57
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 61
    new-instance v7, Lcom/kingroot/kinguser/ajp;

    invoke-direct {v7}, Lcom/kingroot/kinguser/ajp;-><init>()V

    .line 62
    invoke-virtual {v7, v1, v3, v4}, Lcom/kingroot/kinguser/ajp;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 64
    invoke-static {v2, v5}, Lcom/kingroot/kinguser/ajo;->b(Ljava/util/List;Ljava/util/Map;)V

    .line 67
    if-eqz p2, :cond_2

    .line 68
    invoke-virtual {v0, v8}, Lcom/kingroot/kinguser/avs;->ha(I)Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/ajv;->zD()Lcom/kingroot/kinguser/ajv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/ajv;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 72
    :cond_2
    invoke-direct {p0, v4, v5, v6}, Lcom/kingroot/kinguser/ajq;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method
