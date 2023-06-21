.class public Lcom/kingroot/kinguser/lw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/it;


# static fields
.field private static vq:Lcom/kingroot/kinguser/lw;


# instance fields
.field private vr:Lcom/kingroot/kinguser/it;

.field private vs:Lcom/kingroot/kinguser/hj;

.field private volatile vt:Z

.field private volatile vu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/kingroot/kinguser/lw;

    invoke-direct {v0}, Lcom/kingroot/kinguser/lw;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/lw;->vq:Lcom/kingroot/kinguser/lw;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/kingroot/kinguser/iu;->cg()Lcom/kingroot/kinguser/iu;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/lw;->vr:Lcom/kingroot/kinguser/it;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/lw;->vs:Lcom/kingroot/kinguser/hj;

    .line 20
    iput-boolean v1, p0, Lcom/kingroot/kinguser/lw;->vt:Z

    .line 21
    iput-boolean v1, p0, Lcom/kingroot/kinguser/lw;->vu:Z

    return-void
.end method

.method public static el()Lcom/kingroot/kinguser/lw;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/kingroot/kinguser/lw;->vq:Lcom/kingroot/kinguser/lw;

    return-object v0
.end method

.method private em()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    iget-object v2, p0, Lcom/kingroot/kinguser/lw;->vs:Lcom/kingroot/kinguser/hj;

    if-nez v2, :cond_0

    .line 98
    :goto_0
    return v1

    .line 92
    :cond_0
    iget-boolean v2, p0, Lcom/kingroot/kinguser/lw;->vt:Z

    if-eqz v2, :cond_1

    .line 93
    iget-boolean v1, p0, Lcom/kingroot/kinguser/lw;->vu:Z

    goto :goto_0

    .line 95
    :cond_1
    iput-boolean v0, p0, Lcom/kingroot/kinguser/lw;->vt:Z

    .line 96
    iget-object v2, p0, Lcom/kingroot/kinguser/lw;->vs:Lcom/kingroot/kinguser/hj;

    const-string v3, "id"

    invoke-interface {v2, v3}, Lcom/kingroot/kinguser/hj;->am(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_2

    const-string v3, "uid=0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/kingroot/kinguser/lw;->vu:Z

    .line 98
    iget-boolean v1, p0, Lcom/kingroot/kinguser/lw;->vu:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 97
    goto :goto_1
.end method


# virtual methods
.method public aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/lw;->vr:Lcom/kingroot/kinguser/it;

    invoke-interface {v0}, Lcom/kingroot/kinguser/it;->cf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/lw;->vr:Lcom/kingroot/kinguser/it;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/it;->aC(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/lw;->vs:Lcom/kingroot/kinguser/hj;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/kingroot/kinguser/lw;->vu:Z

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/lw;->vs:Lcom/kingroot/kinguser/hj;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/hj;->am(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_1
    new-instance v3, Lcom/kingroot/kinguser/ix$b;

    if-nez v0, :cond_1

    const/4 v2, 0x1

    .line 53
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, p1, v2, v0, v1}, Lcom/kingroot/kinguser/ix$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 51
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public b(Lcom/kingroot/kinguser/hj;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kingroot/kinguser/lw;->vs:Lcom/kingroot/kinguser/hj;

    .line 86
    return-void
.end method

.method public cf()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/lw;->h(Z)Z

    move-result v0

    return v0
.end method

.method public h(Z)Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/lw;->vr:Lcom/kingroot/kinguser/it;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/it;->h(Z)Z

    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/kingroot/kinguser/lw;->em()Z

    move-result v0

    .line 38
    :cond_0
    return v0
.end method

.method public l(Ljava/util/List;)Ljava/util/List;
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
            "Lcom/kingroot/kinguser/ix$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/lw;->vr:Lcom/kingroot/kinguser/it;

    invoke-interface {v0}, Lcom/kingroot/kinguser/it;->cf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/lw;->vr:Lcom/kingroot/kinguser/it;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/it;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/lw;->vs:Lcom/kingroot/kinguser/hj;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/kingroot/kinguser/lw;->vu:Z

    if-eqz v0, :cond_2

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    iget-object v3, p0, Lcom/kingroot/kinguser/lw;->vs:Lcom/kingroot/kinguser/hj;

    invoke-interface {v3, v0}, Lcom/kingroot/kinguser/hj;->am(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    new-instance v4, Lcom/kingroot/kinguser/ix$b;

    const-string v5, ""

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 72
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v3, v6}, Lcom/kingroot/kinguser/ix$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 80
    goto :goto_0
.end method
