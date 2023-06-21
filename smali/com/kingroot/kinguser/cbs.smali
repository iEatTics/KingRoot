.class final Lcom/kingroot/kinguser/cbs;
.super Lcom/kingroot/kinguser/ccd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/ccd",
        "<",
        "Lcom/kingroot/kinguser/cbr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kingroot/kinguser/ccd;-><init>()V

    return-void
.end method


# virtual methods
.method protected akE()Lcom/kingroot/kinguser/cbr;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/kingroot/kinguser/cbr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cbr;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cbs;->akE()Lcom/kingroot/kinguser/cbr;

    move-result-object v0

    return-object v0
.end method
