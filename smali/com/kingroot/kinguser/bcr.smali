.class public Lcom/kingroot/kinguser/bcr;
.super Lcom/kingroot/kinguser/bcq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bcr$a;
    }
.end annotation


# static fields
.field public static final biB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/bdh;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bcr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private biA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bcr;->biB:Ljava/util/Map;

    .line 83
    new-instance v0, Lcom/kingroot/kinguser/bcr$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bcr$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bcr;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcq;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bcr;->biA:Ljava/util/Map;

    return-void
.end method

.method public static XT()Lcom/kingroot/kinguser/bcr;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/kingroot/kinguser/bcr;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bcr;

    return-object v0
.end method

.method private XV()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v1, "maliciousrb5000"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/bcr$a;I)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/bcr$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    iget v0, p1, Lcom/kingroot/kinguser/bcr$a;->biE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v0, p1, Lcom/kingroot/kinguser/bcr$a;->info:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v0, p1, Lcom/kingroot/kinguser/bcr$a;->filePath:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-boolean v0, p1, Lcom/kingroot/kinguser/bcr$a;->biD:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x18839

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 290
    return-void

    .line 288
    :cond_0
    const-string v0, "2"

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bcr;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bcr;->kG(Ljava/lang/String;)V

    return-void
.end method

.method private bM(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcr$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 218
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 266
    :goto_0
    return-object v0

    .line 221
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    .line 225
    invoke-virtual {v3}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bcr;->bN(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/bbz;->c(Ljava/util/Set;Ljava/util/Set;)V

    .line 233
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 236
    const-string v6, "maliciousrb5001"

    invoke-static {v6, v10}, Lcom/kingroot/kinguser/bho;->S(Ljava/lang/String;I)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v6

    .line 237
    invoke-static {v6, v1}, Lcom/kingroot/kinguser/bho;->a(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 238
    invoke-virtual {v6, v10, v0}, Lcom/kingroot/kinguser/util/protect/RebootStat;->R(ILjava/lang/String;)V

    .line 239
    const/4 v7, 0x1

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lcom/kingroot/kinguser/bho;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 240
    invoke-static {v0, v10}, Lcom/kingroot/kinguser/aar;->r(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/abc;->runRootCommands(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 245
    new-instance v8, Lcom/kingroot/kinguser/bcr$a;

    invoke-direct {v8}, Lcom/kingroot/kinguser/bcr$a;-><init>()V

    .line 246
    iput-object v0, v8, Lcom/kingroot/kinguser/bcr$a;->filePath:Ljava/lang/String;

    .line 247
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ne v0, v9, :cond_5

    .line 248
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 251
    :goto_2
    if-eqz v0, :cond_2

    .line 252
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 253
    iput v10, v8, Lcom/kingroot/kinguser/bcr$a;->biE:I

    .line 260
    :cond_2
    :goto_3
    invoke-static {v6, v1}, Lcom/kingroot/kinguser/bho;->d(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 261
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 262
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 255
    :cond_3
    const/4 v7, 0x3

    iput v7, v8, Lcom/kingroot/kinguser/bcr$a;->biE:I

    .line 256
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    iput-object v0, v8, Lcom/kingroot/kinguser/bcr$a;->info:Ljava/lang/String;

    goto :goto_3

    .line 264
    :cond_4
    sget-object v0, Lcom/kingroot/kinguser/aas;->XS:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-object v0, v2

    .line 266
    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private bN(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcr$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 271
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 276
    :goto_1
    new-instance v5, Lcom/kingroot/kinguser/bcr$a;

    const-string v6, ""

    invoke-direct {v5, v0, v1, v6, v2}, Lcom/kingroot/kinguser/bcr$a;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :cond_0
    const/4 v1, 0x3

    goto :goto_1

    .line 278
    :cond_1
    return-object v3
.end method

.method private kG(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 301
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v1, "maliciousrb5000"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 303
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 304
    return-void
.end method


# virtual methods
.method protected XO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "malicious"

    return-object v0
.end method

.method public XU()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "maliciousrb5001"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bho;->S(Ljava/lang/String;I)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    .line 194
    new-instance v1, Lcom/kingroot/kinguser/bcr$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bcr$2;-><init>(Lcom/kingroot/kinguser/bcr;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bho;->a(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 214
    return-void
.end method

.method protected dE(Z)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/bdh;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-static {}, Lcom/kingroot/kinguser/awa;->Sw()Lcom/kingroot/kinguser/awa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/awa;->dj(Z)Ljava/util/List;

    move-result-object v1

    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Lcom/kingroot/kinguser/bcr;->biB:Ljava/util/Map;

    .line 150
    :goto_1
    return-object v0

    .line 111
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 112
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcr;->XV()Ljava/util/Map;

    move-result-object v7

    .line 115
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    move v3, v2

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;

    .line 116
    invoke-virtual {v0}, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->jk()Ljava/lang/String;

    move-result-object v9

    .line 117
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 121
    const-string v4, "/system/"

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 122
    if-nez v3, :cond_3

    .line 123
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 124
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aio;->d(Lcom/kingroot/kinguser/abc;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v5

    :goto_3
    move v3, v5

    .line 127
    :cond_3
    if-eqz v1, :cond_2

    :cond_4
    move v4, v3

    move v3, v1

    .line 133
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v10, 0x2

    if-lt v1, v10, :cond_6

    move v1, v3

    move v3, v4

    .line 135
    goto :goto_2

    :cond_5
    move v1, v2

    .line 124
    goto :goto_3

    .line 138
    :cond_6
    new-instance v1, Lcom/kingroot/kinguser/bdh;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bdh;-><init>()V

    .line 139
    invoke-virtual {v0}, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->jk()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/kingroot/kinguser/bdh;->name:Ljava/lang/String;

    .line 140
    invoke-virtual {v0}, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->Yt()I

    move-result v10

    iput v10, v1, Lcom/kingroot/kinguser/bdh;->level:I

    .line 141
    invoke-virtual {v0}, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->Ys()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/bdh;->desc:Ljava/lang/String;

    .line 144
    invoke-interface {v6, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    move v1, v4

    :goto_4
    move v3, v1

    move v1, v0

    .line 148
    goto :goto_2

    :cond_7
    move-object v0, v6

    .line 150
    goto/16 :goto_1

    :cond_8
    move v0, v1

    move v1, v3

    goto :goto_4
.end method

.method protected i(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bcr;->bM(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 174
    const/4 v0, 0x1

    .line 175
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bcr$a;

    .line 176
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcr$a;->success()Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    invoke-direct {p0, v0, p2}, Lcom/kingroot/kinguser/bcr;->a(Lcom/kingroot/kinguser/bcr$a;I)V

    .line 178
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 180
    goto :goto_0

    .line 181
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
