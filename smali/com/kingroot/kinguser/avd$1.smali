.class final Lcom/kingroot/kinguser/avd$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/avd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/ave;",
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
.method protected Rr()Lcom/kingroot/kinguser/ave;
    .locals 3

    .prologue
    .line 16
    invoke-static {}, Lcom/kingroot/kinguser/uv;->kM()Lcom/kingroot/kinguser/uv;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/avc;->Ri()Lcom/kingroot/kinguser/avc;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/ave;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/uv;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ave;

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avd$1;->Rr()Lcom/kingroot/kinguser/ave;

    move-result-object v0

    return-object v0
.end method
