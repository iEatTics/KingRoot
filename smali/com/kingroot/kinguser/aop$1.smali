.class final Lcom/kingroot/kinguser/aop$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/aop;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected Kr()Lcom/kingroot/kinguser/aop;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/kingroot/kinguser/aop;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aop;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aop$1;->Kr()Lcom/kingroot/kinguser/aop;

    move-result-object v0

    return-object v0
.end method
