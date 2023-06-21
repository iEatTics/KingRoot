.class public Lcom/king/uranus/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/uranus/cs$a;,
        Lcom/king/uranus/cs$b;
    }
.end annotation


# static fields
.field private static final xk:[Ljava/lang/String;

.field private static final xl:[Ljava/lang/String;

.field public static xm:I

.field public static xn:I

.field public static xo:I

.field public static xp:I


# instance fields
.field public ij:J

.field public ik:Lcom/king/uranus/cs$b;

.field public il:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/king/uranus/cs$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/init"

    aput-object v1, v0, v3

    const-string v1, "/sbin/ueventd"

    aput-object v1, v0, v4

    const-string v1, "/system/bin/vold"

    aput-object v1, v0, v5

    const-string v1, "/system/bin/netd"

    aput-object v1, v0, v6

    const-string v1, "/system/bin/debuggerd"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/system/bin/rild"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/system/bin/installd"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/system/bin/keystore"

    aput-object v2, v0, v1

    sput-object v0, Lcom/king/uranus/cs;->xk:[Ljava/lang/String;

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/bin/servicemanager"

    aput-object v1, v0, v3

    const-string v1, "/system/bin/surfaceflinger"

    aput-object v1, v0, v4

    const-string v1, "zygote"

    aput-object v1, v0, v5

    const-string v1, "zygote64"

    aput-object v1, v0, v6

    const-string v1, "system_server"

    aput-object v1, v0, v7

    sput-object v0, Lcom/king/uranus/cs;->xl:[Ljava/lang/String;

    .line 43
    sput v3, Lcom/king/uranus/cs;->xm:I

    .line 44
    sput v4, Lcom/king/uranus/cs;->xn:I

    .line 45
    sput v5, Lcom/king/uranus/cs;->xo:I

    .line 46
    sput v6, Lcom/king/uranus/cs;->xp:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/king/uranus/cs;->ij:J

    .line 54
    invoke-static {}, Lcom/king/uranus/cs$b;->fk()Lcom/king/uranus/cs$b;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/cs;->ik:Lcom/king/uranus/cs$b;

    .line 55
    invoke-static {}, Lcom/king/uranus/cs;->fi()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/cs;->il:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public static a(Lcom/king/uranus/cs;Lcom/king/uranus/cs;Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/king/uranus/cs;",
            "Lcom/king/uranus/cs;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 143
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/king/uranus/cs;->ik:Lcom/king/uranus/cs$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/king/uranus/cs;->il:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 144
    :cond_0
    sget v0, Lcom/king/uranus/cs;->xm:I

    .line 196
    :goto_0
    return v0

    .line 146
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/king/uranus/cs;->ik:Lcom/king/uranus/cs$b;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/king/uranus/cs;->il:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 147
    :cond_2
    sget v0, Lcom/king/uranus/cs;->xm:I

    goto :goto_0

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/king/uranus/cs;->il:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/king/uranus/cs;->il:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/king/uranus/cs;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 151
    if-eqz p2, :cond_4

    .line 152
    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    :cond_4
    iget-object v1, p0, Lcom/king/uranus/cs;->ik:Lcom/king/uranus/cs$b;

    iget-object v2, p1, Lcom/king/uranus/cs;->ik:Lcom/king/uranus/cs$b;

    invoke-virtual {v1, v2}, Lcom/king/uranus/cs$b;->a(Lcom/king/uranus/cs$b;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 158
    sget v0, Lcom/king/uranus/cs;->xo:I

    goto :goto_0

    .line 161
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 162
    sget v0, Lcom/king/uranus/cs;->xn:I

    goto :goto_0

    .line 168
    :cond_6
    sget-object v1, Lcom/king/uranus/cs;->xk:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 169
    sget-object v1, Lcom/king/uranus/cs;->xl:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move v1, v0

    move v2, v0

    .line 170
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_9

    .line 171
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 172
    add-int/lit8 v1, v1, 0x1

    .line 170
    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_8
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 181
    :cond_9
    const-string v0, "/init"

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 183
    sget v0, Lcom/king/uranus/cs;->xo:I

    goto :goto_0

    .line 188
    :cond_a
    const/4 v0, 0x5

    if-lt v1, v0, :cond_b

    const/4 v0, 0x2

    if-le v2, v0, :cond_b

    .line 189
    sget v0, Lcom/king/uranus/cs;->xo:I

    goto :goto_0

    .line 192
    :cond_b
    if-lez v2, :cond_c

    .line 193
    sget v0, Lcom/king/uranus/cs;->xp:I

    goto :goto_0

    .line 196
    :cond_c
    sget v0, Lcom/king/uranus/cs;->xn:I

    goto :goto_0
.end method

.method private static a(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 248
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 261
    :goto_0
    return-object v0

    .line 252
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    const-string v3, "\u0000"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 255
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 261
    goto :goto_0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/cs$a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/king/uranus/cs$a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v2

    .line 238
    :goto_0
    return-object v0

    .line 211
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/cs$a;

    .line 212
    const/4 v3, 0x0

    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/king/uranus/cs$a;

    .line 215
    invoke-virtual {v0, v1}, Lcom/king/uranus/cs$a;->a(Lcom/king/uranus/cs$a;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 216
    invoke-virtual {v0, v1}, Lcom/king/uranus/cs$a;->b(Lcom/king/uranus/cs$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    const/4 v1, 0x1

    .line 231
    :goto_2
    if-nez v1, :cond_2

    .line 232
    iget-object v0, v0, Lcom/king/uranus/cs$a;->name:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 238
    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method public static fh()Lcom/king/uranus/cs;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/king/uranus/cs;

    invoke-direct {v0}, Lcom/king/uranus/cs;-><init>()V

    return-object v0
.end method

.method private static fi()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/king/uranus/cs$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 72
    sget-object v0, Lcom/king/uranus/cs;->xk:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 73
    sget-object v0, Lcom/king/uranus/cs;->xl:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    new-instance v4, Ljava/io/File;

    const-string v0, "/proc"

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 80
    if-eqz v5, :cond_3

    .line 81
    array-length v6, v5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_3

    aget-object v0, v5, v1

    .line 83
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {v7}, Lcom/king/uranus/cs;->l(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    invoke-static {v2, v0}, Lcom/king/uranus/cs;->a(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_2
    if-eqz v0, :cond_0

    .line 97
    new-instance v8, Ljava/io/File;

    const-string v9, "stat"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    invoke-static {v0, v8}, Lcom/king/uranus/cs$a;->b(Ljava/lang/String;Ljava/io/File;)Lcom/king/uranus/cs$a;

    move-result-object v7

    .line 99
    if-eqz v7, :cond_0

    .line 100
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_3
    return-object v3
.end method

.method private static l(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/io/File;

    const-string v1, "cmdline"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-static {v0}, Lcom/kingroot/kinguser/nk;->n(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-object v0

    .line 121
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "comm"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    invoke-static {v0}, Lcom/kingroot/kinguser/nk;->n(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 129
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public fj()J
    .locals 4

    .prologue
    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/king/uranus/cs;->ij:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
