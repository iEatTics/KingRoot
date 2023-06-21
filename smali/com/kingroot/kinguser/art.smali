.class public Lcom/kingroot/kinguser/art;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final aMe:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aMf:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aMg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_RiskPermanentRootCleaner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/art;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/art;->aMe:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/art;->aMf:Ljava/util/Set;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/art;->aMg:Ljava/util/Set;

    return-void
.end method

.method private Np()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/kingroot/kinguser/art;->aMf:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 136
    iget-object v1, p0, Lcom/kingroot/kinguser/art;->aMg:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 138
    sget-object v1, Lcom/kingroot/kinguser/art;->aMe:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bbz;->c(Ljava/util/Set;Ljava/util/Set;)V

    .line 139
    return-void
.end method

.method private Nq()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 159
    invoke-direct {p0}, Lcom/kingroot/kinguser/art;->Ns()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/art;->Nt()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Nr()V
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 173
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->EL()I

    move-result v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    .line 176
    if-lt v1, v0, :cond_0

    .line 180
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->eE(I)V

    .line 181
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private Ns()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 184
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->EJ()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    :goto_0
    return v0

    .line 190
    :cond_0
    const-string v2, "risk_permanent_root_cleaner"

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/bho;->S(Ljava/lang/String;I)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v2

    .line 191
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bho;->a(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 192
    iget v3, v2, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootCount:I

    if-ge v3, v0, :cond_1

    iget v2, v2, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootCount:I

    if-lt v2, v0, :cond_2

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/art;->Nr()V

    .line 197
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->EK()V

    .line 198
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1882c

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 201
    goto :goto_0
.end method

.method private Nt()Z
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EL()I

    move-result v0

    .line 207
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    :cond_0
    return-void
.end method

.method private as(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 268
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/zl;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hakuna-matata.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/rs;->c([BLjava/lang/String;)V

    .line 272
    invoke-static {v0, p2}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->ae(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0, p2}, Lcom/kingroot/kinguser/art;->in(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 281
    :goto_0
    return v0

    .line 277
    :catch_0
    move-exception v0

    .line 281
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 142
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/art;->in(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-direct {p0, v1, p2}, Lcom/kingroot/kinguser/art;->d(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-direct {p0, v2, p1}, Lcom/kingroot/kinguser/art;->as(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/art;->in(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/kingroot/kinguser/art;->aMe:Ljava/util/Set;

    .line 224
    :goto_0
    return-object v0

    .line 217
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 218
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 224
    goto :goto_0
.end method

.method private d(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 245
    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 248
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x1

    .line 256
    :goto_1
    if-nez v0, :cond_1

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private gq(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lcom/kingroot/kinguser/bca;->Xa()Lcom/kingroot/kinguser/bca;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bca;->hf(I)Ljava/util/List;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private in(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    const-string v0, ""

    .line 239
    :goto_0
    return-object v0

    .line 234
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->cy(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 239
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized MH()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 101
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/art;->Nq()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    monitor-exit p0

    return v4

    .line 107
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/art;->Np()V

    .line 110
    const-string v0, "risk_permanent_root_cleaner"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bho;->S(Ljava/lang/String;I)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    .line 111
    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bho;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/kingroot/kinguser/ajg;->zi()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/art;->aMf:Ljava/util/Set;

    invoke-direct {p0, v1, v2}, Lcom/kingroot/kinguser/art;->b(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v1

    .line 115
    sget-object v2, Lcom/kingroot/kinguser/bha;->bpy:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/art;->aMg:Ljava/util/Set;

    invoke-direct {p0, v2, v3}, Lcom/kingroot/kinguser/art;->b(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v2

    .line 118
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/bho;->d(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 121
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 123
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1882a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1882b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 127
    invoke-direct {p0}, Lcom/kingroot/kinguser/art;->Nr()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public gp(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/art;->gq(I)Ljava/util/Set;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ajg;->zi()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/kingroot/kinguser/art;->c(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/art;->aMf:Ljava/util/Set;

    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/ajg;->zi()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/art;->aMf:Ljava/util/Set;

    invoke-direct {p0, v2, v3}, Lcom/kingroot/kinguser/art;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 69
    sget-object v2, Lcom/kingroot/kinguser/bha;->bpy:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->go(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    sget-object v2, Lcom/kingroot/kinguser/bha;->bpy:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/kingroot/kinguser/art;->c(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/art;->aMg:Ljava/util/Set;

    .line 72
    sget-object v1, Lcom/kingroot/kinguser/bha;->bpy:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/art;->aMg:Ljava/util/Set;

    invoke-direct {p0, v1, v2}, Lcom/kingroot/kinguser/art;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/art;->aMf:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/kingroot/kinguser/art;->aMg:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
