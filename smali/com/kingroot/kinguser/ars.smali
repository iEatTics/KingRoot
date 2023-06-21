.class public Lcom/kingroot/kinguser/ars;
.super Lcom/kingroot/kinguser/arl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingroot/kinguser/arl;-><init>()V

    return-void
.end method


# virtual methods
.method protected MG()Z
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/kingroot/kinguser/bcr;->XT()Lcom/kingroot/kinguser/bcr;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcr;->XK()Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected MH()Z
    .locals 3

    .prologue
    .line 27
    invoke-static {}, Lcom/kingroot/kinguser/bcr;->XT()Lcom/kingroot/kinguser/bcr;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcr;->XK()Ljava/util/List;

    move-result-object v1

    .line 29
    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bcr;->h(Ljava/util/List;I)Z

    move-result v0

    return v0
.end method
