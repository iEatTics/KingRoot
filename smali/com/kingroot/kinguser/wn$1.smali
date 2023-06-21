.class final Lcom/kingroot/kinguser/wn$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/wn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/wn;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/kingroot/kinguser/wn$1;->nx()Lcom/kingroot/kinguser/wn;

    move-result-object v0

    return-object v0
.end method

.method protected nx()Lcom/kingroot/kinguser/wn;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/kingroot/kinguser/wn;

    const-string v1, "PublicHandlerThread"

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/wn;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcom/kingroot/kinguser/wn;->start()V

    .line 22
    return-object v0
.end method
