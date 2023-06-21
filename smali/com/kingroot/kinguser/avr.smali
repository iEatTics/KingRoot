.class public Lcom/kingroot/kinguser/avr;
.super Lcom/kingroot/kinguser/avj;
.source "SourceFile"


# static fields
.field private static volatile aUb:Lcom/kingroot/kinguser/avr;


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
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 40
    const v0, 0x9d9f

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;-><init>(I)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avr;->aUc:Ljava/util/HashMap;

    .line 32
    iput-boolean v4, p0, Lcom/kingroot/kinguser/avr;->aTX:Z

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avr;->aTW:Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/avr$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/avr$1;-><init>(Lcom/kingroot/kinguser/avr;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/avr;->aTY:Lcom/kingroot/kinguser/bed;

    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/avr;->aTY:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 42
    return-void
.end method

.method private declared-synchronized RS()V
    .locals 4

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 121
    iget-boolean v0, p0, Lcom/kingroot/kinguser/avr;->aTX:Z

    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avr;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 124
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

    .line 128
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avr;->a(Lcom/kingroot/kinguser/bq;)Ljava/lang/String;

    move-result-object v3

    .line 129
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avr;->jz(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avr;->h([Ljava/lang/String;)I

    move-result v0

    .line 131
    if-eqz v0, :cond_0

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 138
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    iget-object v2, p0, Lcom/kingroot/kinguser/avr;->aTW:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/avr;->aUc:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 142
    iput-object v1, p0, Lcom/kingroot/kinguser/avr;->aUc:Ljava/util/HashMap;

    .line 143
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    :cond_2
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/kingroot/kinguser/avr;->aTX:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    :cond_3
    monitor-exit p0

    return-void

    .line 143
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

.method public static RV()Lcom/kingroot/kinguser/avr;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/kingroot/kinguser/avr;->aUb:Lcom/kingroot/kinguser/avr;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lcom/kingroot/kinguser/avr;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/avr;->aUb:Lcom/kingroot/kinguser/avr;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/kingroot/kinguser/avr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/avr;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/avr;->aUb:Lcom/kingroot/kinguser/avr;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/avr;->aUb:Lcom/kingroot/kinguser/avr;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private RW()Z
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/kingroot/kinguser/avr;->aUc:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/avr;->aUc:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/kingroot/kinguser/bq;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    iget-object v0, p1, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    iget-object v1, p1, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/avr;->aA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/avr;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kingroot/kinguser/avr;->RS()V

    return-void
.end method

.method private aA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
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

    .line 283
    :cond_0
    :goto_0
    return-object p2

    .line 279
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p2, p1

    goto :goto_0
.end method

.method private h([Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 166
    .line 167
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v1

    .line 171
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/avr;->i([Ljava/lang/String;)[I

    move-result-object v2

    .line 172
    if-eqz v2, :cond_0

    move v0, v1

    .line 173
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 175
    aget v3, v2, v0

    if-eqz v3, :cond_2

    .line 176
    aget v1, v2, v0

    goto :goto_0

    .line 173
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private i([Ljava/lang/String;)[I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 190
    const/4 v0, 0x0

    .line 191
    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-object v0

    .line 195
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/auw;->QZ()[I

    move-result-object v5

    .line 196
    array-length v0, v5

    new-array v2, v0, [I

    move v0, v1

    .line 197
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 198
    aput v1, v2, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_2
    array-length v6, p1

    move v4, v1

    :goto_2
    if-ge v4, v6, :cond_6

    aget-object v0, p1, v4

    .line 204
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v3, v0

    .line 209
    :goto_3
    if-nez v3, :cond_4

    .line 201
    :cond_3
    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 205
    :catch_0
    move-exception v0

    move v3, v1

    goto :goto_3

    :cond_4
    move v0, v1

    .line 213
    :goto_5
    array-length v7, v5

    if-ge v0, v7, :cond_3

    .line 214
    aget v7, v5, v0

    if-ne v7, v3, :cond_5

    .line 215
    aput v3, v2, v0

    goto :goto_4

    .line 213
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move-object v0, v2

    .line 221
    goto :goto_0
.end method

.method private jA(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 305
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/avr;->aTW:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/avr;->aUc:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 307
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 311
    :goto_0
    return v0

    .line 307
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

    .line 308
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 307
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
    const/4 v1, 0x0

    .line 229
    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/kingroot/kinguser/avr;->RW()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 256
    :cond_1
    :goto_0
    return v0

    .line 234
    :cond_2
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 235
    if-eqz v5, :cond_3

    array-length v0, v5

    if-gtz v0, :cond_4

    :cond_3
    move v0, v1

    .line 236
    goto :goto_0

    .line 239
    :cond_4
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v0, v1

    :goto_1
    if-lez v4, :cond_1

    .line 240
    const-string v2, ""

    move-object v3, v2

    move v2, v1

    .line 241
    :goto_2
    if-ge v2, v4, :cond_5

    .line 242
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

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 244
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avr;->jA(Ljava/lang/String;)I

    move-result v0

    .line 248
    if-nez v0, :cond_1

    .line 239
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_1
.end method

.method private jz(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    :goto_0
    return-object v0

    .line 295
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
    .line 326
    invoke-direct {p0}, Lcom/kingroot/kinguser/avr;->RS()V

    .line 327
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/kingroot/kinguser/avr;->aUc:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public az(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    iget-boolean v1, p0, Lcom/kingroot/kinguser/avr;->aTX:Z

    if-eqz v1, :cond_2

    .line 81
    invoke-direct {p0}, Lcom/kingroot/kinguser/avr;->RS()V

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/avr;->RW()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/avr;->aA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avr;->jA(Ljava/lang/String;)I

    move-result v0

    .line 92
    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0, p1, v2}, Lcom/kingroot/kinguser/avr;->aA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avr;->jA(Ljava/lang/String;)I

    move-result v0

    .line 99
    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0, v2, p2}, Lcom/kingroot/kinguser/avr;->aA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avr;->jA(Ljava/lang/String;)I

    move-result v0

    .line 106
    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/avr;->jx(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected uy()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/avr;->aTX:Z

    .line 154
    invoke-direct {p0}, Lcom/kingroot/kinguser/avr;->RS()V

    .line 155
    return-void
.end method
