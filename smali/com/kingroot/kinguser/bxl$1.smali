.class final Lcom/kingroot/kinguser/bxl$1;
.super Lcom/kingroot/kinguser/bzc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bxl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/bzc",
        "<",
        "Lcom/kingroot/kinguser/bxl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzc;-><init>()V

    return-void
.end method


# virtual methods
.method protected ajE()Lcom/kingroot/kinguser/bxl;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/kinguser/bxl;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bxl;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bxl$1;->ajE()Lcom/kingroot/kinguser/bxl;

    move-result-object v0

    return-object v0
.end method
