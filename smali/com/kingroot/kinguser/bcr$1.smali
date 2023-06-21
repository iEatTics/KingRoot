.class final Lcom/kingroot/kinguser/bcr$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bcr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/bcr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected XW()Lcom/kingroot/kinguser/bcr;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/kingroot/kinguser/bcr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bcr;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcr$1;->XW()Lcom/kingroot/kinguser/bcr;

    move-result-object v0

    return-object v0
.end method
