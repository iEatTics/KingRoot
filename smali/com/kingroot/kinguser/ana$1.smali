.class final Lcom/kingroot/kinguser/ana$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ana;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/anc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected IP()Lcom/kingroot/kinguser/anc;
    .locals 3

    .prologue
    .line 16
    invoke-static {}, Lcom/kingroot/kinguser/uv;->kM()Lcom/kingroot/kinguser/uv;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/anb;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/anc;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/uv;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/anc;

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ana$1;->IP()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    return-object v0
.end method
