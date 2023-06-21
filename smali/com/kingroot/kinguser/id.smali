.class public Lcom/kingroot/kinguser/id;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/il;


# instance fields
.field protected cF:I

.field protected rk:Ljava/lang/String;

.field private rl:Lcom/king/uranus/g;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/king/uranus/g;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/id;->rl:Lcom/king/uranus/g;

    .line 53
    iput p1, p0, Lcom/kingroot/kinguser/id;->cF:I

    .line 54
    iput-object p2, p0, Lcom/kingroot/kinguser/id;->rk:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/kingroot/kinguser/id;->rl:Lcom/king/uranus/g;

    .line 56
    return-void
.end method

.method private N(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exeFile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jarFile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_0
    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/king/uranus/o;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bG()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget v1, p2, Lcom/king/uranus/o;->be:I

    .line 85
    iget-object v2, p2, Lcom/king/uranus/o;->bg:Ljava/lang/String;

    .line 89
    iget-object v3, p2, Lcom/king/uranus/o;->url:Ljava/lang/String;

    new-instance v4, Lcom/kingroot/kinguser/kg;

    new-instance v5, Lcom/kingroot/kinguser/ie;

    invoke-direct {v5, p0, v1, v2}, Lcom/kingroot/kinguser/ie;-><init>(Lcom/kingroot/kinguser/id;ILjava/lang/String;)V

    invoke-direct {v4, p1, v0, v5}, Lcom/kingroot/kinguser/kg;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/kg$a;)V

    invoke-static {v3, p3, v4}, Lcom/kingroot/kinguser/id;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/kg;)V

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    const-string v0, ""

    .line 183
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 185
    invoke-static {p2, p3}, Lcom/kingroot/kinguser/id;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    :goto_0
    return-object v0

    .line 186
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 188
    invoke-static {p2, p3}, Lcom/kingroot/kinguser/id;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(II)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/id;->rl:Lcom/king/uranus/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/id;->rk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/id;->rk:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/id;->rl:Lcom/king/uranus/g;

    iget v1, v1, Lcom/king/uranus/g;->av:I

    move v3, p1

    move v4, v2

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/hu;->a(Ljava/lang/String;IIIII)Lcom/king/uranus/j;

    move-result-object v0

    .line 163
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 167
    new-instance v0, Lcom/king/uranus/k;

    invoke-direct {v0}, Lcom/king/uranus/k;-><init>()V

    .line 168
    iput-object v6, v0, Lcom/king/uranus/k;->aL:Ljava/util/ArrayList;

    .line 169
    invoke-static {v0}, Lcom/king/uranus/N;->a(Lcom/king/uranus/k;)V

    .line 172
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/id;II)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/id;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/id;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/id;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/kg;)V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v1, Lcom/kingroot/kinguser/ij;

    invoke-direct {v1, p1, p0}, Lcom/kingroot/kinguser/ij;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p2, v0}, Lcom/kingroot/kinguser/kg;->n(Ljava/util/List;)V

    .line 129
    return-void
.end method

.method private static av(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-object v0

    .line 274
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 281
    const/16 v2, 0x2f

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/dalvik-cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/dalvik-cache/arm/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/dalvik-cache/arm64/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static aw(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 291
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v2

    .line 295
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    const-string v0, "chown %d.%d %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 298
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p0, v4, v6

    .line 297
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    const-string v0, "chmod 0%o %s"

    new-array v4, v6, [Ljava/lang/Object;

    const/16 v5, 0x1ed

    .line 301
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p0, v4, v3

    .line 300
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 304
    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/it;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 305
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    move v1, v2

    .line 307
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 308
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ix$b;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ix$b;->co()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 315
    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/id;ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/id;->c(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/kingroot/kinguser/ik;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingroot/kinguser/ik;-><init>(Lcom/kingroot/kinguser/id;ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ik;->ez()Z

    .line 216
    return-void
.end method

.method private c(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 222
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 223
    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/it;->h(Z)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 263
    :goto_0
    return v0

    .line 230
    :cond_0
    invoke-static {p2}, Lcom/kingroot/kinguser/id;->aw(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 232
    goto :goto_0

    .line 235
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/id;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 238
    goto :goto_0

    .line 242
    :cond_2
    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ix$b;->co()Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v3

    .line 255
    :goto_1
    if-ne p1, v3, :cond_4

    .line 256
    invoke-static {p2}, Lcom/kingroot/kinguser/id;->av(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 257
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    goto :goto_2

    .line 249
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move v0, v2

    .line 263
    goto :goto_0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    const-string v0, "export CLASSPATH=%s && /system/bin/app_process /system/bin %s"

    .line 134
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-object p0

    :cond_0
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/king/uranus/cS;)I
    .locals 2

    .prologue
    .line 61
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/king/uranus/o;

    if-nez v0, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x2

    .line 69
    :goto_0
    return v0

    .line 65
    :cond_1
    check-cast p1, Lcom/king/uranus/o;

    .line 67
    iget v0, p1, Lcom/king/uranus/o;->be:I

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/id;->N(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lcom/kingroot/kinguser/id;->a(Landroid/content/Context;Lcom/king/uranus/o;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
