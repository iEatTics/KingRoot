.class final Lcom/kingroot/kinguser/ajb$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ajb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/ajb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ajb$1;->yW()Lcom/kingroot/kinguser/ajb;

    move-result-object v0

    return-object v0
.end method

.method protected yW()Lcom/kingroot/kinguser/ajb;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/kingroot/kinguser/ajb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ajb;-><init>()V

    return-object v0
.end method
