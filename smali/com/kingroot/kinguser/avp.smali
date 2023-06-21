.class public Lcom/kingroot/kinguser/avp;
.super Lcom/kingroot/kinguser/avj;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static volatile aTT:Lcom/kingroot/kinguser/avp;


# instance fields
.field private aTU:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/avq;",
            ">;>;"
        }
    .end annotation
.end field

.field private aTV:I

.field private final aTW:Ljava/lang/Object;

.field private volatile aTX:Z

.field private aTY:Lcom/kingroot/kinguser/bed;

.field private ary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "ku_cloud_list_BlackWhite4ChannelCloudListManager"

    sput-object v0, Lcom/kingroot/kinguser/avp;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 44
    const v0, 0x9d3b

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;-><init>(I)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avp;->aTU:Ljava/util/HashMap;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/avp;->ary:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/avp;->aTV:I

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avp;->aTW:Ljava/lang/Object;

    .line 39
    iput-boolean v4, p0, Lcom/kingroot/kinguser/avp;->aTX:Z

    .line 48
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/avp$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/avp$1;-><init>(Lcom/kingroot/kinguser/avp;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/avp;->aTY:Lcom/kingroot/kinguser/bed;

    .line 45
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/avp;->aTY:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 46
    return-void
.end method

.method public static RQ()Lcom/kingroot/kinguser/avp;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/kingroot/kinguser/avp;->aTT:Lcom/kingroot/kinguser/avp;

    if-nez v0, :cond_1

    .line 61
    const-class v1, Lcom/kingroot/kinguser/avp;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/avp;->aTT:Lcom/kingroot/kinguser/avp;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/kingroot/kinguser/avp;

    invoke-direct {v0}, Lcom/kingroot/kinguser/avp;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/avp;->aTT:Lcom/kingroot/kinguser/avp;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/avp;->aTT:Lcom/kingroot/kinguser/avp;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized RS()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 124
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CX()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    .line 129
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 130
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ib()Ljava/lang/String;

    move-result-object v5

    .line 131
    iget-boolean v0, p0, Lcom/kingroot/kinguser/avp;->aTX:Z

    if-eqz v0, :cond_4

    .line 132
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avp;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 134
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 139
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-direct {p0, v5, v1}, Lcom/kingroot/kinguser/avp;->ay(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v7, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    .line 142
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 143
    if-nez v1, :cond_5

    .line 144
    const/4 v2, 0x1

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    :goto_2
    invoke-direct {p0, v5, v7, v0, v1}, Lcom/kingroot/kinguser/avp;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/bq;Ljava/util/List;)V

    .line 149
    if-eqz v2, :cond_1

    .line 150
    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 157
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 159
    iget-object v1, p0, Lcom/kingroot/kinguser/avp;->aTW:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/avp;->aTU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 161
    iput-object v4, p0, Lcom/kingroot/kinguser/avp;->aTU:Ljava/util/HashMap;

    .line 162
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/kingroot/kinguser/avp;->aTX:Z

    .line 167
    :cond_4
    iput-object v5, p0, Lcom/kingroot/kinguser/avp;->ary:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 162
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method private RT()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/kingroot/kinguser/avp;->aTU:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/avp;->aTU:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    const/4 v0, 0x1

    .line 339
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/avp;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kingroot/kinguser/avp;->RS()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/bq;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/bq;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/avq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 241
    :try_start_0
    iget-object v1, p3, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 242
    iget-object v1, p3, Lcom/kingroot/kinguser/bq;->kQ:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/avp;->aTV:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    new-instance v1, Lcom/kingroot/kinguser/avq;

    invoke-direct {v1, p1, p2, v0}, Lcom/kingroot/kinguser/avq;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    return-void

    .line 243
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private ay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 262
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 267
    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    .line 268
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 269
    invoke-virtual {p1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 270
    const/4 v0, 0x1

    goto :goto_0

    .line 268
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private bA(Ljava/util/List;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/avq;",
            ">;)[I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 207
    const/4 v0, 0x0

    .line 208
    if-eqz p1, :cond_5

    .line 209
    invoke-static {}, Lcom/kingroot/kinguser/auw;->QZ()[I

    move-result-object v3

    .line 210
    array-length v0, v3

    new-array v2, v0, [I

    move v0, v1

    .line 211
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 212
    aput v1, v2, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    const-string v0, ""

    .line 216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/avq;

    .line 217
    invoke-virtual {v0}, Lcom/kingroot/kinguser/avq;->RU()Ljava/lang/String;

    .line 218
    invoke-virtual {v0}, Lcom/kingroot/kinguser/avq;->getType()I

    move-result v5

    move v0, v1

    .line 219
    :goto_2
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 220
    aget v6, v3, v0

    if-ne v6, v5, :cond_2

    .line 221
    aput v5, v2, v0

    goto :goto_1

    .line 219
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 227
    :cond_3
    :goto_3
    array-length v0, v2

    if-ge v1, v0, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 232
    :cond_5
    return-object v0
.end method

.method private bz(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/avq;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 186
    .line 187
    if-eqz p1, :cond_0

    .line 188
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/avp;->bA(Ljava/util/List;)[I

    move-result-object v2

    .line 189
    if-eqz v2, :cond_0

    move v0, v1

    .line 190
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 192
    aget v3, v2, v0

    if-eqz v3, :cond_1

    .line 193
    aget v1, v2, v0

    .line 200
    :cond_0
    return v1

    .line 190
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private jx(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 283
    .line 284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/kingroot/kinguser/avp;->RT()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 313
    :cond_1
    :goto_0
    return v0

    .line 288
    :cond_2
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 289
    if-eqz v5, :cond_3

    array-length v0, v5

    if-gtz v0, :cond_4

    :cond_3
    move v0, v1

    .line 290
    goto :goto_0

    .line 293
    :cond_4
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v0, v1

    :goto_1
    if-lez v4, :cond_1

    .line 294
    const-string v2, ""

    move-object v3, v2

    move v2, v1

    .line 295
    :goto_2
    if-ge v2, v4, :cond_5

    .line 296
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

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 298
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/avp;->jy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 302
    if-eqz v2, :cond_6

    .line 303
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/avp;->bz(Ljava/util/List;)I

    move-result v0

    .line 304
    if-nez v0, :cond_1

    .line 293
    :cond_6
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_1
.end method

.method private jy(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/avq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    const/4 v1, 0x0

    .line 322
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/avp;->aTW:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 323
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/avp;->aTU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 328
    :goto_0
    return-object v0

    .line 324
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

    .line 325
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 324
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method public RR()I
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 109
    :cond_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ib()Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/kingroot/kinguser/avp;->ary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/kingroot/kinguser/avp;->ary:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/avp;->aTX:Z

    if-eqz v0, :cond_2

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/avp;->RS()V

    .line 116
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/avp;->aTV:I

    goto :goto_0
.end method

.method public jw(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 73
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->CX()Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ib()Ljava/lang/String;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/kingroot/kinguser/avp;->ary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/kingroot/kinguser/avp;->ary:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/kingroot/kinguser/avp;->aTX:Z

    if-eqz v1, :cond_3

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/avp;->RS()V

    .line 87
    :cond_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/avp;->RT()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/avp;->jy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avp;->bz(Ljava/util/List;)I

    move-result v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/avp;->jx(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected uy()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/avp;->aTX:Z

    .line 173
    invoke-direct {p0}, Lcom/kingroot/kinguser/avp;->RS()V

    .line 174
    return-void
.end method
