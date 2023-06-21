.class public Lcom/kingroot/kinguser/ati;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ati$b;,
        Lcom/kingroot/kinguser/ati$a;
    }
.end annotation


# static fields
.field private static volatile aNR:Lcom/kingroot/kinguser/ati;


# instance fields
.field private aGX:Lcom/kingroot/kinguser/bol;

.field private aGY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/kingroot/kinguser/bom;",
            "Ljava/util/Map",
            "<",
            "Lcom/kingroot/kinguser/ati$a;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private aNS:Lcom/kingroot/kinguser/boo;

.field private axW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/kingroot/kinguser/bom;",
            "Ljava/util/Set",
            "<",
            "Lcom/kingroot/kinguser/ati$b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ati;->aGX:Lcom/kingroot/kinguser/bol;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ati;->aGY:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ati;->axW:Ljava/util/Map;

    .line 178
    new-instance v0, Lcom/kingroot/kinguser/ati$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ati$1;-><init>(Lcom/kingroot/kinguser/ati;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ati;->aNS:Lcom/kingroot/kinguser/boo;

    .line 36
    invoke-static {}, Lcom/kingroot/kinguser/bnu;->agu()Lcom/kingroot/kinguser/bol;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ati;->aGX:Lcom/kingroot/kinguser/bol;

    .line 37
    return-void
.end method

.method public static Pb()Lcom/kingroot/kinguser/ati;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/kingroot/kinguser/ati;->aNR:Lcom/kingroot/kinguser/ati;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/kingroot/kinguser/ati;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/ati;->aNR:Lcom/kingroot/kinguser/ati;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/kingroot/kinguser/ati;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ati;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ati;->aNR:Lcom/kingroot/kinguser/ati;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/ati;->aNR:Lcom/kingroot/kinguser/ati;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ati;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/ati;->aGY:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/bom;Lcom/kingroot/kinguser/ati$b;)V
    .locals 2

    .prologue
    .line 139
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ati;->axW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 143
    if-nez v0, :cond_2

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 146
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/kingroot/kinguser/ati;->axW:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ati$b;Lcom/kingroot/kinguser/ati$a;)V
    .locals 10

    .prologue
    .line 111
    .line 114
    :try_start_0
    iget-object v0, p1, Lcom/kingroot/kinguser/ati$b;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ati;->hX(Ljava/lang/String;)Lcom/kingroot/kinguser/bom;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/kingroot/kinguser/ati;->aGX:Lcom/kingroot/kinguser/bol;

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/kingroot/kinguser/ati$b;->url:Ljava/lang/String;

    iget-object v5, p1, Lcom/kingroot/kinguser/ati$b;->savePath:Ljava/lang/String;

    iget-object v6, p1, Lcom/kingroot/kinguser/ati$b;->aNU:Ljava/lang/String;

    iget-object v7, p0, Lcom/kingroot/kinguser/ati;->aNS:Lcom/kingroot/kinguser/boo;

    const-wide/16 v8, -0x1

    invoke-interface/range {v1 .. v9}, Lcom/kingroot/kinguser/bol;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/boo;J)Lcom/kingroot/kinguser/bom;

    move-result-object v0

    .line 117
    sget-object v1, Lcom/kingroot/kinguser/bop;->bFw:Lcom/kingroot/kinguser/bop;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/bom;->a(Lcom/kingroot/kinguser/bop;)V

    .line 118
    sget-object v1, Lcom/kingroot/kinguser/bon;->bFr:Lcom/kingroot/kinguser/bon;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/bom;->a(Lcom/kingroot/kinguser/bon;)V

    .line 120
    invoke-virtual {p0, v0, p2}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/bom;Lcom/kingroot/kinguser/ati$a;)V

    .line 121
    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/bom;Lcom/kingroot/kinguser/ati$b;)V

    .line 122
    iget-object v1, p0, Lcom/kingroot/kinguser/ati;->aGX:Lcom/kingroot/kinguser/bol;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bol;->o(Lcom/kingroot/kinguser/bom;)V

    .line 136
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 126
    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->agF()Z

    .line 128
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/bom;Lcom/kingroot/kinguser/ati$b;)V

    .line 129
    invoke-virtual {p0, v0, p2}, Lcom/kingroot/kinguser/ati;->a(Lcom/kingroot/kinguser/bom;Lcom/kingroot/kinguser/ati$a;)V
    :try_end_0
    .catch Lcom/kingroot/kinguser/bnx; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/bom;Lcom/kingroot/kinguser/ati$a;)V
    .locals 2

    .prologue
    .line 151
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ati;->aGY:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 155
    if-nez v0, :cond_2

    .line 156
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 158
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/kingroot/kinguser/ati;->aGY:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public hX(Ljava/lang/String;)Lcom/kingroot/kinguser/bom;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, v2

    .line 78
    :goto_0
    return-object v1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ati;->aGX:Lcom/kingroot/kinguser/bol;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bol;->agC()Ljava/util/List;

    move-result-object v0

    .line 68
    if-nez v0, :cond_1

    move-object v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 72
    instance-of v0, v1, Lcom/kingroot/kinguser/bom;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 73
    check-cast v0, Lcom/kingroot/kinguser/bom;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    check-cast v1, Lcom/kingroot/kinguser/bom;

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 78
    goto :goto_0
.end method

.method public n(Lcom/kingroot/kinguser/bom;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/ati;->aGX:Lcom/kingroot/kinguser/bol;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/bol;->a(Lcom/kingroot/kinguser/bom;Z)V

    .line 108
    return-void
.end method
