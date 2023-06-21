.class final Lcom/kingroot/kinguser/byc$1;
.super Lcom/kingroot/kinguser/bzc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/byc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/bzc",
        "<",
        "Lcom/kingroot/kinguser/byc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzc;-><init>()V

    return-void
.end method


# virtual methods
.method protected ajR()Lcom/kingroot/kinguser/byc;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/kingroot/kinguser/byc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/byc;-><init>(Lcom/kingroot/kinguser/byc$1;)V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/kingroot/kinguser/byc$1;->ajR()Lcom/kingroot/kinguser/byc;

    move-result-object v0

    return-object v0
.end method
