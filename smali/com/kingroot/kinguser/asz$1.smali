.class final Lcom/kingroot/kinguser/asz$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/asz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/asz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected ON()Lcom/kingroot/kinguser/asz;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/kingroot/kinguser/asz;

    invoke-direct {v0}, Lcom/kingroot/kinguser/asz;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/kingroot/kinguser/asz$1;->ON()Lcom/kingroot/kinguser/asz;

    move-result-object v0

    return-object v0
.end method
