.class public Lcom/kingroot/kinguser/awe;
.super Lcom/kingroot/kinguser/avj;
.source "SourceFile"


# static fields
.field private static volatile aUM:Lcom/kingroot/kinguser/awe;

.field private static final aUN:[I


# instance fields
.field private final aTW:Ljava/lang/Object;

.field private volatile aTX:Z

.field private aTY:Lcom/kingroot/kinguser/bed;

.field private aUc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/kinguser/awe;->aUN:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x3
        0x1
        0x2
        0x5
    .end array-data
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 46
    const v0, 0x9df4

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;-><init>(I)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/awe;->aUc:Ljava/util/HashMap;

    .line 29
    iput-boolean v4, p0, Lcom/kingroot/kinguser/awe;->aTX:Z

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/awe;->aTW:Ljava/lang/Object;

    .line 50
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/awe$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/awe$1;-><init>(Lcom/kingroot/kinguser/awe;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/awe;->aTY:Lcom/kingroot/kinguser/bed;

    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/awe;->aTY:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 48
    return-void
.end method

.method private RW()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/kingroot/kinguser/awe;->aUc:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/awe;->aUc:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SI()Lcom/kingroot/kinguser/awe;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/kingroot/kinguser/awe;->aUM:Lcom/kingroot/kinguser/awe;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Lcom/kingroot/kinguser/awe;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/awe;->aUM:Lcom/kingroot/kinguser/awe;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/kingroot/kinguser/awe;

    invoke-direct {v0}, Lcom/kingroot/kinguser/awe;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/awe;->aUM:Lcom/kingroot/kinguser/awe;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/awe;->aUM:Lcom/kingroot/kinguser/awe;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized SJ()V
    .locals 4

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 162
    iget-boolean v0, p0, Lcom/kingroot/kinguser/awe;->aTX:Z

    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awe;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 165
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 169
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/awe;->a(Lcom/kingroot/kinguser/bq;)Ljava/lang/String;

    move-result-object v3

    .line 170
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/awe;->jz(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/awe;->h([Ljava/lang/String;)I

    move-result v0

    .line 172
    if-eqz v0, :cond_0

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    iget-object v2, p0, Lcom/kingroot/kinguser/awe;->aTW:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/awe;->aUc:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 183
    iput-object v1, p0, Lcom/kingroot/kinguser/awe;->aUc:Ljava/util/HashMap;

    .line 184
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    :cond_2
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/kingroot/kinguser/awe;->aTX:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    :cond_3
    monitor-exit p0

    return-void

    .line 184
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private a(Lcom/kingroot/kinguser/bq;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    iget-object v0, p1, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    iget-object v1, p1, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/awe;->aA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/awe;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/awe;->SJ()V

    return-void
.end method

.method private aA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    .line 320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 326
    :cond_0
    :goto_0
    return-object p2

    .line 322
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p2, p1

    goto :goto_0
.end method

.method private h([Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 207
    .line 208
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_2

    :cond_0
    move v0, v1

    .line 223
    :cond_1
    :goto_0
    return v0

    .line 212
    :cond_2
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/awe;->i([Ljava/lang/String;)[I

    move-result-object v3

    .line 213
    if-eqz v3, :cond_3

    .line 214
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    aget v0, v3, v2

    .line 215
    if-nez v0, :cond_1

    .line 214
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private i([Ljava/lang/String;)[I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 233
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 234
    :cond_0
    const/4 v0, 0x0

    .line 263
    :goto_0
    return-object v0

    .line 237
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/awe;->aUN:[I

    array-length v0, v0

    new-array v2, v0, [I

    move v0, v1

    .line 239
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 240
    aput v1, v2, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_2
    array-length v5, p1

    move v4, v1

    :goto_2
    if-ge v4, v5, :cond_6

    aget-object v0, p1, v4

    .line 246
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v3, v0

    .line 251
    :goto_3
    if-nez v3, :cond_4

    .line 243
    :cond_3
    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 247
    :catch_0
    move-exception v0

    move v3, v1

    goto :goto_3

    :cond_4
    move v0, v1

    .line 255
    :goto_5
    sget-object v6, Lcom/kingroot/kinguser/awe;->aUN:[I

    array-length v6, v6

    if-ge v0, v6, :cond_3

    .line 256
    sget-object v6, Lcom/kingroot/kinguser/awe;->aUN:[I

    aget v6, v6, v0

    if-ne v6, v3, :cond_5

    .line 257
    aput v3, v2, v0

    goto :goto_4

    .line 255
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move-object v0, v2

    .line 263
    goto :goto_0
.end method

.method private jA(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 344
    const/4 v1, 0x0

    .line 346
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/awe;->aTW:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/awe;->aUc:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 348
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 353
    :goto_0
    return v0

    .line 348
    :catchall_0
    move-exception v0

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 349
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 348
    :catchall_1
    move-exception v1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method private jx(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 271
    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/kingroot/kinguser/awe;->RW()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 278
    array-length v1, v5

    if-lez v1, :cond_0

    .line 282
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    move v1, v0

    :goto_1
    if-lez v4, :cond_4

    .line 283
    const-string v2, ""

    move-object v3, v2

    move v2, v0

    .line 284
    :goto_2
    if-ge v2, v4, :cond_2

    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v6, v5, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 287
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/awe;->jA(Ljava/lang/String;)I

    move-result v1

    .line 291
    if-eqz v1, :cond_3

    move v0, v1

    .line 293
    goto :goto_0

    .line 282
    :cond_3
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 299
    goto :goto_0
.end method

.method private jz(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 337
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public RX()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/kingroot/kinguser/awe;->SJ()V

    .line 365
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/kingroot/kinguser/awe;->aUc:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public aB(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    if-nez v1, :cond_0

    .line 96
    invoke-static {p2}, Lcom/kingroot/kinguser/aaz;->ea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/kingroot/kinguser/awe;->az(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 104
    :goto_0
    return v0

    .line 100
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public az(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    iget-boolean v1, p0, Lcom/kingroot/kinguser/awe;->aTX:Z

    if-eqz v1, :cond_2

    .line 122
    invoke-direct {p0}, Lcom/kingroot/kinguser/awe;->SJ()V

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/awe;->RW()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/awe;->aA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/awe;->jA(Ljava/lang/String;)I

    move-result v0

    .line 133
    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0, p1, v2}, Lcom/kingroot/kinguser/awe;->aA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/awe;->jA(Ljava/lang/String;)I

    move-result v0

    .line 140
    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0, v2, p2}, Lcom/kingroot/kinguser/awe;->aA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/awe;->jA(Ljava/lang/String;)I

    move-result v0

    .line 147
    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/awe;->jx(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public jw(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p0, p1, v1}, Lcom/kingroot/kinguser/awe;->az(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 86
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected uy()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/awe;->aTX:Z

    .line 195
    invoke-direct {p0}, Lcom/kingroot/kinguser/awe;->SJ()V

    .line 196
    return-void
.end method
