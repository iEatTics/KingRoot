.class final Lcom/kingroot/kinguser/bya$1;
.super Lcom/kingroot/kinguser/bzc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/bzc",
        "<",
        "Lcom/kingroot/kinguser/bya;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzc;-><init>()V

    return-void
.end method


# virtual methods
.method protected ajP()Lcom/kingroot/kinguser/bya;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/kingroot/kinguser/bya;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bya;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bya$1;->ajP()Lcom/kingroot/kinguser/bya;

    move-result-object v0

    return-object v0
.end method
