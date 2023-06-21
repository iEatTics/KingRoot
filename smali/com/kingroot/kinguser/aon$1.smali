.class final Lcom/kingroot/kinguser/aon$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/aon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected Kj()Lcom/kingroot/kinguser/aon;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/kingroot/kinguser/aon;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aon;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aon$1;->Kj()Lcom/kingroot/kinguser/aon;

    move-result-object v0

    return-object v0
.end method
