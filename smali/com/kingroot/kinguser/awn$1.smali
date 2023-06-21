.class final Lcom/kingroot/kinguser/awn$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/awn;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected Tb()Lcom/kingroot/kinguser/awn;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/kingroot/kinguser/awn;

    invoke-direct {v0}, Lcom/kingroot/kinguser/awn;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awn$1;->Tb()Lcom/kingroot/kinguser/awn;

    move-result-object v0

    return-object v0
.end method
