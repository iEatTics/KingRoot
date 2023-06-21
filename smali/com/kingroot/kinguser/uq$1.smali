.class final Lcom/kingroot/kinguser/uq$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/uq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/uq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/kingroot/kinguser/uq$1;->kJ()Lcom/kingroot/kinguser/uq;

    move-result-object v0

    return-object v0
.end method

.method protected kJ()Lcom/kingroot/kinguser/uq;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/kingroot/kinguser/uq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/uq;-><init>()V

    return-object v0
.end method
