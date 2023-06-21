.class final Lcom/kingroot/kinguser/wc$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/wc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/wc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/kingroot/kinguser/wc$1;->nj()Lcom/kingroot/kinguser/wc;

    move-result-object v0

    return-object v0
.end method

.method protected nj()Lcom/kingroot/kinguser/wc;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/kingroot/kinguser/wc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/wc;-><init>(Lcom/kingroot/kinguser/wc$1;)V

    return-object v0
.end method
