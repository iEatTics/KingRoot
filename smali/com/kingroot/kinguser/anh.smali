.class public Lcom/kingroot/kinguser/anh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/anh$a;
    }
.end annotation


# static fields
.field private static apk:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/anh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aAE:I

.field private final aAF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/kingroot/kinguser/anh$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/anh$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/anh;->apk:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anh;->aAF:Ljava/util/List;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/anh$1;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kingroot/kinguser/anh;-><init>()V

    return-void
.end method

.method public static IW()Lcom/kingroot/kinguser/anh;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/kingroot/kinguser/anh;->apk:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/anh;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/anh;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/anh;->aAE:I

    return v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/anh;I)I
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/kingroot/kinguser/anh;->aAE:I

    return p1
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/anh;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anh;->aD(Ljava/util/List;)V

    return-void
.end method

.method private aD(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 104
    .line 105
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 112
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 111
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 116
    :cond_2
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 123
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 119
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private aE(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 136
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 139
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private aF(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 146
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/anf;->hB(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 145
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 151
    if-gtz v2, :cond_3

    .line 160
    :cond_2
    return-void

    .line 154
    :cond_3
    const/4 v0, 0x4

    .line 155
    sget-object v1, Lcom/kingroot/kinguser/anf;->aAz:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    rem-int v4, v1, v2

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/kingroot/kinguser/anf;->A(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 157
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 158
    goto :goto_1
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/anh;)Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/anh;->aAF:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/anh;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anh;->aE(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/kingroot/kinguser/anh;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anh;->aF(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/kingroot/kinguser/anh$a;)V
    .locals 7

    .prologue
    .line 45
    iget-object v1, p0, Lcom/kingroot/kinguser/anh;->aAF:Ljava/util/List;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anh;->aAF:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    if-eqz p2, :cond_0

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/anh;->aAF:Ljava/util/List;

    invoke-interface {p2, v0}, Lcom/kingroot/kinguser/anh$a;->onFinish(Ljava/util/List;)V

    .line 53
    :cond_0
    monitor-exit v1

    .line 100
    :goto_0
    return-void

    .line 55
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v1

    int-to-long v2, p1

    iget v4, p0, Lcom/kingroot/kinguser/anh;->aAE:I

    const/16 v5, 0x1e

    new-instance v6, Lcom/kingroot/kinguser/distribution/appsmarket/utils/HotWordManager$2;

    invoke-direct {v6, p0, p2}, Lcom/kingroot/kinguser/distribution/appsmarket/utils/HotWordManager$2;-><init>(Lcom/kingroot/kinguser/anh;Lcom/kingroot/kinguser/anh$a;)V

    invoke-interface/range {v1 .. v6}, Lcom/kingroot/kinguser/ams;->a(JIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadDataListener;)V

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
