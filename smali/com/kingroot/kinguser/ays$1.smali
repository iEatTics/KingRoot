.class final Lcom/kingroot/kinguser/ays$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/ays;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected Vg()Lcom/kingroot/kinguser/ays;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/kinguser/ays;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ays;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ays$1;->Vg()Lcom/kingroot/kinguser/ays;

    move-result-object v0

    return-object v0
.end method
