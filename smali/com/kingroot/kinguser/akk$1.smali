.class final Lcom/kingroot/kinguser/akk$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/akk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/akq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected AP()Lcom/kingroot/kinguser/akq;
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/kingroot/kinguser/uv;->kM()Lcom/kingroot/kinguser/uv;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/akk$a;->AQ()Lcom/kingroot/kinguser/akk$a;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/akq;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/uv;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/akq;

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akk$1;->AP()Lcom/kingroot/kinguser/akq;

    move-result-object v0

    return-object v0
.end method
