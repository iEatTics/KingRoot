.class final Lcom/kingroot/kinguser/bwt$1;
.super Lcom/kingroot/kinguser/bzc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bwt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/bzc",
        "<",
        "Lcom/kingroot/kinguser/bwt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzc;-><init>()V

    return-void
.end method


# virtual methods
.method protected aiZ()Lcom/kingroot/kinguser/bwt;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/kingroot/kinguser/bwt;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bwt;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bwt$1;->aiZ()Lcom/kingroot/kinguser/bwt;

    move-result-object v0

    return-object v0
.end method
