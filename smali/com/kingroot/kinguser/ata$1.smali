.class final Lcom/kingroot/kinguser/ata$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/ata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected OQ()Lcom/kingroot/kinguser/ata;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/kingroot/kinguser/ata;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ata;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ata$1;->OQ()Lcom/kingroot/kinguser/ata;

    move-result-object v0

    return-object v0
.end method
