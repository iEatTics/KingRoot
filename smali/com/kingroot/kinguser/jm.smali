.class public final Lcom/kingroot/kinguser/jm;
.super Lcom/kingroot/kinguser/kc;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/lo;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static te:Lcom/kingroot/kinguser/jm;


# instance fields
.field private tf:Lcom/kingroot/kinguser/lp;

.field private tg:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uranus_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/kingroot/kinguser/jm;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/jm;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/kingroot/kinguser/jm;

    invoke-direct {v0}, Lcom/kingroot/kinguser/jm;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/jm;->te:Lcom/kingroot/kinguser/jm;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/kc;-><init>(Landroid/content/Context;)V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/jm;->tg:J

    .line 45
    return-void
.end method

.method private U(I)Lcom/king/uranus/f;
    .locals 5

    .prologue
    .line 159
    new-instance v0, Lcom/king/uranus/f;

    invoke-direct {v0}, Lcom/king/uranus/f;-><init>()V

    .line 160
    iput p1, v0, Lcom/king/uranus/f;->am:I

    .line 161
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/f;->an:[B

    .line 162
    const/4 v1, 0x0

    iput v1, v0, Lcom/king/uranus/f;->ao:I

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kingroot/kinguser/jm;->cT()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    :try_start_0
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/nk;->c(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/kingroot/kinguser/jm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ja;->a(Landroid/content/Context;Ljava/io/File;)Lcom/kingroot/kinguser/ja;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_1

    .line 179
    iget-object v2, v1, Lcom/kingroot/kinguser/ja;->sQ:[B

    iput-object v2, v0, Lcom/king/uranus/f;->an:[B

    .line 180
    iget v2, v1, Lcom/kingroot/kinguser/ja;->sP:I

    iput v2, v0, Lcom/king/uranus/f;->ao:I

    .line 181
    iget v1, v1, Lcom/kingroot/kinguser/ja;->mVersion:I

    iput v1, v0, Lcom/king/uranus/f;->ar:I

    .line 185
    :cond_1
    return-object v0

    .line 171
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private V(I)Lcom/king/uranus/m;
    .locals 6

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kingroot/kinguser/jm;->cT()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    :try_start_0
    invoke-static {v2, v0}, Lcom/kingroot/kinguser/nk;->c(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/jm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/jm;->cT()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/king/uranus/m;

    invoke-direct {v4}, Lcom/king/uranus/m;-><init>()V

    const-string v5, "UTF-8"

    .line 228
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/jd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/m;

    return-object v0

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/king/uranus/w;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/king/uranus/w;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/ac;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/king/uranus/w;->bz:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p1, Lcom/king/uranus/w;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/B;

    .line 198
    if-eqz v0, :cond_0

    .line 199
    new-instance v3, Lcom/king/uranus/ac;

    invoke-direct {v3}, Lcom/king/uranus/ac;-><init>()V

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/king/uranus/B;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/king/uranus/ac;->cQ:Ljava/lang/String;

    .line 201
    iget-object v4, v3, Lcom/king/uranus/ac;->cQ:Ljava/lang/String;

    iput-object v4, v3, Lcom/king/uranus/ac;->cS:Ljava/lang/String;

    .line 202
    iget v4, v0, Lcom/king/uranus/B;->ao:I

    iput v4, v3, Lcom/king/uranus/ac;->ao:I

    .line 203
    iget-object v0, v0, Lcom/king/uranus/B;->url:Ljava/lang/String;

    iput-object v0, v3, Lcom/king/uranus/ac;->url:Ljava/lang/String;

    .line 204
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_1
    return-object v1
.end method

.method private as()V
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/jm;->tg:J

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/jm;->tf:Lcom/kingroot/kinguser/lp;

    const-string v1, "cloud_list_last_pull_timed"

    iget-wide v2, p0, Lcom/kingroot/kinguser/jm;->tg:J

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/lp;->b(Ljava/lang/String;J)V

    .line 89
    return-void
.end method

.method public static cB()Lcom/kingroot/kinguser/jm;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/kingroot/kinguser/jm;->te:Lcom/kingroot/kinguser/jm;

    return-object v0
.end method

.method private cD()J
    .locals 4

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/kingroot/kinguser/jm;->tg:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/jm;->tf:Lcom/kingroot/kinguser/lp;

    const-string v1, "cloud_list_last_pull_timed"

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/lp;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/jm;->tg:J

    .line 82
    :cond_0
    iget-wide v0, p0, Lcom/kingroot/kinguser/jm;->tg:J

    return-wide v0
.end method

.method private cF()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/king/uranus/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    const v1, 0x9d54

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/jm;->U(I)Lcom/king/uranus/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    const v1, 0x9dc8

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/jm;->U(I)Lcom/king/uranus/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    return-object v0
.end method

.method private e(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/king/uranus/f;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/ac;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/king/uranus/d;

    invoke-direct {v1}, Lcom/king/uranus/d;-><init>()V

    .line 123
    iput-object p1, v1, Lcom/king/uranus/d;->g:Ljava/util/ArrayList;

    .line 126
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 129
    invoke-static {}, Lcom/kingroot/kinguser/nd;->eY()Lcom/kingroot/kinguser/nd;

    move-result-object v3

    .line 128
    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/jc;->a(Landroid/content/Context;Lcom/king/uranus/d;Ljava/util/concurrent/atomic/AtomicReference;Lcom/kingroot/kinguser/jb;)I

    move-result v0

    .line 133
    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/kingroot/kinguser/jm;->as()V

    .line 138
    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/w;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/jm;->a(Lcom/king/uranus/w;)Ljava/util/List;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public T(I)Lcom/king/uranus/m;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/jm;->V(I)Lcom/king/uranus/m;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/kingroot/kinguser/jm;->c()V

    .line 61
    return-object v0
.end method

.method protected a(Lcom/kingroot/kinguser/kf;)V
    .locals 0

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 103
    :cond_0
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/lp;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/jm;->tf:Lcom/kingroot/kinguser/lp;

    .line 56
    return-void
.end method

.method protected b(Lcom/kingroot/kinguser/kf;)V
    .locals 0

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 111
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/kingroot/kinguser/jm;->cC()V

    .line 236
    return-void
.end method

.method public cC()V
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/kingroot/kinguser/jm;->cD()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xdbba00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-super {p0}, Lcom/kingroot/kinguser/kc;->cC()V

    goto :goto_0
.end method

.method protected cE()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/ac;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/kingroot/kinguser/jm;->cF()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/jm;->e(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
