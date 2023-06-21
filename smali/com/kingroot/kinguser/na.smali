.class public final Lcom/kingroot/kinguser/na;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/lo;
.implements Lcom/kingroot/kinguser/mt;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static wL:Lcom/kingroot/kinguser/na;


# instance fields
.field private mContext:Landroid/content/Context;

.field private wM:Lcom/kingroot/kinguser/lp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uranus_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/kingroot/kinguser/na;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/na;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/kingroot/kinguser/na;

    invoke-direct {v0}, Lcom/kingroot/kinguser/na;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/na;->wL:Lcom/kingroot/kinguser/na;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private declared-synchronized A(Landroid/content/Context;)V
    .locals 14

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/kb;->k(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 89
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/na;->eV()I

    move-result v1

    .line 90
    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/kingroot/kinguser/na;->eU()Lcom/kingroot/kinguser/lp;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/lp;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/kingroot/kinguser/na;->eW()V

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 109
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    if-eqz v5, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 117
    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 118
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    .line 120
    invoke-virtual {p0}, Lcom/kingroot/kinguser/na;->eU()Lcom/kingroot/kinguser/lp;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/kingroot/kinguser/lp;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 124
    :cond_3
    const/4 v7, 0x0

    :try_start_2
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 125
    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 127
    new-instance v6, Lcom/king/uranus/y;

    invoke-direct {v6}, Lcom/king/uranus/y;-><init>()V

    .line 128
    iput v7, v6, Lcom/king/uranus/y;->id:I

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v10, v10

    iput v10, v6, Lcom/king/uranus/y;->aJ:I

    .line 132
    const-string v10, "1"

    iput-object v10, v6, Lcom/king/uranus/y;->bD:Ljava/lang/String;

    .line 133
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v7, v8, v9, v5}, Lcom/kingroot/kinguser/na;->a(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/king/uranus/y;->bF:Ljava/lang/String;

    .line 136
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 148
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/kingroot/kinguser/nd;->eY()Lcom/kingroot/kinguser/nd;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/kingroot/kinguser/jc;->a(Landroid/content/Context;Ljava/util/List;Lcom/kingroot/kinguser/jb;)I

    move-result v1

    .line 154
    const-class v0, Lcom/kingroot/kinguser/hn;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hn;

    .line 155
    if-nez v1, :cond_5

    .line 156
    invoke-interface {v0}, Lcom/kingroot/kinguser/hn;->bc()V

    .line 157
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/na;->as(I)V

    .line 160
    invoke-virtual {p0}, Lcom/kingroot/kinguser/na;->eU()Lcom/kingroot/kinguser/lp;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/lp;->a(Ljava/util/Set;)V

    goto/16 :goto_0

    .line 162
    :cond_5
    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/hn;->J(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private a(IJLjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 206
    const-wide/16 v0, 0x3e8

    :try_start_0
    div-long v0, p2, v0

    long-to-int v0, v0

    .line 208
    invoke-static {}, Lcom/kingroot/kinguser/nd;->eY()Lcom/kingroot/kinguser/nd;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/na;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/nd;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    const-string v0, "\\|"

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 213
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 214
    invoke-static {v5}, Lcom/kingroot/kinguser/mv;->bA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    const-class v0, Lcom/kingroot/kinguser/hn;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hn;

    .line 220
    invoke-interface {v0, p1, p4}, Lcom/kingroot/kinguser/hn;->c(ILjava/lang/String;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    :goto_1
    return-object v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    const-string v0, ""

    goto :goto_1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/na;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/na;->A(Landroid/content/Context;)V

    return-void
.end method

.method private as(I)V
    .locals 3

    .prologue
    .line 195
    invoke-static {}, Lcom/kingroot/kinguser/kk;->cY()Lcom/kingroot/kinguser/kk;

    move-result-object v0

    .line 196
    const-string v1, "already_upload_stat_count_today"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/kk;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 197
    add-int/2addr v1, p1

    .line 199
    const-string v2, "already_upload_stat_count_today"

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/kk;->a(Ljava/lang/String;I)V

    .line 200
    return-void
.end method

.method public static eT()Lcom/kingroot/kinguser/na;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/kingroot/kinguser/na;->wL:Lcom/kingroot/kinguser/na;

    return-object v0
.end method

.method private eV()I
    .locals 10

    .prologue
    const/16 v0, 0x32

    const/4 v1, 0x0

    .line 171
    invoke-static {}, Lcom/kingroot/kinguser/kk;->cY()Lcom/kingroot/kinguser/kk;

    move-result-object v2

    .line 173
    const-string v3, "last_upload_period_start_time"

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/kk;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 177
    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v8, 0x5265c00

    cmp-long v3, v4, v8

    if-ltz v3, :cond_0

    .line 178
    const-string v3, "last_upload_period_start_time"

    invoke-virtual {v2, v3, v6, v7}, Lcom/kingroot/kinguser/kk;->b(Ljava/lang/String;J)V

    .line 179
    const-string v3, "already_upload_stat_count_today"

    invoke-virtual {v2, v3, v1}, Lcom/kingroot/kinguser/kk;->a(Ljava/lang/String;I)V

    .line 189
    :goto_0
    return v0

    .line 184
    :cond_0
    const-string v3, "already_upload_stat_count_today"

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/kk;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 186
    if-lt v2, v0, :cond_1

    move v0, v1

    .line 187
    goto :goto_0

    .line 189
    :cond_1
    rsub-int/lit8 v0, v2, 0x32

    goto :goto_0
.end method

.method private eW()V
    .locals 5

    .prologue
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    const-string v0, "096CE82CAD7A6725"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v0, "1.6.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-class v0, Lcom/kingroot/kinguser/hn;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hn;

    .line 241
    invoke-static {}, Lcom/kingroot/kinguser/nd;->eY()Lcom/kingroot/kinguser/nd;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Lcom/kingroot/kinguser/nd;->cs()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/na;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/nd;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v2, v1}, Lcom/kingroot/kinguser/hn;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/na;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/kingroot/kinguser/lp;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kingroot/kinguser/na;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/kingroot/kinguser/na;->wM:Lcom/kingroot/kinguser/lp;

    .line 52
    return-void
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/kingroot/kinguser/na;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/no;->fl()Lcom/kingroot/kinguser/no;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/nb;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/nb;-><init>(Lcom/kingroot/kinguser/na;Landroid/content/Context;)V

    invoke-virtual {v1, v2, p1, p2}, Lcom/kingroot/kinguser/no;->a(Lcom/kingroot/kinguser/nj;J)V

    .line 71
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/kingroot/kinguser/na;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/na;->A(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public eU()Lcom/kingroot/kinguser/lp;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/na;->wM:Lcom/kingroot/kinguser/lp;

    return-object v0
.end method
