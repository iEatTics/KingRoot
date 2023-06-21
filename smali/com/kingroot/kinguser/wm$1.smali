.class final Lcom/kingroot/kinguser/wm$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/wm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/wm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/kingroot/kinguser/wm$1;->nv()Lcom/kingroot/kinguser/wm;

    move-result-object v0

    return-object v0
.end method

.method protected nv()Lcom/kingroot/kinguser/wm;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-static {}, Lcom/kingroot/kinguser/wn;->nw()Lcom/kingroot/kinguser/wn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/wn;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 21
    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/wm;

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/wm;-><init>(Landroid/os/Looper;Lcom/kingroot/kinguser/wm$1;)V

    move-object v0, v1

    goto :goto_0
.end method
