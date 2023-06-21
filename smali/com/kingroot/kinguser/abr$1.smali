.class final Lcom/kingroot/kinguser/abr$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/abr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/abr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/kingroot/kinguser/abr$1;->rq()Lcom/kingroot/kinguser/abr;

    move-result-object v0

    return-object v0
.end method

.method protected rq()Lcom/kingroot/kinguser/abr;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/kingroot/kinguser/abr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/abr;-><init>()V

    return-object v0
.end method
