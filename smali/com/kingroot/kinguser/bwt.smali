.class public Lcom/kingroot/kinguser/bwt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bwt$a;
    }
.end annotation


# static fields
.field private static final bRb:Lcom/kingroot/kinguser/bzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/bzc",
            "<",
            "Lcom/kingroot/kinguser/bwt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bSF:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/kingroot/kinguser/bwt$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bwt$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bwt;->bRb:Lcom/kingroot/kinguser/bzc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bwt;->bSF:Z

    return-void
.end method

.method private static M(Ljava/io/File;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 181
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 182
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 183
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 192
    :goto_0
    return-wide v0

    .line 188
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 189
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic N(Ljava/io/File;)J
    .locals 2

    .prologue
    .line 32
    invoke-static {p0}, Lcom/kingroot/kinguser/bwt;->M(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static aiV()Lcom/kingroot/kinguser/bwt;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/kingroot/kinguser/bwt;->bRb:Lcom/kingroot/kinguser/bzc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bwt;

    return-object v0
.end method

.method private aiX()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/byi;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 141
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 143
    iget-object v2, p0, Lcom/kingroot/kinguser/bwt;->mContext:Landroid/content/Context;

    const-string v3, "turingmm"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 144
    if-nez v2, :cond_1

    .line 177
    :cond_0
    return-object v0

    .line 148
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 154
    if-eqz v2, :cond_0

    .line 159
    new-instance v3, Lcom/kingroot/kinguser/bwt$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bwt$2;-><init>(Lcom/kingroot/kinguser/bwt;)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 167
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 169
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/kingroot/kinguser/bwt;->nv(Ljava/lang/String;)Lcom/kingroot/kinguser/byi;

    move-result-object v5

    .line 170
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v5

    .line 173
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    goto :goto_1
.end method

.method private at(II)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bwt;->av(II)Ljava/lang/String;

    move-result-object v2

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/bwt;->mContext:Landroid/content/Context;

    const-string v3, "turingmm"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    .line 95
    const-string v0, ""

    .line 137
    :goto_0
    return-object v0

    .line 98
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    const-string v0, ""

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 104
    if-nez v4, :cond_2

    .line 105
    const-string v0, ""

    goto :goto_0

    .line 108
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 110
    array-length v6, v4

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_4

    aget-object v7, v4, v0

    .line 111
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 110
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_3
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 117
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v9, :cond_5

    .line 118
    const-string v0, ""

    goto :goto_0

    .line 121
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 124
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 126
    aget-object v6, v0, v1

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 127
    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 128
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 131
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v9, :cond_8

    .line 132
    const-string v0, ""

    goto/16 :goto_0

    .line 135
    :cond_8
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private au(II)Ljava/lang/String;
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/bwt;->mContext:Landroid/content/Context;

    const-string v1, "turingmm"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 305
    if-nez v0, :cond_0

    .line 306
    const-string v0, ""

    .line 317
    :goto_0
    return-object v0

    .line 308
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 311
    if-nez v0, :cond_1

    .line 312
    const-string v0, ""

    goto :goto_0

    .line 316
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bwt;->av(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private av(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/kingroot/kinguser/byi;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 269
    if-nez p0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v2

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bTY:Ljava/util/ArrayList;

    .line 275
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byr;

    .line 281
    iget-object v0, v0, Lcom/kingroot/kinguser/byr;->bUJ:Ljava/util/ArrayList;

    .line 282
    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byt;

    .line 284
    iget-object v0, v0, Lcom/kingroot/kinguser/byt;->bUQ:Ljava/util/Map;

    .line 285
    if-eqz v0, :cond_3

    .line 286
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v2, v1

    .line 290
    goto :goto_0
.end method

.method private b(Ljava/util/Map;I)Lcom/kingroot/kinguser/bwt$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/byi;",
            ">;I)",
            "Lcom/kingroot/kinguser/bwt$a;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 225
    if-nez p1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-object v3

    .line 231
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v3

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/byi;

    .line 234
    if-eqz v1, :cond_2

    .line 236
    iget v6, v1, Lcom/kingroot/kinguser/byi;->bQZ:I

    if-ne v6, p2, :cond_2

    .line 240
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    if-nez v2, :cond_3

    move-object v2, v1

    .line 245
    goto :goto_1

    .line 249
    :cond_3
    invoke-static {v2}, Lcom/kingroot/kinguser/bwt;->b(Lcom/kingroot/kinguser/byi;)I

    move-result v0

    const/16 v6, 0x78

    if-ge v0, v6, :cond_2

    .line 250
    iget-object v0, v2, Lcom/kingroot/kinguser/byi;->bTY:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/kingroot/kinguser/byi;->bTY:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 257
    :cond_4
    if-eqz v2, :cond_0

    .line 258
    new-instance v0, Lcom/kingroot/kinguser/bwt$a;

    invoke-direct {v0, v3}, Lcom/kingroot/kinguser/bwt$a;-><init>(Lcom/kingroot/kinguser/bwt$1;)V

    .line 259
    iput-object v2, v0, Lcom/kingroot/kinguser/bwt$a;->bSH:Lcom/kingroot/kinguser/byi;

    .line 260
    iput-object v4, v0, Lcom/kingroot/kinguser/bwt$a;->bSI:Ljava/util/List;

    move-object v3, v0

    .line 262
    goto :goto_0
.end method

.method private nv(Ljava/lang/String;)Lcom/kingroot/kinguser/byi;
    .locals 3

    .prologue
    .line 294
    invoke-static {p1}, Lcom/kingroot/kinguser/byy;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 295
    invoke-static {}, Lcom/kingroot/kinguser/bnk;->pL()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bnk;->d([B[B)[B

    move-result-object v0

    .line 296
    invoke-static {v0}, Lcom/kingroot/kinguser/bnj;->V([B)[B

    move-result-object v0

    .line 298
    new-instance v1, Lcom/kingroot/kinguser/byi;

    invoke-direct {v1}, Lcom/kingroot/kinguser/byi;-><init>()V

    .line 299
    new-instance v2, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v2, v0}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/byi;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 300
    return-object v1
.end method


# virtual methods
.method public aiW()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bwt;->bSF:Z

    return v0
.end method

.method public aiY()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/kingroot/kinguser/byi;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/kingroot/kinguser/bwt;->aiX()Ljava/util/Map;

    move-result-object v1

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 201
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-object v0

    .line 205
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/kingroot/kinguser/bwt;->b(Ljava/util/Map;I)Lcom/kingroot/kinguser/bwt$a;

    move-result-object v2

    .line 206
    if-eqz v2, :cond_2

    .line 207
    iget-object v3, v2, Lcom/kingroot/kinguser/bwt$a;->bSH:Lcom/kingroot/kinguser/byi;

    iget-object v2, v2, Lcom/kingroot/kinguser/bwt$a;->bSI:Ljava/util/List;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/kingroot/kinguser/bwt;->b(Ljava/util/Map;I)Lcom/kingroot/kinguser/bwt$a;

    move-result-object v2

    .line 211
    if-eqz v2, :cond_3

    .line 212
    iget-object v3, v2, Lcom/kingroot/kinguser/bwt$a;->bSH:Lcom/kingroot/kinguser/byi;

    iget-object v2, v2, Lcom/kingroot/kinguser/bwt$a;->bSI:Ljava/util/List;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_3
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/kingroot/kinguser/bwt;->b(Ljava/util/Map;I)Lcom/kingroot/kinguser/bwt$a;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_0

    .line 217
    iget-object v2, v1, Lcom/kingroot/kinguser/bwt$a;->bSH:Lcom/kingroot/kinguser/byi;

    iget-object v1, v1, Lcom/kingroot/kinguser/bwt$a;->bSI:Ljava/util/List;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(IILcom/kingroot/kinguser/byi;)V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p3}, Lcom/kingroot/kinguser/byi;->toByteArray()[B

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/kingroot/kinguser/bnj;->compress([B)[B

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/bnk;->pL()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bnk;->c([B[B)[B

    move-result-object v0

    .line 73
    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bwt;->au(II)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    invoke-static {v1, v0}, Lcom/kingroot/kinguser/byy;->c(Ljava/lang/String;[B)V

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bwt;->at(II)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kingroot/kinguser/bwt;->mContext:Landroid/content/Context;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bwt;->bSF:Z

    .line 62
    return-void
.end method
