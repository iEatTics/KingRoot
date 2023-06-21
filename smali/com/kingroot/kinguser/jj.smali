.class final Lcom/kingroot/kinguser/jj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/kingroot/kinguser/jj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/jj;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static S(I)Lcom/king/uranus/bd;
    .locals 5

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 69
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 70
    invoke-static {p0}, Lcom/kingroot/kinguser/lh;->af(I)Lcom/king/uranus/bd;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    .line 80
    :cond_0
    return-object v0

    .line 75
    :cond_1
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static a(Lcom/kingroot/kinguser/jh$a;Lcom/kingroot/kinguser/hz;Z)V
    .locals 4

    .prologue
    .line 149
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Lcom/kingroot/kinguser/if;->bG()Ljava/lang/String;

    move-result-object v0

    .line 153
    if-eqz p2, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/kingroot/kinguser/hz;->bn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/kl;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 163
    :goto_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/hz;->bq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 165
    new-instance v3, Lcom/kingroot/kinguser/jw;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/jw;-><init>(Lcom/kingroot/kinguser/it;)V

    .line 168
    :try_start_0
    invoke-virtual {v2}, Lcom/kingroot/kinguser/if;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3, v0, v2}, Lcom/kingroot/kinguser/jw;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    :cond_0
    :goto_1
    const-class v0, Lcom/kingroot/kinguser/hm;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hm;

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/hm;->h(Ljava/util/List;)I

    .line 180
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/jh$a;->aK(Ljava/lang/String;)Lcom/kingroot/kinguser/jh$a;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lcom/kingroot/kinguser/hz;->bo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/jh$a;->aL(Ljava/lang/String;)Lcom/kingroot/kinguser/jh$a;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lcom/kingroot/kinguser/hz;->bp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/jh$a;->aM(Ljava/lang/String;)Lcom/kingroot/kinguser/jh$a;

    .line 183
    return-void

    .line 157
    :cond_1
    invoke-virtual {p1}, Lcom/kingroot/kinguser/hz;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/kl;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static aN(Ljava/lang/String;)Lcom/kingroot/kinguser/kj;
    .locals 1

    .prologue
    .line 84
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/jj;->d(Ljava/lang/String;I)Lcom/kingroot/kinguser/kj;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/kingroot/kinguser/hi;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/hi;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/bd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-interface {p0}, Lcom/kingroot/kinguser/hi;->aZ()Lcom/kingroot/kinguser/hh;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {v0}, Lcom/kingroot/kinguser/hh;->aX()I

    move-result v2

    .line 41
    if-lez v2, :cond_1

    .line 43
    invoke-static {v2}, Lcom/kingroot/kinguser/lh;->af(I)Lcom/king/uranus/bd;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    :goto_0
    return-object v1

    .line 49
    :cond_1
    check-cast v0, Lcom/kingroot/kinguser/lr;

    invoke-static {v0}, Lcom/kingroot/kinguser/lh;->a(Lcom/kingroot/kinguser/lr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static c(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/jj;->d(Ljava/lang/String;I)Lcom/kingroot/kinguser/kj;

    move-result-object v1

    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/ju;->cK()Lcom/kingroot/kinguser/ju;

    move-result-object v2

    .line 59
    new-instance v3, Lcom/kingroot/kinguser/mc;

    invoke-direct {v3}, Lcom/kingroot/kinguser/mc;-><init>()V

    const-class v0, Lcom/kingroot/kinguser/it;

    .line 60
    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 59
    invoke-interface {v2, v1, v3, v0}, Lcom/kingroot/kinguser/js;->a(Lcom/kingroot/kinguser/jr;Lcom/kingroot/kinguser/jq;Lcom/kingroot/kinguser/it;)Lcom/kingroot/kinguser/ha;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Lcom/kingroot/kinguser/ha;->aJ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static cv()Lcom/kingroot/kinguser/kq;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kingroot/kinguser/jj;->i(Z)Lcom/kingroot/kinguser/kq;

    move-result-object v0

    return-object v0
.end method

.method static cw()Lcom/kingroot/kinguser/kq;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kingroot/kinguser/jj;->i(Z)Lcom/kingroot/kinguser/kq;

    move-result-object v0

    return-object v0
.end method

.method static d(Ljava/lang/String;I)Lcom/kingroot/kinguser/kj;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 93
    const-class v0, Lcom/kingroot/kinguser/lm;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/lm;

    .line 95
    if-lez p1, :cond_0

    .line 96
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/lm;->ai(I)I

    move-result v0

    .line 100
    :goto_0
    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 102
    :goto_1
    invoke-static {v0}, Lcom/kingroot/kinguser/jj;->i(Z)Lcom/kingroot/kinguser/kq;

    move-result-object v1

    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bt()I

    move-result v4

    .line 104
    new-instance v0, Lcom/kingroot/kinguser/kj;

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/kj;-><init>(Lcom/kingroot/kinguser/kq;Ljava/lang/String;III)V

    return-object v0

    .line 98
    :cond_0
    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/lm;->bc(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v5

    .line 100
    goto :goto_1
.end method

.method private static i(Z)Lcom/kingroot/kinguser/kq;
    .locals 6

    .prologue
    .line 116
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v1

    .line 119
    if-eqz p0, :cond_1

    .line 120
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bA()Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/la;->dp()Lcom/kingroot/kinguser/la;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/la;->bJ()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {}, Lcom/kingroot/kinguser/lh;->getName()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-static {}, Lcom/kingroot/kinguser/jh;->cu()Lcom/kingroot/kinguser/jh$a;

    move-result-object v4

    .line 130
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/jh$a;->aH(Ljava/lang/String;)Lcom/kingroot/kinguser/jh$a;

    move-result-object v5

    .line 131
    invoke-virtual {v5, v3}, Lcom/kingroot/kinguser/jh$a;->aI(Ljava/lang/String;)Lcom/kingroot/kinguser/jh$a;

    move-result-object v3

    const/16 v5, 0x28

    .line 132
    invoke-virtual {v3, v5}, Lcom/kingroot/kinguser/jh$a;->R(I)Lcom/kingroot/kinguser/jh$a;

    move-result-object v3

    .line 133
    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/jh$a;->aJ(Ljava/lang/String;)Lcom/kingroot/kinguser/jh$a;

    .line 136
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bL()Lcom/kingroot/kinguser/hz;

    move-result-object v2

    .line 137
    if-eqz v2, :cond_0

    .line 138
    invoke-static {v4, v2, p0}, Lcom/kingroot/kinguser/jj;->a(Lcom/kingroot/kinguser/jh$a;Lcom/kingroot/kinguser/hz;Z)V

    .line 142
    :cond_0
    invoke-virtual {v4}, Lcom/kingroot/kinguser/jh$a;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    new-instance v3, Lcom/kingroot/kinguser/kq;

    const-string v4, "_Z5startiPc"

    .line 144
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/kingroot/kinguser/kq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-object v3

    .line 122
    :cond_1
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bz()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
