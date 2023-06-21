.class final Lcom/kingroot/kinguser/oh;
.super Lcom/kingroot/kinguser/ccd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/ccd",
        "<",
        "Lcom/kingroot/kinguser/og;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kingroot/kinguser/ccd;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/kingroot/kinguser/oh;->ft()Lcom/kingroot/kinguser/og;

    move-result-object v0

    return-object v0
.end method

.method protected ft()Lcom/kingroot/kinguser/og;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/kingroot/kinguser/og;

    invoke-direct {v0}, Lcom/kingroot/kinguser/og;-><init>()V

    return-object v0
.end method
