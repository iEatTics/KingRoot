.class final Lcom/kingroot/kinguser/bxh$1;
.super Lcom/kingroot/kinguser/bzc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bxh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/bzc",
        "<",
        "Lcom/kingroot/kinguser/bxh;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzc;-><init>()V

    return-void
.end method


# virtual methods
.method protected ajB()Lcom/kingroot/kinguser/bxh;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/kingroot/kinguser/bxh;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bxh;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bxh$1;->ajB()Lcom/kingroot/kinguser/bxh;

    move-result-object v0

    return-object v0
.end method
