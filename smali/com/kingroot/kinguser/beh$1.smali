.class final Lcom/kingroot/kinguser/beh$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/beh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/bea;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected Zp()Lcom/kingroot/kinguser/bea;
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/kingroot/kinguser/bei;->Zq()Lcom/kingroot/kinguser/bei;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/kingroot/kinguser/beh$1;->Zp()Lcom/kingroot/kinguser/bea;

    move-result-object v0

    return-object v0
.end method
