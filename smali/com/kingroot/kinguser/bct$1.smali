.class final Lcom/kingroot/kinguser/bct$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/bct;->wa()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bgq;->abS()Lcom/kingroot/kinguser/bgq;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bgq;->iK(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/bct;->Yj()Ljava/util/Set;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bct;->b(Landroid/content/Context;Ljava/util/Set;)V

    goto :goto_0
.end method
