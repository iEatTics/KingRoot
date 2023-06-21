.class public Lcom/kingroot/kinguser/ajr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aui:Ljava/lang/String;

.field private static final auj:Ljava/lang/String;

.field private static volatile auk:Lcom/kingroot/kinguser/ajr;


# instance fields
.field private aul:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpu:Ljava/lang/String;

    sput-object v0, Lcom/kingroot/kinguser/ajr;->aui:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/kingroot/kinguser/bha;->bpv:Ljava/lang/String;

    sput-object v0, Lcom/kingroot/kinguser/ajr;->auj:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/ajr;->auk:Lcom/kingroot/kinguser/ajr;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/ajr$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/ajr$1;-><init>(Lcom/kingroot/kinguser/ajr;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ajr;->aul:Lcom/kingroot/kinguser/bed;

    .line 62
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lcom/kingroot/kinguser/ady;->d(Ljava/lang/String;II)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 205
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 210
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v3

    invoke-virtual {v3, v1, v4, v0}, Lcom/kingroot/kinguser/ady;->d(Ljava/lang/String;II)V

    goto :goto_1

    .line 214
    :cond_3
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 219
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eq v0, v5, :cond_4

    .line 220
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4, v0}, Lcom/kingroot/kinguser/ady;->d(Ljava/lang/String;II)V

    goto :goto_2

    .line 223
    :cond_5
    return-void
.end method

.method public static zt()Lcom/kingroot/kinguser/ajr;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/kingroot/kinguser/ajr;->auk:Lcom/kingroot/kinguser/ajr;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/kingroot/kinguser/ajr;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/ajr;->auk:Lcom/kingroot/kinguser/ajr;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/kingroot/kinguser/ajr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ajr;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ajr;->auk:Lcom/kingroot/kinguser/ajr;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/ajr;->auk:Lcom/kingroot/kinguser/ajr;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static zu()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 82
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/kingroot/kinguser/ajr;->aui:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/kingroot/kinguser/ajr;->auj:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->s(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/kingroot/kinguser/rs;->s(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    .line 98
    :goto_0
    if-eqz v0, :cond_2

    .line 99
    const-string v0, "su"

    invoke-static {v0}, Lcom/kingroot/kinguser/abj;->en(Ljava/lang/String;)Z

    move-result v0

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v4, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;

    invoke-direct {v4, v0}, Lcom/kingroot/kinguser/common/check/DummySilentCleanCheckUnit;-><init>(Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {}, Lcom/kingroot/kinguser/ajb;->yT()Lcom/kingroot/kinguser/ajb;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/kingroot/kinguser/ajb;->checkSync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;Ljava/util/List;)Z

    .line 107
    :cond_2
    return-void

    .line 92
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public b(ZLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/avs;->RY()Lcom/kingroot/kinguser/avs;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/avs;->hb(I)Ljava/util/List;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/avs;->hc(I)Ljava/util/List;

    move-result-object v0

    .line 166
    invoke-static {}, Lcom/kingroot/kinguser/avs;->RY()Lcom/kingroot/kinguser/avs;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/avs;->ha(I)Ljava/util/List;

    move-result-object v2

    .line 167
    if-nez p1, :cond_1

    .line 169
    sget-object v3, Lcom/kingroot/kinguser/ajr;->aui:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v3, Lcom/kingroot/kinguser/ajr;->auj:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "656D6461656D6F6E"

    invoke-static {v4}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 178
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 181
    new-instance v6, Lcom/kingroot/kinguser/ajp;

    invoke-direct {v6}, Lcom/kingroot/kinguser/ajp;-><init>()V

    .line 182
    invoke-virtual {v6, v1, v0, v3}, Lcom/kingroot/kinguser/ajp;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 184
    invoke-static {p2, v4}, Lcom/kingroot/kinguser/ajm;->b(Ljava/util/List;Ljava/util/Map;)V

    .line 187
    invoke-static {v2, v5}, Lcom/kingroot/kinguser/ajm;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 189
    invoke-direct {p0, v3, v4, v5}, Lcom/kingroot/kinguser/ajr;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public zq()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ajr;->aul:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 68
    return-void
.end method

.method public zv()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lcom/kingroot/kinguser/avs;->RY()Lcom/kingroot/kinguser/avs;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/avs;->hd(I)Ljava/util/List;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    invoke-static {v0}, Lcom/kingroot/kinguser/bha;->lt(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_1
    return-object v1
.end method

.method public zw()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-static {}, Lcom/kingroot/kinguser/avs;->RY()Lcom/kingroot/kinguser/avs;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/avs;->ha(I)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 148
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method
