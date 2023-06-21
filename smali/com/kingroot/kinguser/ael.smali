.class public abstract Lcom/kingroot/kinguser/ael;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ael$a;
    }
.end annotation


# instance fields
.field private afe:Ljava/lang/String;

.field private aff:Lcom/kingroot/kinguser/vg;

.field private final afg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private afh:Lcom/kingroot/kinguser/bed;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ael;->afg:Ljava/util/HashMap;

    .line 67
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/ael$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/ael$2;-><init>(Lcom/kingroot/kinguser/ael;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ael;->afh:Lcom/kingroot/kinguser/bed;

    .line 33
    iput-object p1, p0, Lcom/kingroot/kinguser/ael;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/ael;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ael;->afe:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/kingroot/kinguser/vg;

    .line 36
    invoke-static {}, Lcom/kingroot/kinguser/wn;->nw()Lcom/kingroot/kinguser/wn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/wn;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ael;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingroot/kinguser/ael;->afe:Ljava/lang/String;

    new-instance v4, Lcom/kingroot/kinguser/ael$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/ael$1;-><init>(Lcom/kingroot/kinguser/ael;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/vg;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/vg$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ael;->aff:Lcom/kingroot/kinguser/vg;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ael;)Lcom/kingroot/kinguser/vg;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/ael;->aff:Lcom/kingroot/kinguser/vg;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;I)V
    .locals 3

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/kingroot/kinguser/ael;->afg:Ljava/util/HashMap;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ael;->afg:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v1

    .line 139
    :cond_0
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract c(Lcom/kingroot/kinguser/vf;)V
.end method

.method public cN(I)V
    .locals 4

    .prologue
    .line 142
    iget-object v2, p0, Lcom/kingroot/kinguser/ael;->afg:Ljava/util/HashMap;

    monitor-enter v2

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ael;->afg:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 146
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;->uA()V

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    return-void
.end method

.method protected abstract d(Lcom/kingroot/kinguser/vf;)V
.end method

.method public uu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/ael;->afe:Ljava/lang/String;

    return-object v0
.end method

.method public uv()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ael;->afh:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 65
    return-void
.end method

.method protected abstract uw()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/network/download/UpdateInfo;",
            ">;"
        }
    .end annotation
.end method
