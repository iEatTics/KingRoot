.class final Lcom/kingroot/kinguser/agm$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/agm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agm$1;->vU()Lcom/kingroot/kinguser/agm;

    move-result-object v0

    return-object v0
.end method

.method protected vU()Lcom/kingroot/kinguser/agm;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/kingroot/kinguser/agm;

    invoke-direct {v0}, Lcom/kingroot/kinguser/agm;-><init>()V

    return-object v0
.end method
