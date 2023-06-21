.class final Lcom/kingroot/kinguser/byd$1;
.super Lcom/kingroot/kinguser/bzc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/byd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/bzc",
        "<",
        "Lcom/kingroot/kinguser/byd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzc;-><init>()V

    return-void
.end method


# virtual methods
.method protected ajT()Lcom/kingroot/kinguser/byd;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/kingroot/kinguser/byd;

    invoke-direct {v0}, Lcom/kingroot/kinguser/byd;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/kingroot/kinguser/byd$1;->ajT()Lcom/kingroot/kinguser/byd;

    move-result-object v0

    return-object v0
.end method
