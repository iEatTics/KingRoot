.class public Lcom/kingroot/kinguser/bjk;
.super Lcom/kingroot/kinguser/bjj;
.source "SourceFile"


# instance fields
.field private bxi:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bjj;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjk;->bxi:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    return-void
.end method


# virtual methods
.method public adZ()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/bjk;->bxi:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public cb(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/yn$b",
            "<",
            "Lcom/kingroot/kinguser/aex$a;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/bjk;->bxi:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    :goto_0
    return-object v0

    .line 36
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 37
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 40
    if-nez v0, :cond_1

    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 46
    :cond_1
    iget-object v2, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    if-nez v2, :cond_2

    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 52
    :cond_2
    iget-object v2, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.tencent.qqpimsecure"

    iget-object v3, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    .line 54
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 59
    :cond_3
    iput-boolean v5, v0, Lcom/kingroot/kinguser/aex$a;->afQ:Z

    goto :goto_1

    .line 63
    :cond_4
    sget-object v0, Lcom/kingroot/kinguser/bjk;->bwR:Lcom/kingroot/kinguser/afb;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 69
    const-wide/32 v2, 0x7f070381

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjk;->V(J)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 70
    new-instance v0, Lcom/kingroot/kinguser/yn$b;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/yn$b;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 72
    new-instance v4, Lcom/kingroot/kinguser/yn$b;

    invoke-direct {v4, v0, v2}, Lcom/kingroot/kinguser/yn$b;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 76
    goto/16 :goto_0
.end method

.method protected oI()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjk;->getContentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0329

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void
.end method
